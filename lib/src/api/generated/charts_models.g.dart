// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charts_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChartsActiveUsersRequest _$ChartsActiveUsersRequestFromJson(
  Map<String, dynamic> json,
) => ChartsActiveUsersRequest(
  span: $enumDecode(_$ChartsActiveUsersRequestSpanEnumMap, json['span']),
  limit: (json['limit'] as num?)?.toInt() ?? 30,
  offset: (json['offset'] as num?)?.toInt(),
);

Map<String, dynamic> _$ChartsActiveUsersRequestToJson(
  ChartsActiveUsersRequest instance,
) => <String, dynamic>{
  'span': _$ChartsActiveUsersRequestSpanEnumMap[instance.span]!,
  'limit': instance.limit,
  'offset': ?instance.offset,
};

const _$ChartsActiveUsersRequestSpanEnumMap = {
  ChartsActiveUsersRequestSpan.day: 'day',
  ChartsActiveUsersRequestSpan.hour: 'hour',
};

ChartsActiveUsersResponse _$ChartsActiveUsersResponseFromJson(
  Map<String, dynamic> json,
) => ChartsActiveUsersResponse(
  readWrite: (json['readWrite'] as List<dynamic>).map((e) => e as num).toList(),
  read: (json['read'] as List<dynamic>).map((e) => e as num).toList(),
  write: (json['write'] as List<dynamic>).map((e) => e as num).toList(),
  registeredWithinWeek: (json['registeredWithinWeek'] as List<dynamic>)
      .map((e) => e as num)
      .toList(),
  registeredWithinMonth: (json['registeredWithinMonth'] as List<dynamic>)
      .map((e) => e as num)
      .toList(),
  registeredWithinYear: (json['registeredWithinYear'] as List<dynamic>)
      .map((e) => e as num)
      .toList(),
  registeredOutsideWeek: (json['registeredOutsideWeek'] as List<dynamic>)
      .map((e) => e as num)
      .toList(),
  registeredOutsideMonth: (json['registeredOutsideMonth'] as List<dynamic>)
      .map((e) => e as num)
      .toList(),
  registeredOutsideYear: (json['registeredOutsideYear'] as List<dynamic>)
      .map((e) => e as num)
      .toList(),
);

Map<String, dynamic> _$ChartsActiveUsersResponseToJson(
  ChartsActiveUsersResponse instance,
) => <String, dynamic>{
  'readWrite': instance.readWrite,
  'read': instance.read,
  'write': instance.write,
  'registeredWithinWeek': instance.registeredWithinWeek,
  'registeredWithinMonth': instance.registeredWithinMonth,
  'registeredWithinYear': instance.registeredWithinYear,
  'registeredOutsideWeek': instance.registeredOutsideWeek,
  'registeredOutsideMonth': instance.registeredOutsideMonth,
  'registeredOutsideYear': instance.registeredOutsideYear,
};

ChartsApRequestRequest _$ChartsApRequestRequestFromJson(
  Map<String, dynamic> json,
) => ChartsApRequestRequest(
  span: $enumDecode(_$ChartsApRequestRequestSpanEnumMap, json['span']),
  limit: (json['limit'] as num?)?.toInt() ?? 30,
  offset: (json['offset'] as num?)?.toInt(),
);

Map<String, dynamic> _$ChartsApRequestRequestToJson(
  ChartsApRequestRequest instance,
) => <String, dynamic>{
  'span': _$ChartsApRequestRequestSpanEnumMap[instance.span]!,
  'limit': instance.limit,
  'offset': ?instance.offset,
};

const _$ChartsApRequestRequestSpanEnumMap = {
  ChartsApRequestRequestSpan.day: 'day',
  ChartsApRequestRequestSpan.hour: 'hour',
};

ChartsApRequestResponse _$ChartsApRequestResponseFromJson(
  Map<String, dynamic> json,
) => ChartsApRequestResponse(
  deliverFailed: (json['deliverFailed'] as List<dynamic>)
      .map((e) => e as num)
      .toList(),
  deliverSucceeded: (json['deliverSucceeded'] as List<dynamic>)
      .map((e) => e as num)
      .toList(),
  inboxReceived: (json['inboxReceived'] as List<dynamic>)
      .map((e) => e as num)
      .toList(),
);

Map<String, dynamic> _$ChartsApRequestResponseToJson(
  ChartsApRequestResponse instance,
) => <String, dynamic>{
  'deliverFailed': instance.deliverFailed,
  'deliverSucceeded': instance.deliverSucceeded,
  'inboxReceived': instance.inboxReceived,
};

ChartsDriveRequest _$ChartsDriveRequestFromJson(Map<String, dynamic> json) =>
    ChartsDriveRequest(
      span: $enumDecode(_$ChartsDriveRequestSpanEnumMap, json['span']),
      limit: (json['limit'] as num?)?.toInt() ?? 30,
      offset: (json['offset'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ChartsDriveRequestToJson(ChartsDriveRequest instance) =>
    <String, dynamic>{
      'span': _$ChartsDriveRequestSpanEnumMap[instance.span]!,
      'limit': instance.limit,
      'offset': ?instance.offset,
    };

const _$ChartsDriveRequestSpanEnumMap = {
  ChartsDriveRequestSpan.day: 'day',
  ChartsDriveRequestSpan.hour: 'hour',
};

ChartsDriveResponseLocal _$ChartsDriveResponseLocalFromJson(
  Map<String, dynamic> json,
) => ChartsDriveResponseLocal(
  incCount: (json['incCount'] as List<dynamic>).map((e) => e as num).toList(),
  incSize: (json['incSize'] as List<dynamic>).map((e) => e as num).toList(),
  decCount: (json['decCount'] as List<dynamic>).map((e) => e as num).toList(),
  decSize: (json['decSize'] as List<dynamic>).map((e) => e as num).toList(),
);

Map<String, dynamic> _$ChartsDriveResponseLocalToJson(
  ChartsDriveResponseLocal instance,
) => <String, dynamic>{
  'incCount': instance.incCount,
  'incSize': instance.incSize,
  'decCount': instance.decCount,
  'decSize': instance.decSize,
};

ChartsDriveResponseRemote _$ChartsDriveResponseRemoteFromJson(
  Map<String, dynamic> json,
) => ChartsDriveResponseRemote(
  incCount: (json['incCount'] as List<dynamic>).map((e) => e as num).toList(),
  incSize: (json['incSize'] as List<dynamic>).map((e) => e as num).toList(),
  decCount: (json['decCount'] as List<dynamic>).map((e) => e as num).toList(),
  decSize: (json['decSize'] as List<dynamic>).map((e) => e as num).toList(),
);

Map<String, dynamic> _$ChartsDriveResponseRemoteToJson(
  ChartsDriveResponseRemote instance,
) => <String, dynamic>{
  'incCount': instance.incCount,
  'incSize': instance.incSize,
  'decCount': instance.decCount,
  'decSize': instance.decSize,
};

ChartsDriveResponse _$ChartsDriveResponseFromJson(Map<String, dynamic> json) =>
    ChartsDriveResponse(
      local: ChartsDriveResponseLocal.fromJson(
        json['local'] as Map<String, dynamic>,
      ),
      remote: ChartsDriveResponseRemote.fromJson(
        json['remote'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$ChartsDriveResponseToJson(
  ChartsDriveResponse instance,
) => <String, dynamic>{
  'local': instance.local.toJson(),
  'remote': instance.remote.toJson(),
};

ChartsFederationRequest _$ChartsFederationRequestFromJson(
  Map<String, dynamic> json,
) => ChartsFederationRequest(
  span: $enumDecode(_$ChartsFederationRequestSpanEnumMap, json['span']),
  limit: (json['limit'] as num?)?.toInt() ?? 30,
  offset: (json['offset'] as num?)?.toInt(),
);

Map<String, dynamic> _$ChartsFederationRequestToJson(
  ChartsFederationRequest instance,
) => <String, dynamic>{
  'span': _$ChartsFederationRequestSpanEnumMap[instance.span]!,
  'limit': instance.limit,
  'offset': ?instance.offset,
};

const _$ChartsFederationRequestSpanEnumMap = {
  ChartsFederationRequestSpan.day: 'day',
  ChartsFederationRequestSpan.hour: 'hour',
};

ChartsFederationResponse _$ChartsFederationResponseFromJson(
  Map<String, dynamic> json,
) => ChartsFederationResponse(
  deliveredInstances: (json['deliveredInstances'] as List<dynamic>)
      .map((e) => e as num)
      .toList(),
  inboxInstances: (json['inboxInstances'] as List<dynamic>)
      .map((e) => e as num)
      .toList(),
  stalled: (json['stalled'] as List<dynamic>).map((e) => e as num).toList(),
  sub: (json['sub'] as List<dynamic>).map((e) => e as num).toList(),
  pub: (json['pub'] as List<dynamic>).map((e) => e as num).toList(),
  pubsub: (json['pubsub'] as List<dynamic>).map((e) => e as num).toList(),
  subActive: (json['subActive'] as List<dynamic>).map((e) => e as num).toList(),
  pubActive: (json['pubActive'] as List<dynamic>).map((e) => e as num).toList(),
);

Map<String, dynamic> _$ChartsFederationResponseToJson(
  ChartsFederationResponse instance,
) => <String, dynamic>{
  'deliveredInstances': instance.deliveredInstances,
  'inboxInstances': instance.inboxInstances,
  'stalled': instance.stalled,
  'sub': instance.sub,
  'pub': instance.pub,
  'pubsub': instance.pubsub,
  'subActive': instance.subActive,
  'pubActive': instance.pubActive,
};

ChartsInstanceRequest _$ChartsInstanceRequestFromJson(
  Map<String, dynamic> json,
) => ChartsInstanceRequest(
  span: $enumDecode(_$ChartsInstanceRequestSpanEnumMap, json['span']),
  limit: (json['limit'] as num?)?.toInt() ?? 30,
  offset: (json['offset'] as num?)?.toInt(),
  host: json['host'] as String,
);

Map<String, dynamic> _$ChartsInstanceRequestToJson(
  ChartsInstanceRequest instance,
) => <String, dynamic>{
  'span': _$ChartsInstanceRequestSpanEnumMap[instance.span]!,
  'limit': instance.limit,
  'offset': ?instance.offset,
  'host': instance.host,
};

const _$ChartsInstanceRequestSpanEnumMap = {
  ChartsInstanceRequestSpan.day: 'day',
  ChartsInstanceRequestSpan.hour: 'hour',
};

ChartsInstanceResponseRequests _$ChartsInstanceResponseRequestsFromJson(
  Map<String, dynamic> json,
) => ChartsInstanceResponseRequests(
  failed: (json['failed'] as List<dynamic>).map((e) => e as num).toList(),
  succeeded: (json['succeeded'] as List<dynamic>).map((e) => e as num).toList(),
  received: (json['received'] as List<dynamic>).map((e) => e as num).toList(),
);

Map<String, dynamic> _$ChartsInstanceResponseRequestsToJson(
  ChartsInstanceResponseRequests instance,
) => <String, dynamic>{
  'failed': instance.failed,
  'succeeded': instance.succeeded,
  'received': instance.received,
};

ChartsInstanceResponseNotesDiffs _$ChartsInstanceResponseNotesDiffsFromJson(
  Map<String, dynamic> json,
) => ChartsInstanceResponseNotesDiffs(
  normal: (json['normal'] as List<dynamic>).map((e) => e as num).toList(),
  reply: (json['reply'] as List<dynamic>).map((e) => e as num).toList(),
  renote: (json['renote'] as List<dynamic>).map((e) => e as num).toList(),
  withFile: (json['withFile'] as List<dynamic>).map((e) => e as num).toList(),
);

Map<String, dynamic> _$ChartsInstanceResponseNotesDiffsToJson(
  ChartsInstanceResponseNotesDiffs instance,
) => <String, dynamic>{
  'normal': instance.normal,
  'reply': instance.reply,
  'renote': instance.renote,
  'withFile': instance.withFile,
};

ChartsInstanceResponseNotes _$ChartsInstanceResponseNotesFromJson(
  Map<String, dynamic> json,
) => ChartsInstanceResponseNotes(
  total: (json['total'] as List<dynamic>).map((e) => e as num).toList(),
  inc: (json['inc'] as List<dynamic>).map((e) => e as num).toList(),
  dec: (json['dec'] as List<dynamic>).map((e) => e as num).toList(),
  diffs: ChartsInstanceResponseNotesDiffs.fromJson(
    json['diffs'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$ChartsInstanceResponseNotesToJson(
  ChartsInstanceResponseNotes instance,
) => <String, dynamic>{
  'total': instance.total,
  'inc': instance.inc,
  'dec': instance.dec,
  'diffs': instance.diffs.toJson(),
};

ChartsInstanceResponseUsers _$ChartsInstanceResponseUsersFromJson(
  Map<String, dynamic> json,
) => ChartsInstanceResponseUsers(
  total: (json['total'] as List<dynamic>).map((e) => e as num).toList(),
  inc: (json['inc'] as List<dynamic>).map((e) => e as num).toList(),
  dec: (json['dec'] as List<dynamic>).map((e) => e as num).toList(),
);

Map<String, dynamic> _$ChartsInstanceResponseUsersToJson(
  ChartsInstanceResponseUsers instance,
) => <String, dynamic>{
  'total': instance.total,
  'inc': instance.inc,
  'dec': instance.dec,
};

ChartsInstanceResponseFollowing _$ChartsInstanceResponseFollowingFromJson(
  Map<String, dynamic> json,
) => ChartsInstanceResponseFollowing(
  total: (json['total'] as List<dynamic>).map((e) => e as num).toList(),
  inc: (json['inc'] as List<dynamic>).map((e) => e as num).toList(),
  dec: (json['dec'] as List<dynamic>).map((e) => e as num).toList(),
);

Map<String, dynamic> _$ChartsInstanceResponseFollowingToJson(
  ChartsInstanceResponseFollowing instance,
) => <String, dynamic>{
  'total': instance.total,
  'inc': instance.inc,
  'dec': instance.dec,
};

ChartsInstanceResponseFollowers _$ChartsInstanceResponseFollowersFromJson(
  Map<String, dynamic> json,
) => ChartsInstanceResponseFollowers(
  total: (json['total'] as List<dynamic>).map((e) => e as num).toList(),
  inc: (json['inc'] as List<dynamic>).map((e) => e as num).toList(),
  dec: (json['dec'] as List<dynamic>).map((e) => e as num).toList(),
);

Map<String, dynamic> _$ChartsInstanceResponseFollowersToJson(
  ChartsInstanceResponseFollowers instance,
) => <String, dynamic>{
  'total': instance.total,
  'inc': instance.inc,
  'dec': instance.dec,
};

ChartsInstanceResponseDrive _$ChartsInstanceResponseDriveFromJson(
  Map<String, dynamic> json,
) => ChartsInstanceResponseDrive(
  totalFiles: (json['totalFiles'] as List<dynamic>)
      .map((e) => e as num)
      .toList(),
  incFiles: (json['incFiles'] as List<dynamic>).map((e) => e as num).toList(),
  decFiles: (json['decFiles'] as List<dynamic>).map((e) => e as num).toList(),
  incUsage: (json['incUsage'] as List<dynamic>).map((e) => e as num).toList(),
  decUsage: (json['decUsage'] as List<dynamic>).map((e) => e as num).toList(),
);

Map<String, dynamic> _$ChartsInstanceResponseDriveToJson(
  ChartsInstanceResponseDrive instance,
) => <String, dynamic>{
  'totalFiles': instance.totalFiles,
  'incFiles': instance.incFiles,
  'decFiles': instance.decFiles,
  'incUsage': instance.incUsage,
  'decUsage': instance.decUsage,
};

ChartsInstanceResponse _$ChartsInstanceResponseFromJson(
  Map<String, dynamic> json,
) => ChartsInstanceResponse(
  requests: ChartsInstanceResponseRequests.fromJson(
    json['requests'] as Map<String, dynamic>,
  ),
  notes: ChartsInstanceResponseNotes.fromJson(
    json['notes'] as Map<String, dynamic>,
  ),
  users: ChartsInstanceResponseUsers.fromJson(
    json['users'] as Map<String, dynamic>,
  ),
  following: ChartsInstanceResponseFollowing.fromJson(
    json['following'] as Map<String, dynamic>,
  ),
  followers: ChartsInstanceResponseFollowers.fromJson(
    json['followers'] as Map<String, dynamic>,
  ),
  drive: ChartsInstanceResponseDrive.fromJson(
    json['drive'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$ChartsInstanceResponseToJson(
  ChartsInstanceResponse instance,
) => <String, dynamic>{
  'requests': instance.requests.toJson(),
  'notes': instance.notes.toJson(),
  'users': instance.users.toJson(),
  'following': instance.following.toJson(),
  'followers': instance.followers.toJson(),
  'drive': instance.drive.toJson(),
};

ChartsNotesRequest _$ChartsNotesRequestFromJson(Map<String, dynamic> json) =>
    ChartsNotesRequest(
      span: $enumDecode(_$ChartsNotesRequestSpanEnumMap, json['span']),
      limit: (json['limit'] as num?)?.toInt() ?? 30,
      offset: (json['offset'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ChartsNotesRequestToJson(ChartsNotesRequest instance) =>
    <String, dynamic>{
      'span': _$ChartsNotesRequestSpanEnumMap[instance.span]!,
      'limit': instance.limit,
      'offset': ?instance.offset,
    };

const _$ChartsNotesRequestSpanEnumMap = {
  ChartsNotesRequestSpan.day: 'day',
  ChartsNotesRequestSpan.hour: 'hour',
};

ChartsNotesResponseLocalDiffs _$ChartsNotesResponseLocalDiffsFromJson(
  Map<String, dynamic> json,
) => ChartsNotesResponseLocalDiffs(
  normal: (json['normal'] as List<dynamic>).map((e) => e as num).toList(),
  reply: (json['reply'] as List<dynamic>).map((e) => e as num).toList(),
  renote: (json['renote'] as List<dynamic>).map((e) => e as num).toList(),
  withFile: (json['withFile'] as List<dynamic>).map((e) => e as num).toList(),
);

Map<String, dynamic> _$ChartsNotesResponseLocalDiffsToJson(
  ChartsNotesResponseLocalDiffs instance,
) => <String, dynamic>{
  'normal': instance.normal,
  'reply': instance.reply,
  'renote': instance.renote,
  'withFile': instance.withFile,
};

ChartsNotesResponseLocal _$ChartsNotesResponseLocalFromJson(
  Map<String, dynamic> json,
) => ChartsNotesResponseLocal(
  total: (json['total'] as List<dynamic>).map((e) => e as num).toList(),
  inc: (json['inc'] as List<dynamic>).map((e) => e as num).toList(),
  dec: (json['dec'] as List<dynamic>).map((e) => e as num).toList(),
  diffs: ChartsNotesResponseLocalDiffs.fromJson(
    json['diffs'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$ChartsNotesResponseLocalToJson(
  ChartsNotesResponseLocal instance,
) => <String, dynamic>{
  'total': instance.total,
  'inc': instance.inc,
  'dec': instance.dec,
  'diffs': instance.diffs.toJson(),
};

ChartsNotesResponseRemoteDiffs _$ChartsNotesResponseRemoteDiffsFromJson(
  Map<String, dynamic> json,
) => ChartsNotesResponseRemoteDiffs(
  normal: (json['normal'] as List<dynamic>).map((e) => e as num).toList(),
  reply: (json['reply'] as List<dynamic>).map((e) => e as num).toList(),
  renote: (json['renote'] as List<dynamic>).map((e) => e as num).toList(),
  withFile: (json['withFile'] as List<dynamic>).map((e) => e as num).toList(),
);

Map<String, dynamic> _$ChartsNotesResponseRemoteDiffsToJson(
  ChartsNotesResponseRemoteDiffs instance,
) => <String, dynamic>{
  'normal': instance.normal,
  'reply': instance.reply,
  'renote': instance.renote,
  'withFile': instance.withFile,
};

ChartsNotesResponseRemote _$ChartsNotesResponseRemoteFromJson(
  Map<String, dynamic> json,
) => ChartsNotesResponseRemote(
  total: (json['total'] as List<dynamic>).map((e) => e as num).toList(),
  inc: (json['inc'] as List<dynamic>).map((e) => e as num).toList(),
  dec: (json['dec'] as List<dynamic>).map((e) => e as num).toList(),
  diffs: ChartsNotesResponseRemoteDiffs.fromJson(
    json['diffs'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$ChartsNotesResponseRemoteToJson(
  ChartsNotesResponseRemote instance,
) => <String, dynamic>{
  'total': instance.total,
  'inc': instance.inc,
  'dec': instance.dec,
  'diffs': instance.diffs.toJson(),
};

ChartsNotesResponse _$ChartsNotesResponseFromJson(Map<String, dynamic> json) =>
    ChartsNotesResponse(
      local: ChartsNotesResponseLocal.fromJson(
        json['local'] as Map<String, dynamic>,
      ),
      remote: ChartsNotesResponseRemote.fromJson(
        json['remote'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$ChartsNotesResponseToJson(
  ChartsNotesResponse instance,
) => <String, dynamic>{
  'local': instance.local.toJson(),
  'remote': instance.remote.toJson(),
};

ChartsUserDriveRequest _$ChartsUserDriveRequestFromJson(
  Map<String, dynamic> json,
) => ChartsUserDriveRequest(
  span: $enumDecode(_$ChartsUserDriveRequestSpanEnumMap, json['span']),
  limit: (json['limit'] as num?)?.toInt() ?? 30,
  offset: (json['offset'] as num?)?.toInt(),
  userId: json['userId'] as String,
);

Map<String, dynamic> _$ChartsUserDriveRequestToJson(
  ChartsUserDriveRequest instance,
) => <String, dynamic>{
  'span': _$ChartsUserDriveRequestSpanEnumMap[instance.span]!,
  'limit': instance.limit,
  'offset': ?instance.offset,
  'userId': instance.userId,
};

const _$ChartsUserDriveRequestSpanEnumMap = {
  ChartsUserDriveRequestSpan.day: 'day',
  ChartsUserDriveRequestSpan.hour: 'hour',
};

ChartsUserDriveResponse _$ChartsUserDriveResponseFromJson(
  Map<String, dynamic> json,
) => ChartsUserDriveResponse(
  totalCount: (json['totalCount'] as List<dynamic>)
      .map((e) => e as num)
      .toList(),
  totalSize: (json['totalSize'] as List<dynamic>).map((e) => e as num).toList(),
  incCount: (json['incCount'] as List<dynamic>).map((e) => e as num).toList(),
  incSize: (json['incSize'] as List<dynamic>).map((e) => e as num).toList(),
  decCount: (json['decCount'] as List<dynamic>).map((e) => e as num).toList(),
  decSize: (json['decSize'] as List<dynamic>).map((e) => e as num).toList(),
);

Map<String, dynamic> _$ChartsUserDriveResponseToJson(
  ChartsUserDriveResponse instance,
) => <String, dynamic>{
  'totalCount': instance.totalCount,
  'totalSize': instance.totalSize,
  'incCount': instance.incCount,
  'incSize': instance.incSize,
  'decCount': instance.decCount,
  'decSize': instance.decSize,
};

ChartsUserFollowingRequest _$ChartsUserFollowingRequestFromJson(
  Map<String, dynamic> json,
) => ChartsUserFollowingRequest(
  span: $enumDecode(_$ChartsUserFollowingRequestSpanEnumMap, json['span']),
  limit: (json['limit'] as num?)?.toInt() ?? 30,
  offset: (json['offset'] as num?)?.toInt(),
  userId: json['userId'] as String,
);

Map<String, dynamic> _$ChartsUserFollowingRequestToJson(
  ChartsUserFollowingRequest instance,
) => <String, dynamic>{
  'span': _$ChartsUserFollowingRequestSpanEnumMap[instance.span]!,
  'limit': instance.limit,
  'offset': ?instance.offset,
  'userId': instance.userId,
};

const _$ChartsUserFollowingRequestSpanEnumMap = {
  ChartsUserFollowingRequestSpan.day: 'day',
  ChartsUserFollowingRequestSpan.hour: 'hour',
};

ChartsUserFollowingResponseLocalFollowings
_$ChartsUserFollowingResponseLocalFollowingsFromJson(
  Map<String, dynamic> json,
) => ChartsUserFollowingResponseLocalFollowings(
  total: (json['total'] as List<dynamic>).map((e) => e as num).toList(),
  inc: (json['inc'] as List<dynamic>).map((e) => e as num).toList(),
  dec: (json['dec'] as List<dynamic>).map((e) => e as num).toList(),
);

Map<String, dynamic> _$ChartsUserFollowingResponseLocalFollowingsToJson(
  ChartsUserFollowingResponseLocalFollowings instance,
) => <String, dynamic>{
  'total': instance.total,
  'inc': instance.inc,
  'dec': instance.dec,
};

ChartsUserFollowingResponseLocalFollowers
_$ChartsUserFollowingResponseLocalFollowersFromJson(
  Map<String, dynamic> json,
) => ChartsUserFollowingResponseLocalFollowers(
  total: (json['total'] as List<dynamic>).map((e) => e as num).toList(),
  inc: (json['inc'] as List<dynamic>).map((e) => e as num).toList(),
  dec: (json['dec'] as List<dynamic>).map((e) => e as num).toList(),
);

Map<String, dynamic> _$ChartsUserFollowingResponseLocalFollowersToJson(
  ChartsUserFollowingResponseLocalFollowers instance,
) => <String, dynamic>{
  'total': instance.total,
  'inc': instance.inc,
  'dec': instance.dec,
};

ChartsUserFollowingResponseLocal _$ChartsUserFollowingResponseLocalFromJson(
  Map<String, dynamic> json,
) => ChartsUserFollowingResponseLocal(
  followings: ChartsUserFollowingResponseLocalFollowings.fromJson(
    json['followings'] as Map<String, dynamic>,
  ),
  followers: ChartsUserFollowingResponseLocalFollowers.fromJson(
    json['followers'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$ChartsUserFollowingResponseLocalToJson(
  ChartsUserFollowingResponseLocal instance,
) => <String, dynamic>{
  'followings': instance.followings.toJson(),
  'followers': instance.followers.toJson(),
};

ChartsUserFollowingResponseRemoteFollowings
_$ChartsUserFollowingResponseRemoteFollowingsFromJson(
  Map<String, dynamic> json,
) => ChartsUserFollowingResponseRemoteFollowings(
  total: (json['total'] as List<dynamic>).map((e) => e as num).toList(),
  inc: (json['inc'] as List<dynamic>).map((e) => e as num).toList(),
  dec: (json['dec'] as List<dynamic>).map((e) => e as num).toList(),
);

Map<String, dynamic> _$ChartsUserFollowingResponseRemoteFollowingsToJson(
  ChartsUserFollowingResponseRemoteFollowings instance,
) => <String, dynamic>{
  'total': instance.total,
  'inc': instance.inc,
  'dec': instance.dec,
};

ChartsUserFollowingResponseRemoteFollowers
_$ChartsUserFollowingResponseRemoteFollowersFromJson(
  Map<String, dynamic> json,
) => ChartsUserFollowingResponseRemoteFollowers(
  total: (json['total'] as List<dynamic>).map((e) => e as num).toList(),
  inc: (json['inc'] as List<dynamic>).map((e) => e as num).toList(),
  dec: (json['dec'] as List<dynamic>).map((e) => e as num).toList(),
);

Map<String, dynamic> _$ChartsUserFollowingResponseRemoteFollowersToJson(
  ChartsUserFollowingResponseRemoteFollowers instance,
) => <String, dynamic>{
  'total': instance.total,
  'inc': instance.inc,
  'dec': instance.dec,
};

ChartsUserFollowingResponseRemote _$ChartsUserFollowingResponseRemoteFromJson(
  Map<String, dynamic> json,
) => ChartsUserFollowingResponseRemote(
  followings: ChartsUserFollowingResponseRemoteFollowings.fromJson(
    json['followings'] as Map<String, dynamic>,
  ),
  followers: ChartsUserFollowingResponseRemoteFollowers.fromJson(
    json['followers'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$ChartsUserFollowingResponseRemoteToJson(
  ChartsUserFollowingResponseRemote instance,
) => <String, dynamic>{
  'followings': instance.followings.toJson(),
  'followers': instance.followers.toJson(),
};

ChartsUserFollowingResponse _$ChartsUserFollowingResponseFromJson(
  Map<String, dynamic> json,
) => ChartsUserFollowingResponse(
  local: ChartsUserFollowingResponseLocal.fromJson(
    json['local'] as Map<String, dynamic>,
  ),
  remote: ChartsUserFollowingResponseRemote.fromJson(
    json['remote'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$ChartsUserFollowingResponseToJson(
  ChartsUserFollowingResponse instance,
) => <String, dynamic>{
  'local': instance.local.toJson(),
  'remote': instance.remote.toJson(),
};

ChartsUserNotesRequest _$ChartsUserNotesRequestFromJson(
  Map<String, dynamic> json,
) => ChartsUserNotesRequest(
  span: $enumDecode(_$ChartsUserNotesRequestSpanEnumMap, json['span']),
  limit: (json['limit'] as num?)?.toInt() ?? 30,
  offset: (json['offset'] as num?)?.toInt(),
  userId: json['userId'] as String,
);

Map<String, dynamic> _$ChartsUserNotesRequestToJson(
  ChartsUserNotesRequest instance,
) => <String, dynamic>{
  'span': _$ChartsUserNotesRequestSpanEnumMap[instance.span]!,
  'limit': instance.limit,
  'offset': ?instance.offset,
  'userId': instance.userId,
};

const _$ChartsUserNotesRequestSpanEnumMap = {
  ChartsUserNotesRequestSpan.day: 'day',
  ChartsUserNotesRequestSpan.hour: 'hour',
};

ChartsUserNotesResponseDiffs _$ChartsUserNotesResponseDiffsFromJson(
  Map<String, dynamic> json,
) => ChartsUserNotesResponseDiffs(
  normal: (json['normal'] as List<dynamic>).map((e) => e as num).toList(),
  reply: (json['reply'] as List<dynamic>).map((e) => e as num).toList(),
  renote: (json['renote'] as List<dynamic>).map((e) => e as num).toList(),
  withFile: (json['withFile'] as List<dynamic>).map((e) => e as num).toList(),
);

Map<String, dynamic> _$ChartsUserNotesResponseDiffsToJson(
  ChartsUserNotesResponseDiffs instance,
) => <String, dynamic>{
  'normal': instance.normal,
  'reply': instance.reply,
  'renote': instance.renote,
  'withFile': instance.withFile,
};

ChartsUserNotesResponse _$ChartsUserNotesResponseFromJson(
  Map<String, dynamic> json,
) => ChartsUserNotesResponse(
  total: (json['total'] as List<dynamic>).map((e) => e as num).toList(),
  inc: (json['inc'] as List<dynamic>).map((e) => e as num).toList(),
  dec: (json['dec'] as List<dynamic>).map((e) => e as num).toList(),
  diffs: ChartsUserNotesResponseDiffs.fromJson(
    json['diffs'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$ChartsUserNotesResponseToJson(
  ChartsUserNotesResponse instance,
) => <String, dynamic>{
  'total': instance.total,
  'inc': instance.inc,
  'dec': instance.dec,
  'diffs': instance.diffs.toJson(),
};

ChartsUserPvRequest _$ChartsUserPvRequestFromJson(Map<String, dynamic> json) =>
    ChartsUserPvRequest(
      span: $enumDecode(_$ChartsUserPvRequestSpanEnumMap, json['span']),
      limit: (json['limit'] as num?)?.toInt() ?? 30,
      offset: (json['offset'] as num?)?.toInt(),
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$ChartsUserPvRequestToJson(
  ChartsUserPvRequest instance,
) => <String, dynamic>{
  'span': _$ChartsUserPvRequestSpanEnumMap[instance.span]!,
  'limit': instance.limit,
  'offset': ?instance.offset,
  'userId': instance.userId,
};

const _$ChartsUserPvRequestSpanEnumMap = {
  ChartsUserPvRequestSpan.day: 'day',
  ChartsUserPvRequestSpan.hour: 'hour',
};

ChartsUserPvResponseUpv _$ChartsUserPvResponseUpvFromJson(
  Map<String, dynamic> json,
) => ChartsUserPvResponseUpv(
  user: (json['user'] as List<dynamic>).map((e) => e as num).toList(),
  visitor: (json['visitor'] as List<dynamic>).map((e) => e as num).toList(),
);

Map<String, dynamic> _$ChartsUserPvResponseUpvToJson(
  ChartsUserPvResponseUpv instance,
) => <String, dynamic>{'user': instance.user, 'visitor': instance.visitor};

ChartsUserPvResponsePv _$ChartsUserPvResponsePvFromJson(
  Map<String, dynamic> json,
) => ChartsUserPvResponsePv(
  user: (json['user'] as List<dynamic>).map((e) => e as num).toList(),
  visitor: (json['visitor'] as List<dynamic>).map((e) => e as num).toList(),
);

Map<String, dynamic> _$ChartsUserPvResponsePvToJson(
  ChartsUserPvResponsePv instance,
) => <String, dynamic>{'user': instance.user, 'visitor': instance.visitor};

ChartsUserPvResponse _$ChartsUserPvResponseFromJson(
  Map<String, dynamic> json,
) => ChartsUserPvResponse(
  upv: ChartsUserPvResponseUpv.fromJson(json['upv'] as Map<String, dynamic>),
  pv: ChartsUserPvResponsePv.fromJson(json['pv'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ChartsUserPvResponseToJson(
  ChartsUserPvResponse instance,
) => <String, dynamic>{
  'upv': instance.upv.toJson(),
  'pv': instance.pv.toJson(),
};

ChartsUserReactionsRequest _$ChartsUserReactionsRequestFromJson(
  Map<String, dynamic> json,
) => ChartsUserReactionsRequest(
  span: $enumDecode(_$ChartsUserReactionsRequestSpanEnumMap, json['span']),
  limit: (json['limit'] as num?)?.toInt() ?? 30,
  offset: (json['offset'] as num?)?.toInt(),
  userId: json['userId'] as String,
);

Map<String, dynamic> _$ChartsUserReactionsRequestToJson(
  ChartsUserReactionsRequest instance,
) => <String, dynamic>{
  'span': _$ChartsUserReactionsRequestSpanEnumMap[instance.span]!,
  'limit': instance.limit,
  'offset': ?instance.offset,
  'userId': instance.userId,
};

const _$ChartsUserReactionsRequestSpanEnumMap = {
  ChartsUserReactionsRequestSpan.day: 'day',
  ChartsUserReactionsRequestSpan.hour: 'hour',
};

ChartsUserReactionsResponseLocal _$ChartsUserReactionsResponseLocalFromJson(
  Map<String, dynamic> json,
) => ChartsUserReactionsResponseLocal(
  count: (json['count'] as List<dynamic>).map((e) => e as num).toList(),
);

Map<String, dynamic> _$ChartsUserReactionsResponseLocalToJson(
  ChartsUserReactionsResponseLocal instance,
) => <String, dynamic>{'count': instance.count};

ChartsUserReactionsResponseRemote _$ChartsUserReactionsResponseRemoteFromJson(
  Map<String, dynamic> json,
) => ChartsUserReactionsResponseRemote(
  count: (json['count'] as List<dynamic>).map((e) => e as num).toList(),
);

Map<String, dynamic> _$ChartsUserReactionsResponseRemoteToJson(
  ChartsUserReactionsResponseRemote instance,
) => <String, dynamic>{'count': instance.count};

ChartsUserReactionsResponse _$ChartsUserReactionsResponseFromJson(
  Map<String, dynamic> json,
) => ChartsUserReactionsResponse(
  local: ChartsUserReactionsResponseLocal.fromJson(
    json['local'] as Map<String, dynamic>,
  ),
  remote: ChartsUserReactionsResponseRemote.fromJson(
    json['remote'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$ChartsUserReactionsResponseToJson(
  ChartsUserReactionsResponse instance,
) => <String, dynamic>{
  'local': instance.local.toJson(),
  'remote': instance.remote.toJson(),
};

ChartsUsersRequest _$ChartsUsersRequestFromJson(Map<String, dynamic> json) =>
    ChartsUsersRequest(
      span: $enumDecode(_$ChartsUsersRequestSpanEnumMap, json['span']),
      limit: (json['limit'] as num?)?.toInt() ?? 30,
      offset: (json['offset'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ChartsUsersRequestToJson(ChartsUsersRequest instance) =>
    <String, dynamic>{
      'span': _$ChartsUsersRequestSpanEnumMap[instance.span]!,
      'limit': instance.limit,
      'offset': ?instance.offset,
    };

const _$ChartsUsersRequestSpanEnumMap = {
  ChartsUsersRequestSpan.day: 'day',
  ChartsUsersRequestSpan.hour: 'hour',
};

ChartsUsersResponseLocal _$ChartsUsersResponseLocalFromJson(
  Map<String, dynamic> json,
) => ChartsUsersResponseLocal(
  total: (json['total'] as List<dynamic>).map((e) => e as num).toList(),
  inc: (json['inc'] as List<dynamic>).map((e) => e as num).toList(),
  dec: (json['dec'] as List<dynamic>).map((e) => e as num).toList(),
);

Map<String, dynamic> _$ChartsUsersResponseLocalToJson(
  ChartsUsersResponseLocal instance,
) => <String, dynamic>{
  'total': instance.total,
  'inc': instance.inc,
  'dec': instance.dec,
};

ChartsUsersResponseRemote _$ChartsUsersResponseRemoteFromJson(
  Map<String, dynamic> json,
) => ChartsUsersResponseRemote(
  total: (json['total'] as List<dynamic>).map((e) => e as num).toList(),
  inc: (json['inc'] as List<dynamic>).map((e) => e as num).toList(),
  dec: (json['dec'] as List<dynamic>).map((e) => e as num).toList(),
);

Map<String, dynamic> _$ChartsUsersResponseRemoteToJson(
  ChartsUsersResponseRemote instance,
) => <String, dynamic>{
  'total': instance.total,
  'inc': instance.inc,
  'dec': instance.dec,
};

ChartsUsersResponse _$ChartsUsersResponseFromJson(Map<String, dynamic> json) =>
    ChartsUsersResponse(
      local: ChartsUsersResponseLocal.fromJson(
        json['local'] as Map<String, dynamic>,
      ),
      remote: ChartsUsersResponseRemote.fromJson(
        json['remote'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$ChartsUsersResponseToJson(
  ChartsUsersResponse instance,
) => <String, dynamic>{
  'local': instance.local.toJson(),
  'remote': instance.remote.toJson(),
};
