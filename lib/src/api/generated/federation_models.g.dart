// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'federation_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FederationApGetRequest _$FederationApGetRequestFromJson(
  Map<String, dynamic> json,
) => FederationApGetRequest(uri: json['uri'] as String);

Map<String, dynamic> _$FederationApGetRequestToJson(
  FederationApGetRequest instance,
) => <String, dynamic>{'uri': instance.uri};

FederationApShowRequest _$FederationApShowRequestFromJson(
  Map<String, dynamic> json,
) => FederationApShowRequest(uri: json['uri'] as String);

Map<String, dynamic> _$FederationApShowRequestToJson(
  FederationApShowRequest instance,
) => <String, dynamic>{'uri': instance.uri};

FederationApShowResponseUser _$FederationApShowResponseUserFromJson(
  Map<String, dynamic> json,
) => FederationApShowResponseUser(
  type: $enumDecode(_$FederationApShowResponseUserTypeEnumMap, json['type']),
  object: UserDetailedNotMe.fromJson(json['object'] as Map<String, dynamic>),
);

Map<String, dynamic> _$FederationApShowResponseUserToJson(
  FederationApShowResponseUser instance,
) => <String, dynamic>{
  'type': _$FederationApShowResponseUserTypeEnumMap[instance.type]!,
  'object': instance.object.toJson(),
};

const _$FederationApShowResponseUserTypeEnumMap = {
  FederationApShowResponseUserType.User: 'User',
};

FederationApShowResponseNote _$FederationApShowResponseNoteFromJson(
  Map<String, dynamic> json,
) => FederationApShowResponseNote(
  type: $enumDecode(_$FederationApShowResponseNoteTypeEnumMap, json['type']),
  object: Note.fromJson(json['object'] as Map<String, dynamic>),
);

Map<String, dynamic> _$FederationApShowResponseNoteToJson(
  FederationApShowResponseNote instance,
) => <String, dynamic>{
  'type': _$FederationApShowResponseNoteTypeEnumMap[instance.type]!,
  'object': instance.object.toJson(),
};

const _$FederationApShowResponseNoteTypeEnumMap = {
  FederationApShowResponseNoteType.Note: 'Note',
};

FederationFollowersRequest _$FederationFollowersRequestFromJson(
  Map<String, dynamic> json,
) => FederationFollowersRequest(
  host: json['host'] as String,
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
  limit: (json['limit'] as num?)?.toInt() ?? 10,
);

Map<String, dynamic> _$FederationFollowersRequestToJson(
  FederationFollowersRequest instance,
) => <String, dynamic>{
  'host': instance.host,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
  'limit': instance.limit,
};

FederationFollowingRequest _$FederationFollowingRequestFromJson(
  Map<String, dynamic> json,
) => FederationFollowingRequest(
  host: json['host'] as String,
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
  limit: (json['limit'] as num?)?.toInt() ?? 10,
);

Map<String, dynamic> _$FederationFollowingRequestToJson(
  FederationFollowingRequest instance,
) => <String, dynamic>{
  'host': instance.host,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
  'limit': instance.limit,
};

FederationInstancesRequest _$FederationInstancesRequestFromJson(
  Map<String, dynamic> json,
) => FederationInstancesRequest(
  host: json['host'] as String?,
  blocked: json['blocked'] as bool?,
  notResponding: json['notResponding'] as bool?,
  suspended: json['suspended'] as bool?,
  silenced: json['silenced'] as bool?,
  federating: json['federating'] as bool?,
  subscribing: json['subscribing'] as bool?,
  publishing: json['publishing'] as bool?,
  limit: (json['limit'] as num?)?.toInt() ?? 30,
  offset: (json['offset'] as num?)?.toInt() ?? 0,
  sort: $enumDecodeNullable(
    _$FederationInstancesRequestSortEnumMap,
    json['sort'],
  ),
);

Map<String, dynamic> _$FederationInstancesRequestToJson(
  FederationInstancesRequest instance,
) => <String, dynamic>{
  'host': ?instance.host,
  'blocked': ?instance.blocked,
  'notResponding': ?instance.notResponding,
  'suspended': ?instance.suspended,
  'silenced': ?instance.silenced,
  'federating': ?instance.federating,
  'subscribing': ?instance.subscribing,
  'publishing': ?instance.publishing,
  'limit': instance.limit,
  'offset': instance.offset,
  'sort': ?_$FederationInstancesRequestSortEnumMap[instance.sort],
};

const _$FederationInstancesRequestSortEnumMap = {
  FederationInstancesRequestSort.pluspubSub: '+pubSub',
  FederationInstancesRequestSort.minuspubSub: '-pubSub',
  FederationInstancesRequestSort.plusnotes: '+notes',
  FederationInstancesRequestSort.minusnotes: '-notes',
  FederationInstancesRequestSort.plususers: '+users',
  FederationInstancesRequestSort.minususers: '-users',
  FederationInstancesRequestSort.plusfollowing: '+following',
  FederationInstancesRequestSort.minusfollowing: '-following',
  FederationInstancesRequestSort.plusfollowers: '+followers',
  FederationInstancesRequestSort.minusfollowers: '-followers',
  FederationInstancesRequestSort.plusfirstRetrievedAt: '+firstRetrievedAt',
  FederationInstancesRequestSort.minusfirstRetrievedAt: '-firstRetrievedAt',
  FederationInstancesRequestSort.pluslatestRequestReceivedAt:
      '+latestRequestReceivedAt',
  FederationInstancesRequestSort.minuslatestRequestReceivedAt:
      '-latestRequestReceivedAt',
};

FederationShowInstanceRequest _$FederationShowInstanceRequestFromJson(
  Map<String, dynamic> json,
) => FederationShowInstanceRequest(host: json['host'] as String);

Map<String, dynamic> _$FederationShowInstanceRequestToJson(
  FederationShowInstanceRequest instance,
) => <String, dynamic>{'host': instance.host};

FederationStatsRequest _$FederationStatsRequestFromJson(
  Map<String, dynamic> json,
) => FederationStatsRequest(limit: (json['limit'] as num?)?.toInt() ?? 10);

Map<String, dynamic> _$FederationStatsRequestToJson(
  FederationStatsRequest instance,
) => <String, dynamic>{'limit': instance.limit};

FederationStatsResponse _$FederationStatsResponseFromJson(
  Map<String, dynamic> json,
) => FederationStatsResponse(
  topSubInstances: (json['topSubInstances'] as List<dynamic>)
      .map((e) => FederationInstance.fromJson(e as Map<String, dynamic>))
      .toList(),
  otherFollowersCount: json['otherFollowersCount'] as num,
  topPubInstances: (json['topPubInstances'] as List<dynamic>)
      .map((e) => FederationInstance.fromJson(e as Map<String, dynamic>))
      .toList(),
  otherFollowingCount: json['otherFollowingCount'] as num,
);

Map<String, dynamic> _$FederationStatsResponseToJson(
  FederationStatsResponse instance,
) => <String, dynamic>{
  'topSubInstances': instance.topSubInstances.map((e) => e.toJson()).toList(),
  'otherFollowersCount': instance.otherFollowersCount,
  'topPubInstances': instance.topPubInstances.map((e) => e.toJson()).toList(),
  'otherFollowingCount': instance.otherFollowingCount,
};

FederationUpdateRemoteUserRequest _$FederationUpdateRemoteUserRequestFromJson(
  Map<String, dynamic> json,
) => FederationUpdateRemoteUserRequest(userId: json['userId'] as String);

Map<String, dynamic> _$FederationUpdateRemoteUserRequestToJson(
  FederationUpdateRemoteUserRequest instance,
) => <String, dynamic>{'userId': instance.userId};

FederationUsersRequest _$FederationUsersRequestFromJson(
  Map<String, dynamic> json,
) => FederationUsersRequest(
  host: json['host'] as String,
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
  limit: (json['limit'] as num?)?.toInt() ?? 10,
);

Map<String, dynamic> _$FederationUsersRequestToJson(
  FederationUsersRequest instance,
) => <String, dynamic>{
  'host': instance.host,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
  'limit': instance.limit,
};
