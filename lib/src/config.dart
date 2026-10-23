// SPDX-License-Identifier: BSD-3-Clause

/// How an access token is sent with a request.
enum MisskeyAuthMode {
  /// Send `Authorization: Bearer <token>`.
  bearer,

  /// Send the token in the request body as `i`.
  body,

  /// Send no access token.
  none,
}

/// The HTTP method used for an API request.
enum MisskeyHttpMethod {
  /// Send the request as HTTP POST.
  post,

  /// Send the request as HTTP GET.
  get,
}

/// Configuration for a [MisskeyClient].
class MisskeyClientConfig {
  /// Creates a client configuration.
  const MisskeyClientConfig({
    required this.baseUri,
    this.userAgent,
    this.authMode = MisskeyAuthMode.bearer,
    this.connectTimeout = const Duration(seconds: 30),
    this.receiveTimeout = const Duration(seconds: 30),
    this.sendTimeout = const Duration(seconds: 30),
    this.allowInsecureHttp = false,
  });

  /// The instance origin.
  final Uri baseUri;

  /// The `User-Agent` header; defaults to [misskeyDartApiUserAgent].
  final String? userAgent;

  /// How the access token is sent.
  final MisskeyAuthMode authMode;

  /// Timeout for establishing a connection.
  final Duration connectTimeout;

  /// Timeout for receiving a response.
  final Duration receiveTimeout;

  /// Timeout for sending a request.
  final Duration sendTimeout;

  /// Whether plain HTTP is allowed for local development.
  final bool allowInsecureHttp;
}

/// The package version used in the default user agent.
const String misskeyDartApiVersion = '0.1.0';

/// The default `User-Agent` header.
const String misskeyDartApiUserAgent =
    'misskey_dart_api/0.1.0 (+https://github.com/CyaniAgent/misskey_dart_api)';
