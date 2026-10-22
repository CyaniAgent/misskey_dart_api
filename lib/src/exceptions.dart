// SPDX-License-Identifier: BSD-3-Clause

/// An error returned by a Misskey request.
class MisskeyApiException implements Exception {
  /// Creates an exception with a human-readable [message].
  MisskeyApiException(this.message, {this.uri, this.statusCode, this.cause});

  /// A human-readable error message.
  final String message;

  /// The request URI, when available.
  final Uri? uri;

  /// The HTTP status code, when available.
  final int? statusCode;

  /// The underlying error, when available.
  ///
  /// This value is not included in [toString] to avoid leaking request data.
  final Object? cause;

  @override
  String toString() {
    final status = statusCode == null ? '' : ' ($statusCode)';
    final location = uri == null ? '' : ' at $uri';
    return 'MisskeyApiException$status: $message$location';
  }
}
