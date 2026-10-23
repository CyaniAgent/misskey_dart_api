// SPDX-License-Identifier: BSD-3-Clause

import 'dart:async';

import 'package:dio/dio.dart';
import 'package:misskey_dart_api/misskey_dart_api.dart';
import 'package:test/test.dart';

import 'support/fixtures.dart';
import 'support/mock_http_adapter.dart';

class _FakeTransport implements StreamingTransport {
  final StreamController<dynamic> controller = StreamController<dynamic>();

  @override
  Stream<dynamic> get stream => controller.stream;

  @override
  void send(String message) {}

  @override
  Future<void> close() async {
    await controller.close();
  }
}

MisskeyClient _client(
  MockHttpAdapter adapter, {
  TokenProvider? tokenProvider,
  MisskeyAuthMode authMode = MisskeyAuthMode.bearer,
}) {
  final dio = Dio()..httpClientAdapter = adapter;
  return MisskeyClient(
    config: MisskeyClientConfig(
      baseUri: Uri.parse('https://example.com'),
      authMode: authMode,
    ),
    tokenProvider: tokenProvider,
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
  group('authentication', () {
    test('async provider supplies a Bearer token', () async {
      final adapter = MockHttpAdapter(
        (_) => jsonBody({'createdNote': noteJson()}),
      );
      final client = _client(adapter, tokenProvider: () async => 'secret');
      addTearDown(client.close);

      await client.notes.create(text: 'hello');

      expect(adapter.requests.single.headers['Authorization'], 'Bearer secret');
    });

    test('body auth injects i', () async {
      final adapter = MockHttpAdapter(
        (_) => jsonBody({'createdNote': noteJson()}),
      );
      final client = _client(
        adapter,
        tokenProvider: () => 'secret',
        authMode: MisskeyAuthMode.body,
      );
      addTearDown(client.close);

      await client.notes.create(text: 'hello');

      final body = adapter.requests.single.data as Map;
      expect(body['i'], 'secret');
      expect(
        adapter.requests.single.headers.containsKey('Authorization'),
        false,
      );
    });

    test('body auth is added to multipart fields', () async {
      final adapter = MockHttpAdapter((_) => jsonBody(_driveFileJson()));
      final client = _client(
        adapter,
        tokenProvider: () => 'secret',
        authMode: MisskeyAuthMode.body,
      );
      addTearDown(client.close);

      await client.drive.filesCreate(file: [1, 2], fileName: 'a.txt');

      final form = adapter.requests.single.data as FormData;
      expect(
        form.fields.any((field) => field.key == 'i' && field.value == 'secret'),
        isTrue,
      );
    });

    test('required endpoints fail before HTTP without a token', () async {
      final adapter = MockHttpAdapter(
        (_) => jsonBody({'createdNote': noteJson()}),
      );
      final client = _client(adapter);
      addTearDown(client.close);

      await expectLater(
        client.notes.create(text: 'hello'),
        throwsA(
          isA<MisskeyAuthenticationException>().having(
            (error) => error.code,
            'code',
            'NO_TOKEN',
          ),
        ),
      );
      expect(adapter.requests, isEmpty);
    });

    test('authMode.none ignores and never calls the provider', () async {
      var calls = 0;
      final adapter = MockHttpAdapter(
        (_) => jsonBody({'createdNote': noteJson()}),
      );
      final client = _client(
        adapter,
        tokenProvider: () {
          calls++;
          return 'secret';
        },
        authMode: MisskeyAuthMode.none,
      );
      addTearDown(client.close);

      await expectLater(
        client.notes.create(text: 'hello'),
        throwsA(isA<MisskeyAuthenticationException>()),
      );
      expect(calls, 0);
      expect(adapter.requests, isEmpty);
    });

    test('public endpoints work without a token', () async {
      final adapter = MockHttpAdapter((_) => jsonBody(metaLiteJson()));
      final client = _client(adapter);
      addTearDown(client.close);

      final meta = await client.meta.get();

      expect(meta.name, 'Misskey');
      expect(
        adapter.requests.single.headers.containsKey('Authorization'),
        false,
      );
    });

    test('public endpoints still attach an available token', () async {
      final adapter = MockHttpAdapter((_) => jsonBody(metaLiteJson()));
      final client = _client(adapter, tokenProvider: () => 'secret');
      addTearDown(client.close);

      await client.meta.get();

      expect(adapter.requests.single.headers['Authorization'], 'Bearer secret');
    });

    test('provider errors surface as authentication errors', () async {
      final cause = StateError('token store unavailable');
      final adapter = MockHttpAdapter(
        (_) => jsonBody({'createdNote': noteJson()}),
      );
      final client = _client(adapter, tokenProvider: () => throw cause);
      addTearDown(client.close);

      await expectLater(
        client.notes.create(text: 'hello'),
        throwsA(
          isA<MisskeyAuthenticationException>()
              .having((error) => error.code, 'code', 'TOKEN_UNAVAILABLE')
              .having((error) => error.cause, 'cause', same(cause)),
        ),
      );
      expect(adapter.requests, isEmpty);
    });

    test('fromHost accepts a static token', () async {
      final adapter = MockHttpAdapter(
        (_) => jsonBody({'createdNote': noteJson()}),
      );
      final client = MisskeyClient.fromHost(
        'example.com',
        accessToken: 'secret',
        dio: Dio()..httpClientAdapter = adapter,
      );
      addTearDown(client.close);

      await client.notes.create(text: 'hello');

      expect(adapter.requests.single.headers['Authorization'], 'Bearer secret');
    });

    test('fromHost rejects both token sources', () {
      expect(
        () => MisskeyClient.fromHost(
          'example.com',
          accessToken: 'secret',
          tokenProvider: () => 'other',
        ),
        throwsArgumentError,
      );
    });

    test('401 responses map to MisskeyAuthenticationException', () async {
      final adapter = MockHttpAdapter(
        (_) => jsonBody({
          'error': {'code': 'AUTHENTICATION_FAILED', 'message': 'denied'},
        }, statusCode: 401),
      );
      final client = _client(adapter, tokenProvider: () => 'bad');
      addTearDown(client.close);

      await expectLater(
        client.notes.create(text: 'hello'),
        throwsA(
          isA<MisskeyAuthenticationException>()
              .having((error) => error.statusCode, 'statusCode', 401)
              .having((error) => error.code, 'code', 'AUTHENTICATION_FAILED'),
        ),
      );
    });

    test('streaming resolves the provider at connect', () async {
      Uri? captured;
      final streaming = MisskeyStreamingClient(
        baseUri: Uri.parse('https://example.com'),
        tokenProvider: () => 'secret',
        connector: (uri) {
          captured = uri;
          return _FakeTransport();
        },
      );
      addTearDown(streaming.close);

      await streaming.connect();

      expect(captured!.queryParameters['i'], 'secret');
    });

    test('streaming authMode.none does not call the provider', () async {
      var calls = 0;
      Uri? captured;
      final streaming = MisskeyStreamingClient(
        baseUri: Uri.parse('https://example.com'),
        tokenProvider: () {
          calls++;
          return 'secret';
        },
        authMode: MisskeyAuthMode.none,
        connector: (uri) {
          captured = uri;
          return _FakeTransport();
        },
      );
      addTearDown(streaming.close);

      await streaming.connect();

      expect(calls, 0);
      expect(captured!.queryParameters.containsKey('i'), false);
    });

    test('streaming provider errors are authentication errors', () async {
      final cause = StateError('unavailable');
      final streaming = MisskeyStreamingClient(
        baseUri: Uri.parse('https://example.com'),
        tokenProvider: () => throw cause,
        connector: (_) => _FakeTransport(),
      );
      addTearDown(streaming.close);

      await expectLater(
        streaming.connect(),
        throwsA(
          isA<MisskeyAuthenticationException>()
              .having((error) => error.code, 'code', 'TOKEN_UNAVAILABLE')
              .having((error) => error.cause, 'cause', same(cause)),
        ),
      );
    });
  });
}
