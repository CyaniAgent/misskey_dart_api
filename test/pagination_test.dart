// SPDX-License-Identifier: BSD-3-Clause

import 'package:dio/dio.dart';
import 'package:misskey_dart_api/misskey_dart_api.dart';
import 'package:test/test.dart';

import 'support/fixtures.dart';
import 'support/mock_http_adapter.dart';

MisskeyClient _client(MockHttpAdapter adapter) {
  final dio = Dio()..httpClientAdapter = adapter;
  return MisskeyClient(
    config: MisskeyClientConfig(baseUri: Uri.parse('https://example.com')),
    tokenProvider: () => 'secret',
    dio: dio,
  );
}

Map<String, dynamic> _note(String id) {
  return noteJson()..['id'] = id;
}

void main() {
  group('cursor pagination', () {
    test('fetches two pages and advances with untilId', () async {
      final adapter = MockHttpAdapter((options) {
        final body = options.data as Map;
        if (body['untilId'] == null) {
          return jsonBody([_note('note-1'), _note('note-2')]);
        }
        return jsonBody([_note('note-3')]);
      });
      final client = _client(adapter);
      addTearDown(client.close);

      final page = await client.notes.timelinePage(limit: 2);

      expect(page.items.map((item) => item.id), ['note-1', 'note-2']);
      expect(page.hasMore, isTrue);
      expect(page.nextCursor, 'note-2');
      expect((adapter.requests.first.data as Map)['limit'], 2);

      final next = await page.next();
      expect(next, isNotNull);
      expect(next!.items.single.id, 'note-3');
      expect(next.hasMore, isFalse);
      expect((adapter.requests.last.data as Map)['untilId'], 'note-2');
      expect(await next.next(), isNull);
    });

    test('returns null when the next page is empty', () async {
      final adapter = MockHttpAdapter((options) {
        final body = options.data as Map;
        if (body['untilId'] == null) {
          return jsonBody([_note('note-1'), _note('note-2')]);
        }
        return jsonBody(<dynamic>[]);
      });
      final client = _client(adapter);
      addTearDown(client.close);

      final page = await client.notes.timelinePage(limit: 2);

      expect(page.hasMore, isTrue);
      expect(await page.next(), isNull);
    });

    test('streams and stops when a page has no new ids', () async {
      final adapter = MockHttpAdapter((options) {
        final body = options.data as Map;
        if (body['untilId'] == null) {
          return jsonBody([_note('note-1'), _note('note-2')]);
        }
        return jsonBody([_note('note-2'), _note('note-1')]);
      });
      final client = _client(adapter);
      addTearDown(client.close);

      final page = await client.notes.timelinePage(limit: 2);
      final ids = await page.stream().map((note) => note.id).toList();

      expect(ids, ['note-1', 'note-2']);
    });

    test('stream yields unique ids across pages', () async {
      final adapter = MockHttpAdapter((options) {
        final body = options.data as Map;
        if (body['untilId'] == null) {
          return jsonBody([_note('note-1'), _note('note-2')]);
        }
        return jsonBody([_note('note-2'), _note('note-3')]);
      });
      final client = _client(adapter);
      addTearDown(client.close);

      final page = await client.notes.timelinePage(limit: 2);
      final ids = await page.stream().map((note) => note.id).toList();

      expect(ids, ['note-1', 'note-2', 'note-3']);
    });

    test('rejects invalid page sizes before any request', () async {
      final adapter = MockHttpAdapter((_) => jsonBody(<dynamic>[]));
      final client = _client(adapter);
      addTearDown(client.close);

      await expectLater(
        client.notes.timelinePage(limit: 0),
        throwsArgumentError,
      );
      await expectLater(
        client.notes.timelinePage(limit: 101),
        throwsArgumentError,
      );
      expect(adapter.requests, isEmpty);
    });

    test('notifications default markAsRead to false', () async {
      final adapter = MockHttpAdapter((_) => jsonBody(<dynamic>[]));
      final client = _client(adapter);
      addTearDown(client.close);

      await client.account.notificationsPage();

      final body = adapter.requests.single.data as Map;
      expect(body['markAsRead'], false);
      expect(body['limit'], 20);
    });

    test('non-notification pages preserve request defaults', () async {
      final adapter = MockHttpAdapter((_) => jsonBody(<dynamic>[]));
      final client = _client(adapter);
      addTearDown(client.close);

      await client.notes.timelinePage();

      final body = adapter.requests.single.data as Map;
      expect(body['allowPartial'], false);
      expect(body['includeMyRenotes'], true);
      expect(body['withRenotes'], true);
    });
  });
}
