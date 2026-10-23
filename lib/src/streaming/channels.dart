// SPDX-License-Identifier: BSD-3-Clause

import '../models/generated/generated.dart';
import '../models/json.dart';
import 'streaming_exceptions.dart';

sealed class MisskeyStreamEvent {
  const MisskeyStreamEvent();
}

final class MisskeyConnected extends MisskeyStreamEvent {
  const MisskeyConnected({required this.subscriptionId});

  final String subscriptionId;
}

final class MisskeyDisconnected extends MisskeyStreamEvent {
  const MisskeyDisconnected({required this.subscriptionId});

  final String subscriptionId;
}

final class MisskeyChannelEvent extends MisskeyStreamEvent {
  const MisskeyChannelEvent({
    required this.subscriptionId,
    required this.type,
    required this.body,
  });

  final String subscriptionId;
  final String type;
  final JsonMap body;
}

final class MisskeyNoteUpdated extends MisskeyStreamEvent {
  const MisskeyNoteUpdated({
    required this.noteId,
    required this.type,
    required this.body,
  });

  final String noteId;
  final String type;
  final JsonMap body;
}

final class MisskeyStreamError extends MisskeyStreamEvent {
  const MisskeyStreamError(this.error);

  final MisskeyStreamingException error;
}

final class StreamingChannelEvent<T> {
  const StreamingChannelEvent({
    required this.subscriptionId,
    required this.channel,
    required this.type,
    required this.body,
  });

  final String subscriptionId;
  final String channel;
  final String type;
  final T body;
}

abstract interface class StreamingChannel<T> {
  String get name;

  JsonMap? get params;

  T parse(String type, JsonMap body);
}

enum TimelineKind { home, local, hybrid, global }

final class TimelineChannel implements StreamingChannel<Note> {
  const TimelineChannel(this.kind);

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

final class MainChannel implements StreamingChannel<JsonMap> {
  const MainChannel();

  @override
  String get name => 'main';

  @override
  JsonMap? get params => null;

  @override
  JsonMap parse(String type, JsonMap body) => body;
}

final class RawChannel implements StreamingChannel<JsonMap> {
  const RawChannel(this.name, {this.params});

  @override
  final String name;

  @override
  final JsonMap? params;

  @override
  JsonMap parse(String type, JsonMap body) => body;
}
