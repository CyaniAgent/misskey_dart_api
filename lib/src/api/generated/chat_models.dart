// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/generated/generated.dart';
import '../../models/json.dart';

part 'chat_models.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChatHistoryRequest {
  const ChatHistoryRequest({this.limit = 10, this.room = false});
  final int limit;
  final bool room;

  factory ChatHistoryRequest.fromJson(Map<String, dynamic> json) =>
      _$ChatHistoryRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChatHistoryRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChatMessagesCreateToRoomRequest {
  const ChatMessagesCreateToRoomRequest({
    this.text,
    this.fileId,
    required this.toRoomId,
  });
  final String? text;
  final String? fileId;
  final String toRoomId;

  factory ChatMessagesCreateToRoomRequest.fromJson(Map<String, dynamic> json) =>
      _$ChatMessagesCreateToRoomRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ChatMessagesCreateToRoomRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChatMessagesCreateToUserRequest {
  const ChatMessagesCreateToUserRequest({
    this.text,
    this.fileId,
    required this.toUserId,
  });
  final String? text;
  final String? fileId;
  final String toUserId;

  factory ChatMessagesCreateToUserRequest.fromJson(Map<String, dynamic> json) =>
      _$ChatMessagesCreateToUserRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ChatMessagesCreateToUserRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChatMessagesDeleteRequest {
  const ChatMessagesDeleteRequest({required this.messageId});
  final String messageId;

  factory ChatMessagesDeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$ChatMessagesDeleteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChatMessagesDeleteRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChatMessagesReactRequest {
  const ChatMessagesReactRequest({
    required this.messageId,
    required this.reaction,
  });
  final String messageId;
  final String reaction;

  factory ChatMessagesReactRequest.fromJson(Map<String, dynamic> json) =>
      _$ChatMessagesReactRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChatMessagesReactRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChatMessagesRoomTimelineRequest {
  const ChatMessagesRoomTimelineRequest({
    this.limit = 10,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    required this.roomId,
  });
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final String roomId;

  factory ChatMessagesRoomTimelineRequest.fromJson(Map<String, dynamic> json) =>
      _$ChatMessagesRoomTimelineRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ChatMessagesRoomTimelineRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChatMessagesSearchRequest {
  const ChatMessagesSearchRequest({
    required this.query,
    this.limit = 10,
    this.userId,
    this.roomId,
  });
  final String query;
  final int limit;
  final String? userId;
  final String? roomId;

  factory ChatMessagesSearchRequest.fromJson(Map<String, dynamic> json) =>
      _$ChatMessagesSearchRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChatMessagesSearchRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChatMessagesShowRequest {
  const ChatMessagesShowRequest({required this.messageId});
  final String messageId;

  factory ChatMessagesShowRequest.fromJson(Map<String, dynamic> json) =>
      _$ChatMessagesShowRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChatMessagesShowRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChatMessagesUnreactRequest {
  const ChatMessagesUnreactRequest({
    required this.messageId,
    required this.reaction,
  });
  final String messageId;
  final String reaction;

  factory ChatMessagesUnreactRequest.fromJson(Map<String, dynamic> json) =>
      _$ChatMessagesUnreactRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChatMessagesUnreactRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChatMessagesUserTimelineRequest {
  const ChatMessagesUserTimelineRequest({
    this.limit = 10,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    required this.userId,
  });
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final String userId;

  factory ChatMessagesUserTimelineRequest.fromJson(Map<String, dynamic> json) =>
      _$ChatMessagesUserTimelineRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ChatMessagesUserTimelineRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChatRoomsCreateRequest {
  const ChatRoomsCreateRequest({required this.name, this.description});
  final String name;
  final String? description;

  factory ChatRoomsCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomsCreateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChatRoomsCreateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChatRoomsDeleteRequest {
  const ChatRoomsDeleteRequest({required this.roomId});
  final String roomId;

  factory ChatRoomsDeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomsDeleteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChatRoomsDeleteRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChatRoomsInvitationsCreateRequest {
  const ChatRoomsInvitationsCreateRequest({
    required this.roomId,
    required this.userId,
  });
  final String roomId;
  final String userId;

  factory ChatRoomsInvitationsCreateRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$ChatRoomsInvitationsCreateRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ChatRoomsInvitationsCreateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChatRoomsInvitationsIgnoreRequest {
  const ChatRoomsInvitationsIgnoreRequest({required this.roomId});
  final String roomId;

  factory ChatRoomsInvitationsIgnoreRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$ChatRoomsInvitationsIgnoreRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ChatRoomsInvitationsIgnoreRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChatRoomsInvitationsInboxRequest {
  const ChatRoomsInvitationsInboxRequest({
    this.limit = 30,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
  });
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;

  factory ChatRoomsInvitationsInboxRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$ChatRoomsInvitationsInboxRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ChatRoomsInvitationsInboxRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChatRoomsInvitationsOutboxRequest {
  const ChatRoomsInvitationsOutboxRequest({
    required this.roomId,
    this.limit = 30,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
  });
  final String roomId;
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;

  factory ChatRoomsInvitationsOutboxRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$ChatRoomsInvitationsOutboxRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ChatRoomsInvitationsOutboxRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChatRoomsJoinRequest {
  const ChatRoomsJoinRequest({required this.roomId});
  final String roomId;

  factory ChatRoomsJoinRequest.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomsJoinRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChatRoomsJoinRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChatRoomsJoiningRequest {
  const ChatRoomsJoiningRequest({
    this.limit = 30,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
  });
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;

  factory ChatRoomsJoiningRequest.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomsJoiningRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChatRoomsJoiningRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChatRoomsLeaveRequest {
  const ChatRoomsLeaveRequest({required this.roomId});
  final String roomId;

  factory ChatRoomsLeaveRequest.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomsLeaveRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChatRoomsLeaveRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChatRoomsMembersRequest {
  const ChatRoomsMembersRequest({
    required this.roomId,
    this.limit = 30,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
  });
  final String roomId;
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;

  factory ChatRoomsMembersRequest.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomsMembersRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChatRoomsMembersRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChatRoomsMuteRequest {
  const ChatRoomsMuteRequest({required this.roomId, required this.mute});
  final String roomId;
  final bool mute;

  factory ChatRoomsMuteRequest.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomsMuteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChatRoomsMuteRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChatRoomsOwnedRequest {
  const ChatRoomsOwnedRequest({
    this.limit = 30,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
  });
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;

  factory ChatRoomsOwnedRequest.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomsOwnedRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChatRoomsOwnedRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChatRoomsShowRequest {
  const ChatRoomsShowRequest({required this.roomId});
  final String roomId;

  factory ChatRoomsShowRequest.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomsShowRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChatRoomsShowRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChatRoomsUpdateRequest {
  const ChatRoomsUpdateRequest({
    required this.roomId,
    this.name,
    this.description,
  });
  final String roomId;
  final String? name;
  final String? description;

  factory ChatRoomsUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomsUpdateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChatRoomsUpdateRequestToJson(this);
}
