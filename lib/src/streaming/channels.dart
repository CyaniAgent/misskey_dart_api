// SPDX-License-Identifier: BSD-3-Clause

import '../models/generated/generated.dart';
import '../models/json.dart';
import 'streaming_exceptions.dart';

/// A connection or subscription event emitted by the streaming client.
sealed class MisskeyStreamEvent {
  const MisskeyStreamEvent();
}

/// A channel subscription was acknowledged by the server.
final class MisskeyConnected extends MisskeyStreamEvent {
  /// Creates a connected event.
  const MisskeyConnected({required this.subscriptionId});

  /// The id returned by the server for this subscription.
  final String subscriptionId;
}

/// A channel subscription was closed by the server.
final class MisskeyDisconnected extends MisskeyStreamEvent {
  /// Creates a disconnected event.
  const MisskeyDisconnected({required this.subscriptionId});

  /// The id returned by the server for this subscription.
  final String subscriptionId;
}

/// A parsed channel event.
final class MisskeyChannelEvent extends MisskeyStreamEvent {
  /// Creates a channel event.
  const MisskeyChannelEvent({
    required this.subscriptionId,
    required this.type,
    required this.body,
  });

  /// The id returned by the server for this subscription.
  final String subscriptionId;

  /// The event type reported by the channel.
  final String type;

  /// The raw event body.
  final JsonMap body;
}

/// A note update received through `subNote`.
final class MisskeyNoteUpdated extends MisskeyStreamEvent {
  /// Creates a note update event.
  const MisskeyNoteUpdated({
    required this.noteId,
    required this.type,
    required this.body,
  });

  /// The note id being updated.
  final String noteId;

  /// The update type, such as `reacted`.
  final String type;

  /// The raw update body.
  final JsonMap body;
}

/// A streaming transport or server error.
final class MisskeyStreamError extends MisskeyStreamEvent {
  /// Creates a stream error event.
  const MisskeyStreamError(this.error);

  /// The structured streaming error.
  final MisskeyStreamingException error;
}

/// A typed event from a [StreamingChannel] subscription.
final class StreamingChannelEvent<T> {
  /// Creates a typed channel event.
  const StreamingChannelEvent({
    required this.subscriptionId,
    required this.channel,
    required this.type,
    required this.body,
  });

  /// The server-assigned subscription id.
  final String subscriptionId;

  /// The channel name.
  final String channel;

  /// The event type reported by the channel.
  final String type;

  /// The parsed event body.
  final T body;
}

/// A typed Misskey streaming channel.
abstract interface class StreamingChannel<T> {
  /// The channel name sent to the server.
  String get name;

  /// Optional channel parameters.
  JsonMap? get params;

  /// Parses [body] for the given event [type].
  T parse(String type, JsonMap body);
}

/// A Misskey timeline channel.
enum TimelineKind {
  /// Notes from followed users.
  home,

  /// Local notes.
  local,

  /// Local and remote notes.
  hybrid,

  /// Remote notes.
  global,
}

/// A timeline channel that emits [Note] events.
final class TimelineChannel implements StreamingChannel<Note> {
  /// Creates a timeline channel for [kind].
  const TimelineChannel(this.kind);

  /// The timeline to subscribe to.
  final TimelineKind kind;

  @override
  String get name => switch (kind) {
    TimelineKind.home => 'homeTimeline',
    TimelineKind.local => 'localTimeline',
    TimelineKind.hybrid => 'hybridTimeline',
    TimelineKind.global => 'globalTimeline',
  };

  @override
  JsonMap? get params => null;

  @override
  Note parse(String type, JsonMap body) {
    if (type != 'note') {
      throw FormatException('Expected note event, got $type.');
    }
    return Note.fromJson(body);
  }
}

/// The main channel, which relays note updates and server events.
final class MainChannel implements StreamingChannel<JsonMap> {
  /// Creates a main channel.
  const MainChannel();

  @override
  String get name => 'main';

  @override
  JsonMap? get params => null;

  @override
  JsonMap parse(String type, JsonMap body) => body;
}

/// An untyped channel for arbitrary Misskey channel names.
final class RawChannel implements StreamingChannel<JsonMap> {
  /// Creates an untyped channel with [name] and optional [params].
  const RawChannel(this.name, {this.params});

  /// The channel name.
  @override
  final String name;

  /// Optional channel parameters.
  @override
  final JsonMap? params;

  @override
  JsonMap parse(String type, JsonMap body) => body;
}
