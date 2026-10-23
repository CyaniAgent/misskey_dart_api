// SPDX-License-Identifier: BSD-3-Clause

class MisskeyStreamingException implements Exception {
  MisskeyStreamingException(this.message, {this.cause});

  final String message;
  final Object? cause;

  @override
  String toString() => 'MisskeyStreamingException: $message';
}
