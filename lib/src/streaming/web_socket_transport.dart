// SPDX-License-Identifier: BSD-3-Clause

import 'package:web_socket_channel/web_socket_channel.dart';

import 'streaming_transport.dart';

/// A [StreamingTransport] backed by `package:web_socket_channel`.
class WebSocketStreamingTransport implements StreamingTransport {
  /// Wraps an existing WebSocket channel.
  WebSocketStreamingTransport(this._channel);

  /// Opens a WebSocket connection to [uri].
  factory WebSocketStreamingTransport.connect(Uri uri) {
    return WebSocketStreamingTransport(WebSocketChannel.connect(uri));
  }

  final WebSocketChannel _channel;

  @override
  Stream<dynamic> get stream => _channel.stream;

  @override
  void send(String message) => _channel.sink.add(message);

  @override
  Future<void> close() => _channel.sink.close();
}
