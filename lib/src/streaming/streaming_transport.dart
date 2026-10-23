// SPDX-License-Identifier: BSD-3-Clause

/// Low-level transport used by the Misskey streaming client.
abstract interface class StreamingTransport {
  Stream<dynamic> get stream;

  void send(String message);

  Future<void> close();
}

/// Creates a transport for [uri].
typedef StreamingConnector = StreamingTransport Function(Uri uri);
