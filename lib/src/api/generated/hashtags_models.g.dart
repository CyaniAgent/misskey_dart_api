// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hashtags_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HashtagsListRequest _$HashtagsListRequestFromJson(
  Map<String, dynamic> json,
) => HashtagsListRequest(
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  attachedToUserOnly: json['attachedToUserOnly'] as bool? ?? false,
  attachedToLocalUserOnly: json['attachedToLocalUserOnly'] as bool? ?? false,
  attachedToRemoteUserOnly: json['attachedToRemoteUserOnly'] as bool? ?? false,
  sort: $enumDecode(_$HashtagsListRequestSortEnumMap, json['sort']),
);

Map<String, dynamic> _$HashtagsListRequestToJson(
  HashtagsListRequest instance,
) => <String, dynamic>{
  'limit': instance.limit,
  'attachedToUserOnly': instance.attachedToUserOnly,
  'attachedToLocalUserOnly': instance.attachedToLocalUserOnly,
  'attachedToRemoteUserOnly': instance.attachedToRemoteUserOnly,
  'sort': _$HashtagsListRequestSortEnumMap[instance.sort]!,
};

const _$HashtagsListRequestSortEnumMap = {
  HashtagsListRequestSort.plusmentionedUsers: '+mentionedUsers',
  HashtagsListRequestSort.minusmentionedUsers: '-mentionedUsers',
  HashtagsListRequestSort.plusmentionedLocalUsers: '+mentionedLocalUsers',
  HashtagsListRequestSort.minusmentionedLocalUsers: '-mentionedLocalUsers',
  HashtagsListRequestSort.plusmentionedRemoteUsers: '+mentionedRemoteUsers',
  HashtagsListRequestSort.minusmentionedRemoteUsers: '-mentionedRemoteUsers',
  HashtagsListRequestSort.plusattachedUsers: '+attachedUsers',
  HashtagsListRequestSort.minusattachedUsers: '-attachedUsers',
  HashtagsListRequestSort.plusattachedLocalUsers: '+attachedLocalUsers',
  HashtagsListRequestSort.minusattachedLocalUsers: '-attachedLocalUsers',
  HashtagsListRequestSort.plusattachedRemoteUsers: '+attachedRemoteUsers',
  HashtagsListRequestSort.minusattachedRemoteUsers: '-attachedRemoteUsers',
};

HashtagsSearchRequest _$HashtagsSearchRequestFromJson(
  Map<String, dynamic> json,
) => HashtagsSearchRequest(
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  query: json['query'] as String,
  offset: (json['offset'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$HashtagsSearchRequestToJson(
  HashtagsSearchRequest instance,
) => <String, dynamic>{
  'limit': instance.limit,
  'query': instance.query,
  'offset': instance.offset,
};

HashtagsShowValueRequest _$HashtagsShowValueRequestFromJson(
  Map<String, dynamic> json,
) => HashtagsShowValueRequest(tag: json['tag'] as String);

Map<String, dynamic> _$HashtagsShowValueRequestToJson(
  HashtagsShowValueRequest instance,
) => <String, dynamic>{'tag': instance.tag};

HashtagsTrendResponseItem _$HashtagsTrendResponseItemFromJson(
  Map<String, dynamic> json,
) => HashtagsTrendResponseItem(
  tag: json['tag'] as String,
  chart: (json['chart'] as List<dynamic>).map((e) => e as num).toList(),
  usersCount: json['usersCount'] as num,
);

Map<String, dynamic> _$HashtagsTrendResponseItemToJson(
  HashtagsTrendResponseItem instance,
) => <String, dynamic>{
  'tag': instance.tag,
  'chart': instance.chart,
  'usersCount': instance.usersCount,
};

HashtagsUsersRequest _$HashtagsUsersRequestFromJson(
  Map<String, dynamic> json,
) => HashtagsUsersRequest(
  tag: json['tag'] as String,
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  offset: (json['offset'] as num?)?.toInt() ?? 0,
  sort: $enumDecode(_$HashtagsUsersRequestSortEnumMap, json['sort']),
  state:
      $enumDecodeNullable(_$HashtagsUsersRequestStateEnumMap, json['state']) ??
      HashtagsUsersRequestState.all,
  origin:
      $enumDecodeNullable(
        _$HashtagsUsersRequestOriginEnumMap,
        json['origin'],
      ) ??
      HashtagsUsersRequestOrigin.local,
);

Map<String, dynamic> _$HashtagsUsersRequestToJson(
  HashtagsUsersRequest instance,
) => <String, dynamic>{
  'tag': instance.tag,
  'limit': instance.limit,
  'offset': instance.offset,
  'sort': _$HashtagsUsersRequestSortEnumMap[instance.sort]!,
  'state': _$HashtagsUsersRequestStateEnumMap[instance.state]!,
  'origin': _$HashtagsUsersRequestOriginEnumMap[instance.origin]!,
};

const _$HashtagsUsersRequestSortEnumMap = {
  HashtagsUsersRequestSort.plusfollower: '+follower',
  HashtagsUsersRequestSort.minusfollower: '-follower',
  HashtagsUsersRequestSort.pluscreatedAt: '+createdAt',
  HashtagsUsersRequestSort.minuscreatedAt: '-createdAt',
  HashtagsUsersRequestSort.plusupdatedAt: '+updatedAt',
  HashtagsUsersRequestSort.minusupdatedAt: '-updatedAt',
};

const _$HashtagsUsersRequestStateEnumMap = {
  HashtagsUsersRequestState.all: 'all',
  HashtagsUsersRequestState.alive: 'alive',
};

const _$HashtagsUsersRequestOriginEnumMap = {
  HashtagsUsersRequestOrigin.combined: 'combined',
  HashtagsUsersRequestOrigin.local: 'local',
  HashtagsUsersRequestOrigin.remote: 'remote',
};
