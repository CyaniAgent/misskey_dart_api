// SPDX-License-Identifier: BSD-3-Clause

/// An error from the streaming transport or protocol.
class MisskeyStreamingException implements Exception {
  /// Creates a streaming error.
  MisskeyStreamingException(this.message, {this.cause});

  /// A human-readable error message.
  final String message;

  /// The underlying error, when available.
  final Object? cause;

  @override
  String toString() => 'MisskeyStreamingException: $message';
}
