// SPDX-License-Identifier: BSD-3-Clause

import 'package:dio/dio.dart';
import 'package:misskey_dart_api/misskey_dart_api.dart';
import 'package:test/test.dart';

void main() {
  group('MisskeyClient', () {
    test('normalizes a bare host to HTTPS', () {
      final client = MisskeyClient.fromHost('misskey.io');
      addTearDown(client.close);

      expect(client.baseUri, Uri.parse('https://misskey.io'));
    });

    test('removes the path from the origin', () {
      final client = MisskeyClient(
        baseUri: Uri.parse('https://example.com/foo'),
      );
      addTearDown(client.close);

      expect(client.baseUri, Uri.parse('https://example.com'));
    });

    test('rejects query and fragment in the origin', () {
      expect(
        () =>
            MisskeyClient(baseUri: Uri.parse('https://example.com/?bar=1#baz')),
        throwsArgumentError,
      );
    });

    test('rejects non-HTTP schemes', () {
      expect(
        () => MisskeyClient(baseUri: Uri.parse('ftp://example.com')),
        throwsArgumentError,
      );
    });

    test('rejects plain HTTP by default', () {
      expect(
        () => MisskeyClient(baseUri: Uri.parse('http://example.com')),
        throwsArgumentError,
      );
    });

    test('allows plain HTTP only when explicitly enabled', () {
      final client = MisskeyClient(
        baseUri: Uri.parse('http://localhost:3000'),
        allowInsecureHttp: true,
      );
      addTearDown(client.close);

      expect(client.baseUri, Uri.parse('http://localhost:3000'));
    });

    test('sends the token in the request body', () async {
      late RequestOptions captured;
      final dio = Dio();
      dio.interceptors.add(
        InterceptorsWrapper(
          onRequest: (options, handler) {
            captured = options;
            handler.resolve(
              Response<Map<String, dynamic>>(
                requestOptions: options,
                data: {'name': 'Misskey'},
                statusCode: 200,
              ),
            );
          },
        ),
      );

      final client = MisskeyClient(
        baseUri: Uri.parse('https://example.com'),
        accessToken: 'secret',
        dio: dio,
      );
      addTearDown(client.close);

      final meta = await client.meta();

      expect(meta, {'name': 'Misskey'});
      expect(captured.uri, Uri.parse('https://example.com/api/meta'));
      expect(captured.data, {'i': 'secret'});
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
