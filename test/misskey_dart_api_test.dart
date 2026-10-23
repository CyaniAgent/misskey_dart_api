// SPDX-License-Identifier: BSD-3-Clause

import 'package:dio/dio.dart';
import 'package:misskey_dart_api/misskey_dart_api.dart';
import 'package:test/test.dart';

import 'support/fixtures.dart';
import 'support/mock_http_adapter.dart';

MisskeyClient _client(
  MockHttpAdapter adapter, {
  String? accessToken = 'secret',
  MisskeyAuthMode authMode = MisskeyAuthMode.bearer,
  String? userAgent,
}) {
  final dio = Dio()..httpClientAdapter = adapter;
  return MisskeyClient(
    config: MisskeyClientConfig(
      baseUri: Uri.parse('https://example.com'),
      accessToken: accessToken,
      authMode: authMode,
      userAgent: userAgent,
    ),
    dio: dio,
  );
}

void main() {
  group('MisskeyClient', () {
    test('normalizes a bare host to HTTPS', () {
      final client = MisskeyClient.fromHost('misskey.io');
      addTearDown(client.close);

      expect(client.baseUri, Uri.parse('https://misskey.io'));
    });

    test('removes the path from the origin', () {
      final client = MisskeyClient(
        config: MisskeyClientConfig(
          baseUri: Uri.parse('https://example.com/foo'),
        ),
      );
      addTearDown(client.close);

      expect(client.baseUri, Uri.parse('https://example.com'));
    });

    test('rejects query and fragment in the origin', () {
      expect(
        () => MisskeyClient(
          config: MisskeyClientConfig(
            baseUri: Uri.parse('https://example.com/?bar=1#baz'),
          ),
        ),
        throwsArgumentError,
      );
    });

    test('rejects non-HTTP schemes', () {
      expect(
        () => MisskeyClient(
          config: MisskeyClientConfig(baseUri: Uri.parse('ftp://example.com')),
        ),
        throwsArgumentError,
      );
    });

    test('rejects plain HTTP by default', () {
      expect(
        () => MisskeyClient(
          config: MisskeyClientConfig(baseUri: Uri.parse('http://example.com')),
        ),
        throwsArgumentError,
      );
    });

    test('allows plain HTTP only when explicitly enabled', () {
      final client = MisskeyClient(
        config: MisskeyClientConfig(
          baseUri: Uri.parse('http://localhost:3000'),
          allowInsecureHttp: true,
        ),
      );
      addTearDown(client.close);

      expect(client.baseUri, Uri.parse('http://localhost:3000'));
    });

    test('uses Bearer auth by default', () async {
      final adapter = MockHttpAdapter((_) => jsonBody(metaLiteJson()));
      final client = _client(adapter);
      addTearDown(client.close);

      final meta = await client.meta.get();

      expect(meta.name, 'Misskey');
      final request = adapter.requests.single;
      expect(request.uri, Uri.parse('https://example.com/api/meta'));
      expect(request.headers['Authorization'], 'Bearer secret');
      expect(request.data, {'detail': false});
    });

    test('uses body auth when configured', () async {
      final adapter = MockHttpAdapter((_) => jsonBody(metaLiteJson()));
      final client = _client(adapter, authMode: MisskeyAuthMode.body);
      addTearDown(client.close);

      await client.meta.get();

      final request = adapter.requests.single;
      expect(request.headers.containsKey('Authorization'), isFalse);
      expect(request.data, {'detail': false, 'i': 'secret'});
    });

    test('uses no auth when configured', () async {
      final adapter = MockHttpAdapter((_) => jsonBody(metaLiteJson()));
      final client = _client(adapter, authMode: MisskeyAuthMode.none);
      addTearDown(client.close);

      await client.meta.get();

      final request = adapter.requests.single;
      expect(request.headers.containsKey('Authorization'), isFalse);
      expect((request.data as Map).containsKey('i'), isFalse);
    });

    test('sends the default User-Agent', () async {
      final adapter = MockHttpAdapter((_) => jsonBody(metaLiteJson()));
      final client = _client(adapter);
      addTearDown(client.close);

      await client.meta.get();

      expect(
        adapter.requests.single.headers['User-Agent'],
        misskeyDartApiUserAgent,
      );
    });

    test('uses a configured User-Agent', () async {
      final adapter = MockHttpAdapter((_) => jsonBody(metaLiteJson()));
      final client = _client(adapter, userAgent: 'custom-agent/1.0');
      addTearDown(client.close);

      await client.meta.get();

      expect(adapter.requests.single.headers['User-Agent'], 'custom-agent/1.0');
    });

    test('parses list and void responses', () async {
      final adapter = MockHttpAdapter((options) {
        if (options.uri.path == '/api/list') {
          return jsonBody([
            {'id': '1'},
            {'id': '2'},
          ]);
        }
        return jsonBody(<String, dynamic>{});
      });
      final client = _client(adapter);
      addTearDown(client.close);

      final ids = await client.postList<String>(
        'list',
        itemParser: (json) => json['id'] as String,
      );
      await client.postVoid('void');

      expect(ids, ['1', '2']);
      expect(adapter.requests, hasLength(2));
    });

    test('parses MetaLite through meta.get', () async {
      final adapter = MockHttpAdapter((_) => jsonBody(metaLiteJson()));
      final client = _client(adapter);
      addTearDown(client.close);

      final meta = await client.meta.get();

      expect(meta.name, 'Misskey');
      expect(meta.ads.single.id, 'ad-1');
      expect(
        meta.clientOptions.entrancePageStyle,
        MetaEntrancePageStyle.classic,
      );
      expect(meta.policies.chatAvailability, ChatAvailability.available);
      expect(adapter.requests.single.data, {'detail': false});
    });

    test('parses MetaDetailed through meta.detailed', () async {
      final adapter = MockHttpAdapter((_) => jsonBody(metaDetailedJson()));
      final client = _client(adapter);
      addTearDown(client.close);

      final meta = await client.meta.detailed();

      expect(meta.features?.miauth, isTrue);
      expect(adapter.requests.single.data, {'detail': true});
    });

    test('parses MeDetailed through account.me', () async {
      final adapter = MockHttpAdapter((_) => jsonBody(meDetailedJson()));
      final client = _client(adapter);
      addTearDown(client.close);

      final me = await client.account.me();

      expect(me.username, 'alice');
      expect(me.roles.single.name, 'Admin');
      expect(me.unreadAnnouncements.single.icon, AnnouncementIcon.info);
      expect(me.achievements.single.name, AchievementName.notes1);
      expect(
        me.securityKeysList!.single.lastUsed,
        DateTime.parse('2026-01-01T00:00:00.000Z'),
      );
      expect(
        me.avatarDecorations.single.url,
        'https://example.com/decoration.png',
      );
      expect(me.fields.single.name, 'Website');
      expect(me.instance?.softwareName, 'misskey');
      expect(me.badgeRoles?.single.name, 'Admin');
      expect(adapter.requests.single.uri.path, '/api/i');
    });

    test('maps a Misskey error envelope', () async {
      final adapter = MockHttpAdapter(
        (_) => jsonBody({
          'error': {
            'code': 'INVALID_PARAM',
            'id': 'uuid-1',
            'message': 'bad request',
          },
        }, statusCode: 400),
      );
      final client = _client(adapter);
      addTearDown(client.close);

      try {
        await client.meta.get();
        fail('Expected a MisskeyApiException.');
      } on MisskeyApiException catch (error) {
        expect(error.code, 'INVALID_PARAM');
        expect(error.id, 'uuid-1');
        expect(error.statusCode, 400);
        expect(error.message, 'bad request');
        expect(error.uri, Uri.parse('https://example.com/api/meta'));
        expect(error.raw, isA<Map>());
        expect(error.toString(), isNot(contains('secret')));
      }
    });

    test('wraps model parse failures', () async {
      final adapter = MockHttpAdapter((_) => jsonBody(<String, dynamic>{}));
      final client = _client(adapter);
      addTearDown(client.close);

      try {
        await client.meta.get();
        fail('Expected a MisskeyApiException.');
      } on MisskeyApiException catch (error) {
        expect(error.statusCode, 200);
        expect(error.cause, isNotNull);
        expect(error.uri, Uri.parse('https://example.com/api/meta'));
        expect(error.toString(), isNot(contains('secret')));
      }
    });

    test('does not expose the token in exception text', () {
      final error = MisskeyApiException(
        'Request failed',
        uri: Uri.parse('https://example.com/api/i'),
        statusCode: 401,
        cause: StateError('secret'),
      );

      expect(error.toString(), isNot(contains('secret')));
    });
  });
}
