// SPDX-License-Identifier: BSD-3-Clause

/// Low-level transport used by the Misskey streaming client.
abstract interface class StreamingTransport {
  /// Incoming WebSocket frames.
  Stream<dynamic> get stream;

  /// Sends a text [message].
  void send(String message);

  /// Closes the transport.
  Future<void> close();
}

/// Creates a transport for [uri].
typedef StreamingConnector = StreamingTransport Function(Uri uri);
