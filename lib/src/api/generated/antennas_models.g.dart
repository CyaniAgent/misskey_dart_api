// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'antennas_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AntennasCreateRequest _$AntennasCreateRequestFromJson(
  Map<String, dynamic> json,
) => AntennasCreateRequest(
  name: json['name'] as String,
  src: $enumDecode(_$AntennasCreateRequestSrcEnumMap, json['src']),
  userListId: json['userListId'] as String?,
  keywords: (json['keywords'] as List<dynamic>)
      .map((e) => (e as List<dynamic>).map((e) => e as String).toList())
      .toList(),
  excludeKeywords: (json['excludeKeywords'] as List<dynamic>)
      .map((e) => (e as List<dynamic>).map((e) => e as String).toList())
      .toList(),
  users: (json['users'] as List<dynamic>).map((e) => e as String).toList(),
  caseSensitive: json['caseSensitive'] as bool,
  localOnly: json['localOnly'] as bool?,
  excludeBots: json['excludeBots'] as bool?,
  withReplies: json['withReplies'] as bool,
  withFile: json['withFile'] as bool,
  excludeNotesInSensitiveChannel:
      json['excludeNotesInSensitiveChannel'] as bool?,
);

Map<String, dynamic> _$AntennasCreateRequestToJson(
  AntennasCreateRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'src': _$AntennasCreateRequestSrcEnumMap[instance.src]!,
  'userListId': ?instance.userListId,
  'keywords': instance.keywords,
  'excludeKeywords': instance.excludeKeywords,
  'users': instance.users,
  'caseSensitive': instance.caseSensitive,
  'localOnly': ?instance.localOnly,
  'excludeBots': ?instance.excludeBots,
  'withReplies': instance.withReplies,
  'withFile': instance.withFile,
  'excludeNotesInSensitiveChannel': ?instance.excludeNotesInSensitiveChannel,
};

const _$AntennasCreateRequestSrcEnumMap = {
  AntennasCreateRequestSrc.home: 'home',
  AntennasCreateRequestSrc.all: 'all',
  AntennasCreateRequestSrc.users: 'users',
  AntennasCreateRequestSrc.list: 'list',
  AntennasCreateRequestSrc.users_blacklist: 'users_blacklist',
};

AntennasDeleteRequest _$AntennasDeleteRequestFromJson(
  Map<String, dynamic> json,
) => AntennasDeleteRequest(antennaId: json['antennaId'] as String);

Map<String, dynamic> _$AntennasDeleteRequestToJson(
  AntennasDeleteRequest instance,
) => <String, dynamic>{'antennaId': instance.antennaId};

AntennasNotesRequest _$AntennasNotesRequestFromJson(
  Map<String, dynamic> json,
) => AntennasNotesRequest(
  antennaId: json['antennaId'] as String,
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
);

Map<String, dynamic> _$AntennasNotesRequestToJson(
  AntennasNotesRequest instance,
) => <String, dynamic>{
  'antennaId': instance.antennaId,
  'limit': instance.limit,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
};

AntennasRemoveNoteRequest _$AntennasRemoveNoteRequestFromJson(
  Map<String, dynamic> json,
) => AntennasRemoveNoteRequest(
  antennaId: json['antennaId'] as String,
  noteId: json['noteId'] as String,
);

Map<String, dynamic> _$AntennasRemoveNoteRequestToJson(
  AntennasRemoveNoteRequest instance,
) => <String, dynamic>{
  'antennaId': instance.antennaId,
  'noteId': instance.noteId,
};

AntennasShowValueRequest _$AntennasShowValueRequestFromJson(
  Map<String, dynamic> json,
) => AntennasShowValueRequest(antennaId: json['antennaId'] as String);

Map<String, dynamic> _$AntennasShowValueRequestToJson(
  AntennasShowValueRequest instance,
) => <String, dynamic>{'antennaId': instance.antennaId};

AntennasUpdateRequest _$AntennasUpdateRequestFromJson(
  Map<String, dynamic> json,
) => AntennasUpdateRequest(
  antennaId: json['antennaId'] as String,
  name: json['name'] as String?,
  src: $enumDecodeNullable(_$AntennasUpdateRequestSrcEnumMap, json['src']),
  userListId: json['userListId'] as String?,
  keywords: (json['keywords'] as List<dynamic>?)
      ?.map((e) => (e as List<dynamic>).map((e) => e as String).toList())
      .toList(),
  excludeKeywords: (json['excludeKeywords'] as List<dynamic>?)
      ?.map((e) => (e as List<dynamic>).map((e) => e as String).toList())
      .toList(),
  users: (json['users'] as List<dynamic>?)?.map((e) => e as String).toList(),
  caseSensitive: json['caseSensitive'] as bool?,
  localOnly: json['localOnly'] as bool?,
  excludeBots: json['excludeBots'] as bool?,
  withReplies: json['withReplies'] as bool?,
  withFile: json['withFile'] as bool?,
  excludeNotesInSensitiveChannel:
      json['excludeNotesInSensitiveChannel'] as bool?,
);

Map<String, dynamic> _$AntennasUpdateRequestToJson(
  AntennasUpdateRequest instance,
) => <String, dynamic>{
  'antennaId': instance.antennaId,
  'name': ?instance.name,
  'src': ?_$AntennasUpdateRequestSrcEnumMap[instance.src],
  'userListId': ?instance.userListId,
  'keywords': ?instance.keywords,
  'excludeKeywords': ?instance.excludeKeywords,
  'users': ?instance.users,
  'caseSensitive': ?instance.caseSensitive,
  'localOnly': ?instance.localOnly,
  'excludeBots': ?instance.excludeBots,
  'withReplies': ?instance.withReplies,
  'withFile': ?instance.withFile,
  'excludeNotesInSensitiveChannel': ?instance.excludeNotesInSensitiveChannel,
};

const _$AntennasUpdateRequestSrcEnumMap = {
  AntennasUpdateRequestSrc.home: 'home',
  AntennasUpdateRequestSrc.all: 'all',
  AntennasUpdateRequestSrc.users: 'users',
  AntennasUpdateRequestSrc.list: 'list',
  AntennasUpdateRequestSrc.users_blacklist: 'users_blacklist',
};
