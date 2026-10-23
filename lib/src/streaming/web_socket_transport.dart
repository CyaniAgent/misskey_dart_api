// SPDX-License-Identifier: BSD-3-Clause

import 'package:web_socket_channel/web_socket_channel.dart';

import 'streaming_transport.dart';

class WebSocketStreamingTransport implements StreamingTransport {
  WebSocketStreamingTransport(this._channel);

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
