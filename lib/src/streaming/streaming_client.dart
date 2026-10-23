// SPDX-License-Identifier: BSD-3-Clause

import 'dart:async';
import 'dart:convert';

import '../client/token_provider.dart';
import '../config.dart';
import '../exceptions.dart';
import '../models/json.dart';
import 'channels.dart';
import 'streaming_exceptions.dart';
import 'streaming_transport.dart';
import 'web_socket_transport.dart';

class MisskeyStreamingClient {
  MisskeyStreamingClient({
    required this.baseUri,
    this.tokenProvider,
    this.authMode = MisskeyAuthMode.bearer,
    this.allowInsecureHttp = false,
    this.connector,
  }) : _events = StreamController<MisskeyStreamEvent>.broadcast();

  final Uri baseUri;
  final TokenProvider? tokenProvider;
  final MisskeyAuthMode authMode;
  final bool allowInsecureHttp;
  final StreamingConnector? connector;

  final StreamController<MisskeyStreamEvent> _events;
  final Map<String, _Subscription> _subscriptions = {};
  StreamingTransport? _transport;
  StreamSubscription<dynamic>? _subscription;
  Future<void>? _connecting;
  var _counter = 0;
  var _connected = false;
  var _closed = false;

  Stream<MisskeyStreamEvent> get events => _events.stream;

  Future<void> connect() {
    if (_closed) {
      throw StateError('The streaming client is closed.');
    }
    if (_connected) return Future<void>.value();
    return _connecting ??= _connect();
  }

  Future<void> _connect() async {
    try {
      final transport = (connector ?? WebSocketStreamingTransport.connect)(
        await _streamingUri(),
      );
      _transport = transport;
      _subscription = transport.stream.listen(
        _onData,
        onError: _onError,
        onDone: _onDone,
      );
      _connected = true;
    } finally {
      _connecting = null;
    }
  }

  Future<Stream<StreamingChannelEvent<T>>> subscribe<T>(
    StreamingChannel<T> channel,
  ) async {
    await connect();
    final id = '${DateTime.now().microsecondsSinceEpoch}-${_counter++}';
    final controller = StreamController<StreamingChannelEvent<T>>.broadcast();
    void cancel() {
      _sendDisconnect(id);
      _subscriptions.remove(id);
    }

    controller.onCancel = cancel;
    final subscription = _Subscription(
      id: id,
      channel: channel,
      onEvent: (type, body) {
        controller.add(
          StreamingChannelEvent<T>(
            subscriptionId: id,
            channel: channel.name,
            type: type,
            body: channel.parse(type, body),
          ),
        );
      },
      onCancel: cancel,
      close: controller.close,
    );
    _subscriptions[id] = subscription;
    _send(<String, dynamic>{
      'type': 'connect',
      'body': <String, dynamic>{
        'channel': channel.name,
        if (channel.params != null) 'params': channel.params,
        'id': id,
      },
    });
    return controller.stream;
  }

  Future<void> subscribeNote(String noteId) async {
    await connect();
    _send(<String, dynamic>{
      'type': 'subNote',
      'body': <String, dynamic>{'id': noteId},
    });
  }

  Future<void> unsubscribeNote(String noteId) async {
    _send(<String, dynamic>{
      'type': 'unsubNote',
      'body': <String, dynamic>{'id': noteId},
    });
  }

  Future<void> close() async {
    if (_closed) return;
    for (final subscription in _subscriptions.values.toList()) {
      _sendDisconnect(subscription.id);
      await subscription.close();
    }
    _subscriptions.clear();
    _closed = true;
    await _subscription?.cancel();
    await _transport?.close();
    await _events.close();
  }

  void _send(Map<String, dynamic> frame) {
    _transport?.send(jsonEncode(frame));
  }

  void _sendDisconnect(String id) {
    _send(<String, dynamic>{
      'type': 'disconnect',
      'body': <String, dynamic>{'id': id},
    });
  }

  Future<Uri> _streamingUri() async {
    if (baseUri.scheme == 'http' && !allowInsecureHttp) {
      throw ArgumentError.value(
        baseUri,
        'baseUri',
        'Plain HTTP streaming requires allowInsecureHttp.',
      );
    }
    final query = <String, String>{};
    if (authMode != MisskeyAuthMode.none) {
      final provider = tokenProvider;
      String? token;
      if (provider != null) {
        try {
          token = await provider();
        } catch (error) {
          throw MisskeyAuthenticationException(
            'Failed to obtain an access token.',
            code: 'TOKEN_UNAVAILABLE',
            cause: error,
          );
        }
      }
      if (token != null && token.isNotEmpty) {
        query['i'] = token;
      }
    }
    return baseUri.replace(
      scheme: baseUri.scheme == 'https' ? 'wss' : 'ws',
      path: '/streaming',
      queryParameters: query.isEmpty ? null : query,
    );
  }

  void _onData(dynamic data) {
    if (data is! String) {
      _emitError('Expected a text WebSocket frame.');
      return;
    }
    final Object? decoded;
    try {
      decoded = jsonDecode(data);
    } catch (error) {
      _emitError('Malformed streaming JSON.', error);
      return;
    }
    if (decoded is! Map) {
      _emitError('Expected a streaming JSON object.');
      return;
    }
    final frame = decoded.cast<String, dynamic>();
    final type = frame['type'];
    final body = frame['body'];
    if (type == 'connected' && body is Map) {
      final id = body['id']?.toString();
      final subscription = id == null ? null : _subscriptions[id];
      if (subscription != null) {
        subscription.connected = true;
        _events.add(MisskeyConnected(subscriptionId: subscription.id));
      }
      return;
    }
    if (type == 'disconnected' && body is Map) {
      final id = body['id']?.toString();
      final subscription = id == null ? null : _subscriptions.remove(id);
      if (subscription != null) {
        unawaited(subscription.close());
        _events.add(MisskeyDisconnected(subscriptionId: subscription.id));
      }
      return;
    }
    if (type == 'channel' && body is Map) {
      final id = body['id']?.toString();
      final subscription = id == null ? null : _subscriptions[id];
      final eventType = body['type']?.toString() ?? '';
      final eventBody = body['body'];
      if (subscription == null || eventBody is! Map) return;
      final payload = eventBody.cast<String, dynamic>();
      _event(subscription, eventType, payload);
      return;
    }
    if (type == 'noteUpdated' && body is Map) {
      final noteId = body['id']?.toString();
      final eventType = body['type']?.toString() ?? '';
      final eventBody = body['body'];
      if (noteId != null && eventBody is Map) {
        _events.add(
          MisskeyNoteUpdated(
            noteId: noteId,
            type: eventType,
            body: eventBody.cast<String, dynamic>(),
          ),
        );
      }
      return;
    }
    if (type == 'error') {
      final message = body is Map ? body['message']?.toString() : null;
      _emitError(message ?? 'Streaming server error.');
      unawaited(close());
    }
  }

  void _event(_Subscription subscription, String type, JsonMap body) {
    if (!subscription.connected) return;
    subscription.onEvent(type, body);
    _events.add(
      MisskeyChannelEvent(
        subscriptionId: subscription.id,
        type: type,
        body: body,
      ),
    );
  }

  void _emitError(String message, [Object? cause]) {
    _events.add(
      MisskeyStreamError(MisskeyStreamingException(message, cause: cause)),
    );
  }

  void _onError(Object error, StackTrace stackTrace) {
    _connected = false;
    _emitError('Streaming transport error.', error);
  }

  void _onDone() {
    _connected = false;
  }
}

class _Subscription {
  _Subscription({
    required this.id,
    required this.channel,
    required this.onEvent,
    required this.onCancel,
    required this.close,
  });

  final String id;
  final StreamingChannel<dynamic> channel;
  final void Function(String type, JsonMap body) onEvent;
  final void Function() onCancel;
  final Future<void> Function() close;
  var connected = false;
}
