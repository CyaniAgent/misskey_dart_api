// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatHistoryRequest _$ChatHistoryRequestFromJson(Map<String, dynamic> json) =>
    ChatHistoryRequest(
      limit: (json['limit'] as num?)?.toInt() ?? 10,
      room: json['room'] as bool? ?? false,
    );

Map<String, dynamic> _$ChatHistoryRequestToJson(ChatHistoryRequest instance) =>
    <String, dynamic>{'limit': instance.limit, 'room': instance.room};

ChatMessagesCreateToRoomRequest _$ChatMessagesCreateToRoomRequestFromJson(
  Map<String, dynamic> json,
) => ChatMessagesCreateToRoomRequest(
  text: json['text'] as String?,
  fileId: json['fileId'] as String?,
  toRoomId: json['toRoomId'] as String,
);

Map<String, dynamic> _$ChatMessagesCreateToRoomRequestToJson(
  ChatMessagesCreateToRoomRequest instance,
) => <String, dynamic>{
  'text': ?instance.text,
  'fileId': ?instance.fileId,
  'toRoomId': instance.toRoomId,
};

ChatMessagesCreateToUserRequest _$ChatMessagesCreateToUserRequestFromJson(
  Map<String, dynamic> json,
) => ChatMessagesCreateToUserRequest(
  text: json['text'] as String?,
  fileId: json['fileId'] as String?,
  toUserId: json['toUserId'] as String,
);

Map<String, dynamic> _$ChatMessagesCreateToUserRequestToJson(
  ChatMessagesCreateToUserRequest instance,
) => <String, dynamic>{
  'text': ?instance.text,
  'fileId': ?instance.fileId,
  'toUserId': instance.toUserId,
};

ChatMessagesDeleteRequest _$ChatMessagesDeleteRequestFromJson(
  Map<String, dynamic> json,
) => ChatMessagesDeleteRequest(messageId: json['messageId'] as String);

Map<String, dynamic> _$ChatMessagesDeleteRequestToJson(
  ChatMessagesDeleteRequest instance,
) => <String, dynamic>{'messageId': instance.messageId};

ChatMessagesReactRequest _$ChatMessagesReactRequestFromJson(
  Map<String, dynamic> json,
) => ChatMessagesReactRequest(
  messageId: json['messageId'] as String,
  reaction: json['reaction'] as String,
);

Map<String, dynamic> _$ChatMessagesReactRequestToJson(
  ChatMessagesReactRequest instance,
) => <String, dynamic>{
  'messageId': instance.messageId,
  'reaction': instance.reaction,
};

ChatMessagesRoomTimelineRequest _$ChatMessagesRoomTimelineRequestFromJson(
  Map<String, dynamic> json,
) => ChatMessagesRoomTimelineRequest(
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
  roomId: json['roomId'] as String,
);

Map<String, dynamic> _$ChatMessagesRoomTimelineRequestToJson(
  ChatMessagesRoomTimelineRequest instance,
) => <String, dynamic>{
  'limit': instance.limit,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
  'roomId': instance.roomId,
};

ChatMessagesSearchRequest _$ChatMessagesSearchRequestFromJson(
  Map<String, dynamic> json,
) => ChatMessagesSearchRequest(
  query: json['query'] as String,
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  userId: json['userId'] as String?,
  roomId: json['roomId'] as String?,
);

Map<String, dynamic> _$ChatMessagesSearchRequestToJson(
  ChatMessagesSearchRequest instance,
) => <String, dynamic>{
  'query': instance.query,
  'limit': instance.limit,
  'userId': ?instance.userId,
  'roomId': ?instance.roomId,
};

ChatMessagesShowRequest _$ChatMessagesShowRequestFromJson(
  Map<String, dynamic> json,
) => ChatMessagesShowRequest(messageId: json['messageId'] as String);

Map<String, dynamic> _$ChatMessagesShowRequestToJson(
  ChatMessagesShowRequest instance,
) => <String, dynamic>{'messageId': instance.messageId};

ChatMessagesUnreactRequest _$ChatMessagesUnreactRequestFromJson(
  Map<String, dynamic> json,
) => ChatMessagesUnreactRequest(
  messageId: json['messageId'] as String,
  reaction: json['reaction'] as String,
);

Map<String, dynamic> _$ChatMessagesUnreactRequestToJson(
  ChatMessagesUnreactRequest instance,
) => <String, dynamic>{
  'messageId': instance.messageId,
  'reaction': instance.reaction,
};

ChatMessagesUserTimelineRequest _$ChatMessagesUserTimelineRequestFromJson(
  Map<String, dynamic> json,
) => ChatMessagesUserTimelineRequest(
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
  userId: json['userId'] as String,
);

Map<String, dynamic> _$ChatMessagesUserTimelineRequestToJson(
  ChatMessagesUserTimelineRequest instance,
) => <String, dynamic>{
  'limit': instance.limit,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
  'userId': instance.userId,
};

ChatRoomsCreateRequest _$ChatRoomsCreateRequestFromJson(
  Map<String, dynamic> json,
) => ChatRoomsCreateRequest(
  name: json['name'] as String,
  description: json['description'] as String?,
);

Map<String, dynamic> _$ChatRoomsCreateRequestToJson(
  ChatRoomsCreateRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'description': ?instance.description,
};

ChatRoomsDeleteRequest _$ChatRoomsDeleteRequestFromJson(
  Map<String, dynamic> json,
) => ChatRoomsDeleteRequest(roomId: json['roomId'] as String);

Map<String, dynamic> _$ChatRoomsDeleteRequestToJson(
  ChatRoomsDeleteRequest instance,
) => <String, dynamic>{'roomId': instance.roomId};

ChatRoomsInvitationsCreateRequest _$ChatRoomsInvitationsCreateRequestFromJson(
  Map<String, dynamic> json,
) => ChatRoomsInvitationsCreateRequest(
  roomId: json['roomId'] as String,
  userId: json['userId'] as String,
);

Map<String, dynamic> _$ChatRoomsInvitationsCreateRequestToJson(
  ChatRoomsInvitationsCreateRequest instance,
) => <String, dynamic>{'roomId': instance.roomId, 'userId': instance.userId};

ChatRoomsInvitationsIgnoreRequest _$ChatRoomsInvitationsIgnoreRequestFromJson(
  Map<String, dynamic> json,
) => ChatRoomsInvitationsIgnoreRequest(roomId: json['roomId'] as String);

Map<String, dynamic> _$ChatRoomsInvitationsIgnoreRequestToJson(
  ChatRoomsInvitationsIgnoreRequest instance,
) => <String, dynamic>{'roomId': instance.roomId};

ChatRoomsInvitationsInboxRequest _$ChatRoomsInvitationsInboxRequestFromJson(
  Map<String, dynamic> json,
) => ChatRoomsInvitationsInboxRequest(
  limit: (json['limit'] as num?)?.toInt() ?? 30,
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
);

Map<String, dynamic> _$ChatRoomsInvitationsInboxRequestToJson(
  ChatRoomsInvitationsInboxRequest instance,
) => <String, dynamic>{
  'limit': instance.limit,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
};

ChatRoomsInvitationsOutboxRequest _$ChatRoomsInvitationsOutboxRequestFromJson(
  Map<String, dynamic> json,
) => ChatRoomsInvitationsOutboxRequest(
  roomId: json['roomId'] as String,
  limit: (json['limit'] as num?)?.toInt() ?? 30,
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
);

Map<String, dynamic> _$ChatRoomsInvitationsOutboxRequestToJson(
  ChatRoomsInvitationsOutboxRequest instance,
) => <String, dynamic>{
  'roomId': instance.roomId,
  'limit': instance.limit,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
};

ChatRoomsJoinRequest _$ChatRoomsJoinRequestFromJson(
  Map<String, dynamic> json,
) => ChatRoomsJoinRequest(roomId: json['roomId'] as String);

Map<String, dynamic> _$ChatRoomsJoinRequestToJson(
  ChatRoomsJoinRequest instance,
) => <String, dynamic>{'roomId': instance.roomId};

ChatRoomsJoiningRequest _$ChatRoomsJoiningRequestFromJson(
  Map<String, dynamic> json,
) => ChatRoomsJoiningRequest(
  limit: (json['limit'] as num?)?.toInt() ?? 30,
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
);

Map<String, dynamic> _$ChatRoomsJoiningRequestToJson(
  ChatRoomsJoiningRequest instance,
) => <String, dynamic>{
  'limit': instance.limit,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
};

ChatRoomsLeaveRequest _$ChatRoomsLeaveRequestFromJson(
  Map<String, dynamic> json,
) => ChatRoomsLeaveRequest(roomId: json['roomId'] as String);

Map<String, dynamic> _$ChatRoomsLeaveRequestToJson(
  ChatRoomsLeaveRequest instance,
) => <String, dynamic>{'roomId': instance.roomId};

ChatRoomsMembersRequest _$ChatRoomsMembersRequestFromJson(
  Map<String, dynamic> json,
) => ChatRoomsMembersRequest(
  roomId: json['roomId'] as String,
  limit: (json['limit'] as num?)?.toInt() ?? 30,
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
);

Map<String, dynamic> _$ChatRoomsMembersRequestToJson(
  ChatRoomsMembersRequest instance,
) => <String, dynamic>{
  'roomId': instance.roomId,
  'limit': instance.limit,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
};

ChatRoomsMuteRequest _$ChatRoomsMuteRequestFromJson(
  Map<String, dynamic> json,
) => ChatRoomsMuteRequest(
  roomId: json['roomId'] as String,
  mute: json['mute'] as bool,
);

Map<String, dynamic> _$ChatRoomsMuteRequestToJson(
  ChatRoomsMuteRequest instance,
) => <String, dynamic>{'roomId': instance.roomId, 'mute': instance.mute};

ChatRoomsOwnedRequest _$ChatRoomsOwnedRequestFromJson(
  Map<String, dynamic> json,
) => ChatRoomsOwnedRequest(
  limit: (json['limit'] as num?)?.toInt() ?? 30,
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
);

Map<String, dynamic> _$ChatRoomsOwnedRequestToJson(
  ChatRoomsOwnedRequest instance,
) => <String, dynamic>{
  'limit': instance.limit,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
};

ChatRoomsShowRequest _$ChatRoomsShowRequestFromJson(
  Map<String, dynamic> json,
) => ChatRoomsShowRequest(roomId: json['roomId'] as String);

Map<String, dynamic> _$ChatRoomsShowRequestToJson(
  ChatRoomsShowRequest instance,
) => <String, dynamic>{'roomId': instance.roomId};

ChatRoomsUpdateRequest _$ChatRoomsUpdateRequestFromJson(
  Map<String, dynamic> json,
) => ChatRoomsUpdateRequest(
  roomId: json['roomId'] as String,
  name: json['name'] as String?,
  description: json['description'] as String?,
);

Map<String, dynamic> _$ChatRoomsUpdateRequestToJson(
  ChatRoomsUpdateRequest instance,
) => <String, dynamic>{
  'roomId': instance.roomId,
  'name': ?instance.name,
  'description': ?instance.description,
};
