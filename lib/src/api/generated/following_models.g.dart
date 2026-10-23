// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'following_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FollowingCreateRequest _$FollowingCreateRequestFromJson(
  Map<String, dynamic> json,
) => FollowingCreateRequest(
  userId: json['userId'] as String,
  withReplies: json['withReplies'] as bool?,
);

Map<String, dynamic> _$FollowingCreateRequestToJson(
  FollowingCreateRequest instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'withReplies': ?instance.withReplies,
};

FollowingDeleteRequest _$FollowingDeleteRequestFromJson(
  Map<String, dynamic> json,
) => FollowingDeleteRequest(userId: json['userId'] as String);

Map<String, dynamic> _$FollowingDeleteRequestToJson(
  FollowingDeleteRequest instance,
) => <String, dynamic>{'userId': instance.userId};

FollowingInvalidateRequest _$FollowingInvalidateRequestFromJson(
  Map<String, dynamic> json,
) => FollowingInvalidateRequest(userId: json['userId'] as String);

Map<String, dynamic> _$FollowingInvalidateRequestToJson(
  FollowingInvalidateRequest instance,
) => <String, dynamic>{'userId': instance.userId};

FollowingListRequest _$FollowingListRequestFromJson(
  Map<String, dynamic> json,
) => FollowingListRequest(
  notification: json['notification'] as bool? ?? false,
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
  limit: (json['limit'] as num?)?.toInt() ?? 10,
);

Map<String, dynamic> _$FollowingListRequestToJson(
  FollowingListRequest instance,
) => <String, dynamic>{
  'notification': instance.notification,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
  'limit': instance.limit,
};

FollowingRequestsAcceptRequest _$FollowingRequestsAcceptRequestFromJson(
  Map<String, dynamic> json,
) => FollowingRequestsAcceptRequest(userId: json['userId'] as String);

Map<String, dynamic> _$FollowingRequestsAcceptRequestToJson(
  FollowingRequestsAcceptRequest instance,
) => <String, dynamic>{'userId': instance.userId};

FollowingRequestsCancelRequest _$FollowingRequestsCancelRequestFromJson(
  Map<String, dynamic> json,
) => FollowingRequestsCancelRequest(userId: json['userId'] as String);

Map<String, dynamic> _$FollowingRequestsCancelRequestToJson(
  FollowingRequestsCancelRequest instance,
) => <String, dynamic>{'userId': instance.userId};

FollowingRequestsListRequest _$FollowingRequestsListRequestFromJson(
  Map<String, dynamic> json,
) => FollowingRequestsListRequest(
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
  limit: (json['limit'] as num?)?.toInt() ?? 10,
);

Map<String, dynamic> _$FollowingRequestsListRequestToJson(
  FollowingRequestsListRequest instance,
) => <String, dynamic>{
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
  'limit': instance.limit,
};

FollowingRequestsListResponseItem _$FollowingRequestsListResponseItemFromJson(
  Map<String, dynamic> json,
) => FollowingRequestsListResponseItem(
  id: json['id'] as String,
  follower: UserLite.fromJson(json['follower'] as Map<String, dynamic>),
  followee: UserLite.fromJson(json['followee'] as Map<String, dynamic>),
);

Map<String, dynamic> _$FollowingRequestsListResponseItemToJson(
  FollowingRequestsListResponseItem instance,
) => <String, dynamic>{
  'id': instance.id,
  'follower': instance.follower.toJson(),
  'followee': instance.followee.toJson(),
};

FollowingRequestsRejectRequest _$FollowingRequestsRejectRequestFromJson(
  Map<String, dynamic> json,
) => FollowingRequestsRejectRequest(userId: json['userId'] as String);

Map<String, dynamic> _$FollowingRequestsRejectRequestToJson(
  FollowingRequestsRejectRequest instance,
) => <String, dynamic>{'userId': instance.userId};

FollowingRequestsSentRequest _$FollowingRequestsSentRequestFromJson(
  Map<String, dynamic> json,
) => FollowingRequestsSentRequest(
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
  limit: (json['limit'] as num?)?.toInt() ?? 10,
);

Map<String, dynamic> _$FollowingRequestsSentRequestToJson(
  FollowingRequestsSentRequest instance,
) => <String, dynamic>{
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
  'limit': instance.limit,
};

FollowingRequestsSentResponseItem _$FollowingRequestsSentResponseItemFromJson(
  Map<String, dynamic> json,
) => FollowingRequestsSentResponseItem(
  id: json['id'] as String,
  follower: UserLite.fromJson(json['follower'] as Map<String, dynamic>),
  followee: UserLite.fromJson(json['followee'] as Map<String, dynamic>),
);

Map<String, dynamic> _$FollowingRequestsSentResponseItemToJson(
  FollowingRequestsSentResponseItem instance,
) => <String, dynamic>{
  'id': instance.id,
  'follower': instance.follower.toJson(),
  'followee': instance.followee.toJson(),
};

FollowingUpdateRequest _$FollowingUpdateRequestFromJson(
  Map<String, dynamic> json,
) => FollowingUpdateRequest(
  userId: json['userId'] as String,
  notify: $enumDecodeNullable(_$UserNotifyEnumMap, json['notify']),
  withReplies: json['withReplies'] as bool?,
);

Map<String, dynamic> _$FollowingUpdateRequestToJson(
  FollowingUpdateRequest instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'notify': ?_$UserNotifyEnumMap[instance.notify],
  'withReplies': ?instance.withReplies,
};

const _$UserNotifyEnumMap = {
  UserNotify.normal: 'normal',
  UserNotify.none: 'none',
};

FollowingUpdateAllRequest _$FollowingUpdateAllRequestFromJson(
  Map<String, dynamic> json,
) => FollowingUpdateAllRequest(
  notify: $enumDecodeNullable(_$UserNotifyEnumMap, json['notify']),
  withReplies: json['withReplies'] as bool?,
);

Map<String, dynamic> _$FollowingUpdateAllRequestToJson(
  FollowingUpdateAllRequest instance,
) => <String, dynamic>{
  'notify': ?_$UserNotifyEnumMap[instance.notify],
  'withReplies': ?instance.withReplies,
};
