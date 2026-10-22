// SPDX-License-Identifier: BSD-3-Clause

import 'package:dio/dio.dart';

import 'exceptions.dart';

/// A client for a single Misskey instance.
class MisskeyClient {
  /// Creates a client for [baseUri].
  ///
  /// [baseUri] must be an HTTP or HTTPS origin, for example
  /// `https://misskey.io`.
  MisskeyClient({
    required Uri baseUri,
    String? accessToken,
    Dio? dio,
    bool allowInsecureHttp = false,
  }) : _baseUri = _normalizeBaseUri(baseUri, allowInsecureHttp),
       // Keep the public parameter name while storing a private field.
       // ignore: prefer_initializing_formals
       _accessToken = accessToken,
       _dio = dio ?? Dio();

  /// Creates a client from a host or origin.
  ///
  /// A bare host such as `misskey.io` is treated as HTTPS. Set
  /// [allowInsecureHttp] only for local development.
  factory MisskeyClient.fromHost(
    String host, {
    String? accessToken,
    Dio? dio,
    bool allowInsecureHttp = false,
  }) {
    return MisskeyClient(
      baseUri: _parseHost(host, allowInsecureHttp),
      accessToken: accessToken,
      dio: dio,
      allowInsecureHttp: allowInsecureHttp,
    );
  }

  final Uri _baseUri;
  final String? _accessToken;
  final Dio _dio;

  /// The instance origin, without a trailing path.
  Uri get baseUri => _baseUri;

  /// Whether this client has a non-empty access token.
  bool get hasAccessToken => _accessToken?.isNotEmpty ?? false;

  /// Fetches instance metadata from `/api/meta`.
  Future<Map<String, dynamic>> meta() => _post('/api/meta');

  /// Fetches the authenticated account from `/api/i`.
  ///
  /// Requires an access token.
  Future<Map<String, dynamic>> me() => _post('/api/i');

  Future<Map<String, dynamic>> _post(
    String path, [
    Map<String, dynamic>? body,
  ]) async {
    final uri = _baseUri.resolve(path);
    try {
      final response = await _dio.postUri<dynamic>(
        uri,
        data: <String, dynamic>{
          if (hasAccessToken) 'i': _accessToken,
          ...?body,
        },
      );
      final data = response.data;
      if (data is Map<String, dynamic>) {
        return data;
      }
      if (data is Map) {
        return Map<String, dynamic>.from(data);
      }
      throw MisskeyApiException(
        'Expected a JSON object from $path.',
        uri: uri,
        statusCode: response.statusCode,
      );
    } on DioException catch (error) {
      throw MisskeyApiException(
        error.message ?? 'Misskey request failed.',
        uri: error.requestOptions.uri,
        statusCode: error.response?.statusCode,
        cause: error,
      );
    }
  }

  /// Closes the underlying HTTP client.
  void close({bool force = false}) => _dio.close(force: force);

  static Uri _parseHost(String host, bool allowInsecureHttp) {
    final trimmed = host.trim();
    if (trimmed.isEmpty) {
      throw ArgumentError.value(host, 'host', 'Must not be empty.');
    }
    final uri = trimmed.contains('://')
        ? Uri.parse(trimmed)
        : Uri.parse('https://$trimmed');
    return _normalizeBaseUri(uri, allowInsecureHttp);
  }

  static Uri _normalizeBaseUri(Uri uri, bool allowInsecureHttp) {
    final isHttps = uri.scheme == 'https';
    final isAllowedHttp = allowInsecureHttp && uri.scheme == 'http';
    if (!uri.hasScheme || (!isHttps && !isAllowedHttp)) {
      throw ArgumentError.value(
        uri,
        'baseUri',
        'Must use HTTPS. Set allowInsecureHttp to true only for local '
            'development.',
      );
    }
    if (uri.host.isEmpty) {
      throw ArgumentError.value(uri, 'baseUri', 'Must include a host.');
    }
    if (uri.hasQuery || uri.hasFragment) {
      throw ArgumentError.value(
        uri,
        'baseUri',
        'Must not include a query or fragment.',
      );
    }
    return uri.replace(path: '', query: null, fragment: null);
  }
}
