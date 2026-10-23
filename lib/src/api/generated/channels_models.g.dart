// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channels_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelsCreateRequest _$ChannelsCreateRequestFromJson(
  Map<String, dynamic> json,
) => ChannelsCreateRequest(
  name: json['name'] as String,
  description: json['description'] as String?,
  bannerId: json['bannerId'] as String?,
  color: json['color'] as String?,
  isSensitive: json['isSensitive'] as bool?,
  allowRenoteToExternal: json['allowRenoteToExternal'] as bool?,
);

Map<String, dynamic> _$ChannelsCreateRequestToJson(
  ChannelsCreateRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'description': ?instance.description,
  'bannerId': ?instance.bannerId,
  'color': ?instance.color,
  'isSensitive': ?instance.isSensitive,
  'allowRenoteToExternal': ?instance.allowRenoteToExternal,
};

ChannelsFavoriteRequest _$ChannelsFavoriteRequestFromJson(
  Map<String, dynamic> json,
) => ChannelsFavoriteRequest(channelId: json['channelId'] as String);

Map<String, dynamic> _$ChannelsFavoriteRequestToJson(
  ChannelsFavoriteRequest instance,
) => <String, dynamic>{'channelId': instance.channelId};

ChannelsFollowRequest _$ChannelsFollowRequestFromJson(
  Map<String, dynamic> json,
) => ChannelsFollowRequest(channelId: json['channelId'] as String);

Map<String, dynamic> _$ChannelsFollowRequestToJson(
  ChannelsFollowRequest instance,
) => <String, dynamic>{'channelId': instance.channelId};

ChannelsFollowedRequest _$ChannelsFollowedRequestFromJson(
  Map<String, dynamic> json,
) => ChannelsFollowedRequest(
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
  limit: (json['limit'] as num?)?.toInt() ?? 5,
);

Map<String, dynamic> _$ChannelsFollowedRequestToJson(
  ChannelsFollowedRequest instance,
) => <String, dynamic>{
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
  'limit': instance.limit,
};

ChannelsMuteCreateRequest _$ChannelsMuteCreateRequestFromJson(
  Map<String, dynamic> json,
) => ChannelsMuteCreateRequest(
  channelId: json['channelId'] as String,
  expiresAt: (json['expiresAt'] as num?)?.toInt(),
);

Map<String, dynamic> _$ChannelsMuteCreateRequestToJson(
  ChannelsMuteCreateRequest instance,
) => <String, dynamic>{
  'channelId': instance.channelId,
  'expiresAt': ?instance.expiresAt,
};

ChannelsMuteDeleteRequest _$ChannelsMuteDeleteRequestFromJson(
  Map<String, dynamic> json,
) => ChannelsMuteDeleteRequest(channelId: json['channelId'] as String);

Map<String, dynamic> _$ChannelsMuteDeleteRequestToJson(
  ChannelsMuteDeleteRequest instance,
) => <String, dynamic>{'channelId': instance.channelId};

ChannelsOwnedRequest _$ChannelsOwnedRequestFromJson(
  Map<String, dynamic> json,
) => ChannelsOwnedRequest(
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
  limit: (json['limit'] as num?)?.toInt() ?? 5,
);

Map<String, dynamic> _$ChannelsOwnedRequestToJson(
  ChannelsOwnedRequest instance,
) => <String, dynamic>{
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
  'limit': instance.limit,
};

ChannelsSearchRequest _$ChannelsSearchRequestFromJson(
  Map<String, dynamic> json,
) => ChannelsSearchRequest(
  query: json['query'] as String,
  type:
      $enumDecodeNullable(_$ChannelsSearchRequestTypeEnumMap, json['type']) ??
      ChannelsSearchRequestType.nameAndDescription,
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
  limit: (json['limit'] as num?)?.toInt() ?? 5,
);

Map<String, dynamic> _$ChannelsSearchRequestToJson(
  ChannelsSearchRequest instance,
) => <String, dynamic>{
  'query': instance.query,
  'type': _$ChannelsSearchRequestTypeEnumMap[instance.type]!,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
  'limit': instance.limit,
};

const _$ChannelsSearchRequestTypeEnumMap = {
  ChannelsSearchRequestType.nameAndDescription: 'nameAndDescription',
  ChannelsSearchRequestType.nameOnly: 'nameOnly',
};

ChannelsShowValueRequest _$ChannelsShowValueRequestFromJson(
  Map<String, dynamic> json,
) => ChannelsShowValueRequest(channelId: json['channelId'] as String);

Map<String, dynamic> _$ChannelsShowValueRequestToJson(
  ChannelsShowValueRequest instance,
) => <String, dynamic>{'channelId': instance.channelId};

ChannelsTimelineRequest _$ChannelsTimelineRequestFromJson(
  Map<String, dynamic> json,
) => ChannelsTimelineRequest(
  channelId: json['channelId'] as String,
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
  allowPartial: json['allowPartial'] as bool? ?? false,
);

Map<String, dynamic> _$ChannelsTimelineRequestToJson(
  ChannelsTimelineRequest instance,
) => <String, dynamic>{
  'channelId': instance.channelId,
  'limit': instance.limit,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
  'allowPartial': instance.allowPartial,
};

ChannelsUnfavoriteRequest _$ChannelsUnfavoriteRequestFromJson(
  Map<String, dynamic> json,
) => ChannelsUnfavoriteRequest(channelId: json['channelId'] as String);

Map<String, dynamic> _$ChannelsUnfavoriteRequestToJson(
  ChannelsUnfavoriteRequest instance,
) => <String, dynamic>{'channelId': instance.channelId};

ChannelsUnfollowRequest _$ChannelsUnfollowRequestFromJson(
  Map<String, dynamic> json,
) => ChannelsUnfollowRequest(channelId: json['channelId'] as String);

Map<String, dynamic> _$ChannelsUnfollowRequestToJson(
  ChannelsUnfollowRequest instance,
) => <String, dynamic>{'channelId': instance.channelId};

ChannelsUpdateRequest _$ChannelsUpdateRequestFromJson(
  Map<String, dynamic> json,
) => ChannelsUpdateRequest(
  channelId: json['channelId'] as String,
  name: json['name'] as String?,
  description: json['description'] as String?,
  bannerId: json['bannerId'] as String?,
  isArchived: json['isArchived'] as bool?,
  pinnedNoteIds: (json['pinnedNoteIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  color: json['color'] as String?,
  isSensitive: json['isSensitive'] as bool?,
  allowRenoteToExternal: json['allowRenoteToExternal'] as bool?,
);

Map<String, dynamic> _$ChannelsUpdateRequestToJson(
  ChannelsUpdateRequest instance,
) => <String, dynamic>{
  'channelId': instance.channelId,
  'name': ?instance.name,
  'description': ?instance.description,
  'bannerId': ?instance.bannerId,
  'isArchived': ?instance.isArchived,
  'pinnedNoteIds': ?instance.pinnedNoteIds,
  'color': ?instance.color,
  'isSensitive': ?instance.isSensitive,
  'allowRenoteToExternal': ?instance.allowRenoteToExternal,
};
