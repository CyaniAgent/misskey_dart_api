// SPDX-License-Identifier: BSD-3-Clause

import 'package:dio/dio.dart';
import 'package:misskey_dart_api/misskey_dart_api.dart';
import 'package:misskey_dart_api/raw.dart';
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

Map<String, dynamic> _driveFileJson() {
  return {
    'id': 'file-1',
    'createdAt': '2026-01-01T00:00:00.000Z',
    'name': 'a.txt',
    'type': 'text/plain',
    'md5': 'd41d8cd98f00b204e9800998ecf8427e',
    'size': 2,
    'isSensitive': false,
    'blurhash': null,
    'properties': <String, dynamic>{},
    'url': 'https://example.com/a.txt',
    'thumbnailUrl': null,
    'comment': null,
    'folderId': null,
    'folder': null,
    'userId': null,
    'user': null,
  };
}

void main() {
  group('high-level API', () {
    test('notes.create flattens fields and unwraps createdNote', () async {
      final adapter = MockHttpAdapter(
        (_) => jsonBody({'createdNote': noteJson()}),
      );
      final client = _client(adapter);
      addTearDown(client.close);

      final note = await client.notes.create(text: 'hello');

      expect(note.id, 'note-1');
      expect(adapter.requests.single.data, containsPair('text', 'hello'));
      expect(adapter.requests.single.headers['Authorization'], 'Bearer secret');
    });

    test(
      'users.show variants use concrete request fields and returns',
      () async {
        final adapter = MockHttpAdapter((options) {
          if (options.uri.path == '/api/users/show' &&
              (options.data as Map).containsKey('userIds')) {
            return jsonBody([meDetailedJson()]);
          }
          return jsonBody(meDetailedJson());
        });
        final client = _client(adapter);
        addTearDown(client.close);

        final byId = await client.users.showByUserId(userId: 'user-1');
        expect((byId as MeDetailed).id, 'user-1');
        expect(adapter.requests.last.data, containsPair('userId', 'user-1'));

        final byName = await client.users.showByUsername(username: 'alice');
        expect((byName as MeDetailed).id, 'user-1');
        expect(adapter.requests.last.data, containsPair('username', 'alice'));

        final byIds = await client.users.showByUserIds(userIds: ['a', 'b']);
        expect((byIds.single as MeDetailed).id, 'user-1');
        expect(adapter.requests.last.data, containsPair('userIds', ['a', 'b']));
      },
    );

    test('drive.filesCreate is flat and multipart', () async {
      final adapter = MockHttpAdapter((_) => jsonBody(_driveFileJson()));
      final client = _client(adapter);
      addTearDown(client.close);

      final file = await client.drive.filesCreate(
        file: [1, 2],
        fileName: 'a.txt',
      );

      expect(file.id, 'file-1');
      final form = adapter.requests.single.data as FormData;
      expect(form.files.single.key, 'file');
      expect(form.files.single.value.filename, 'a.txt');
      expect(adapter.requests.single.headers['Authorization'], 'Bearer secret');
    });

    test('raw API remains available through client.raw', () async {
      final adapter = MockHttpAdapter(
        (_) => jsonBody({'createdNote': noteJson()}),
      );
      final client = _client(adapter);
      addTearDown(client.close);

      final response = await client.raw.notes.create(
        NotesCreateRequest(text: 'raw'),
      );

      expect(response.createdNote.id, 'note-1');
      expect(adapter.requests.single.data, containsPair('text', 'raw'));
    });

    test('raw admin group is reachable and authenticated', () async {
      final adapter = MockHttpAdapter((_) => jsonBody(<dynamic>[]));
      final client = _client(adapter);
      addTearDown(client.close);

      final ads = await client.raw.admin.adList(AdminAdListRequest());

      expect(ads, isEmpty);
      expect(adapter.requests.single.uri.path, '/api/admin/ad/list');
      expect(adapter.requests.single.headers['Authorization'], 'Bearer secret');
    });

    test('raw hand-written /meta and /i are available', () async {
      final adapter = MockHttpAdapter((options) {
        if (options.uri.path == '/api/i') return jsonBody(meDetailedJson());
        return jsonBody(metaLiteJson());
      });
      final client = _client(adapter);
      addTearDown(client.close);

      final meta = await client.raw.meta.get();
      final me = await client.raw.account.me();

      expect(meta.name, 'Misskey');
      expect(me.id, 'user-1');
      expect(adapter.requests.map((request) => request.uri.path), [
        '/api/meta',
        '/api/i',
      ]);
      expect(adapter.requests.last.headers['Authorization'], 'Bearer secret');
    });

    test('anyOf list variants generate page methods', () async {
      final adapter = MockHttpAdapter((_) => jsonBody(<dynamic>[]));
      final client = _client(adapter);
      addTearDown(client.close);

      final page = await client.users.followersByUserIdPage(
        limit: 2,
        userId: 'user-1',
      );

      expect(page.items, isEmpty);
      expect(adapter.requests.single.uri.path, '/api/users/followers');
      final body = adapter.requests.single.data as Map;
      expect(body['userId'], 'user-1');
      expect(body['limit'], 2);
    });
  });
}
