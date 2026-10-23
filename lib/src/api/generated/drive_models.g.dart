// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drive_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DriveGetResponse _$DriveGetResponseFromJson(Map<String, dynamic> json) =>
    DriveGetResponse(
      capacity: json['capacity'] as num,
      usage: json['usage'] as num,
    );

Map<String, dynamic> _$DriveGetResponseToJson(DriveGetResponse instance) =>
    <String, dynamic>{'capacity': instance.capacity, 'usage': instance.usage};

DriveFilesRequest _$DriveFilesRequestFromJson(Map<String, dynamic> json) =>
    DriveFilesRequest(
      limit: (json['limit'] as num?)?.toInt() ?? 10,
      sinceId: json['sinceId'] as String?,
      untilId: json['untilId'] as String?,
      sinceDate: (json['sinceDate'] as num?)?.toInt(),
      untilDate: (json['untilDate'] as num?)?.toInt(),
      folderId: json['folderId'] as String?,
      type: json['type'] as String?,
      sort: $enumDecodeNullable(_$DriveFilesRequestSortEnumMap, json['sort']),
    );

Map<String, dynamic> _$DriveFilesRequestToJson(DriveFilesRequest instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'sinceId': ?instance.sinceId,
      'untilId': ?instance.untilId,
      'sinceDate': ?instance.sinceDate,
      'untilDate': ?instance.untilDate,
      'folderId': ?instance.folderId,
      'type': ?instance.type,
      'sort': ?_$DriveFilesRequestSortEnumMap[instance.sort],
    };

const _$DriveFilesRequestSortEnumMap = {
  DriveFilesRequestSort.pluscreatedAt: '+createdAt',
  DriveFilesRequestSort.minuscreatedAt: '-createdAt',
  DriveFilesRequestSort.plusname: '+name',
  DriveFilesRequestSort.minusname: '-name',
  DriveFilesRequestSort.plussize: '+size',
  DriveFilesRequestSort.minussize: '-size',
};

DriveFilesAttachedChatMessagesRequest
_$DriveFilesAttachedChatMessagesRequestFromJson(Map<String, dynamic> json) =>
    DriveFilesAttachedChatMessagesRequest(
      sinceId: json['sinceId'] as String?,
      untilId: json['untilId'] as String?,
      sinceDate: (json['sinceDate'] as num?)?.toInt(),
      untilDate: (json['untilDate'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt() ?? 10,
      fileId: json['fileId'] as String,
    );

Map<String, dynamic> _$DriveFilesAttachedChatMessagesRequestToJson(
  DriveFilesAttachedChatMessagesRequest instance,
) => <String, dynamic>{
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
  'limit': instance.limit,
  'fileId': instance.fileId,
};

DriveFilesAttachedNotesRequest _$DriveFilesAttachedNotesRequestFromJson(
  Map<String, dynamic> json,
) => DriveFilesAttachedNotesRequest(
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  fileId: json['fileId'] as String,
);

Map<String, dynamic> _$DriveFilesAttachedNotesRequestToJson(
  DriveFilesAttachedNotesRequest instance,
) => <String, dynamic>{
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
  'limit': instance.limit,
  'fileId': instance.fileId,
};

DriveFilesCheckExistenceRequest _$DriveFilesCheckExistenceRequestFromJson(
  Map<String, dynamic> json,
) => DriveFilesCheckExistenceRequest(md5: json['md5'] as String);

Map<String, dynamic> _$DriveFilesCheckExistenceRequestToJson(
  DriveFilesCheckExistenceRequest instance,
) => <String, dynamic>{'md5': instance.md5};

DriveFilesCreateRequest _$DriveFilesCreateRequestFromJson(
  Map<String, dynamic> json,
) => DriveFilesCreateRequest(
  folderId: json['folderId'] as String?,
  name: json['name'] as String?,
  comment: json['comment'] as String?,
  isSensitive: json['isSensitive'] as bool? ?? false,
  force: json['force'] as bool? ?? false,
  file: (json['file'] as List<dynamic>).map((e) => (e as num).toInt()).toList(),
  fileName: json['fileName'] as String,
);

Map<String, dynamic> _$DriveFilesCreateRequestToJson(
  DriveFilesCreateRequest instance,
) => <String, dynamic>{
  'folderId': ?instance.folderId,
  'name': ?instance.name,
  'comment': ?instance.comment,
  'isSensitive': instance.isSensitive,
  'force': instance.force,
  'file': instance.file,
  'fileName': instance.fileName,
};

DriveFilesDeleteRequest _$DriveFilesDeleteRequestFromJson(
  Map<String, dynamic> json,
) => DriveFilesDeleteRequest(fileId: json['fileId'] as String);

Map<String, dynamic> _$DriveFilesDeleteRequestToJson(
  DriveFilesDeleteRequest instance,
) => <String, dynamic>{'fileId': instance.fileId};

DriveFilesFindRequest _$DriveFilesFindRequestFromJson(
  Map<String, dynamic> json,
) => DriveFilesFindRequest(
  name: json['name'] as String,
  folderId: json['folderId'] as String?,
);

Map<String, dynamic> _$DriveFilesFindRequestToJson(
  DriveFilesFindRequest instance,
) => <String, dynamic>{'name': instance.name, 'folderId': ?instance.folderId};

DriveFilesFindByHashRequest _$DriveFilesFindByHashRequestFromJson(
  Map<String, dynamic> json,
) => DriveFilesFindByHashRequest(md5: json['md5'] as String);

Map<String, dynamic> _$DriveFilesFindByHashRequestToJson(
  DriveFilesFindByHashRequest instance,
) => <String, dynamic>{'md5': instance.md5};

DriveFilesMoveBulkRequest _$DriveFilesMoveBulkRequestFromJson(
  Map<String, dynamic> json,
) => DriveFilesMoveBulkRequest(
  fileIds: (json['fileIds'] as List<dynamic>).map((e) => e as String).toList(),
  folderId: json['folderId'] as String?,
);

Map<String, dynamic> _$DriveFilesMoveBulkRequestToJson(
  DriveFilesMoveBulkRequest instance,
) => <String, dynamic>{
  'fileIds': instance.fileIds,
  'folderId': ?instance.folderId,
};

DriveFilesShowRequestByFileId _$DriveFilesShowRequestByFileIdFromJson(
  Map<String, dynamic> json,
) => DriveFilesShowRequestByFileId(fileId: json['fileId'] as String);

Map<String, dynamic> _$DriveFilesShowRequestByFileIdToJson(
  DriveFilesShowRequestByFileId instance,
) => <String, dynamic>{'fileId': instance.fileId};

DriveFilesShowRequestByUrl _$DriveFilesShowRequestByUrlFromJson(
  Map<String, dynamic> json,
) => DriveFilesShowRequestByUrl(url: json['url'] as String);

Map<String, dynamic> _$DriveFilesShowRequestByUrlToJson(
  DriveFilesShowRequestByUrl instance,
) => <String, dynamic>{'url': instance.url};

DriveFilesUpdateRequest _$DriveFilesUpdateRequestFromJson(
  Map<String, dynamic> json,
) => DriveFilesUpdateRequest(
  fileId: json['fileId'] as String,
  folderId: json['folderId'] as String?,
  name: json['name'] as String?,
  isSensitive: json['isSensitive'] as bool?,
  comment: json['comment'] as String?,
);

Map<String, dynamic> _$DriveFilesUpdateRequestToJson(
  DriveFilesUpdateRequest instance,
) => <String, dynamic>{
  'fileId': instance.fileId,
  'folderId': ?instance.folderId,
  'name': ?instance.name,
  'isSensitive': ?instance.isSensitive,
  'comment': ?instance.comment,
};

DriveFilesUploadFromUrlRequest _$DriveFilesUploadFromUrlRequestFromJson(
  Map<String, dynamic> json,
) => DriveFilesUploadFromUrlRequest(
  url: json['url'] as String,
  folderId: json['folderId'] as String?,
  isSensitive: json['isSensitive'] as bool? ?? false,
  comment: json['comment'] as String?,
  marker: json['marker'] as String?,
  force: json['force'] as bool? ?? false,
);

Map<String, dynamic> _$DriveFilesUploadFromUrlRequestToJson(
  DriveFilesUploadFromUrlRequest instance,
) => <String, dynamic>{
  'url': instance.url,
  'folderId': ?instance.folderId,
  'isSensitive': instance.isSensitive,
  'comment': ?instance.comment,
  'marker': ?instance.marker,
  'force': instance.force,
};

DriveFoldersRequest _$DriveFoldersRequestFromJson(Map<String, dynamic> json) =>
    DriveFoldersRequest(
      limit: (json['limit'] as num?)?.toInt() ?? 10,
      sinceId: json['sinceId'] as String?,
      untilId: json['untilId'] as String?,
      sinceDate: (json['sinceDate'] as num?)?.toInt(),
      untilDate: (json['untilDate'] as num?)?.toInt(),
      folderId: json['folderId'] as String?,
    );

Map<String, dynamic> _$DriveFoldersRequestToJson(
  DriveFoldersRequest instance,
) => <String, dynamic>{
  'limit': instance.limit,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
  'folderId': ?instance.folderId,
};

DriveFoldersCreateRequest _$DriveFoldersCreateRequestFromJson(
  Map<String, dynamic> json,
) => DriveFoldersCreateRequest(
  name: json['name'] as String? ?? 'Untitled',
  parentId: json['parentId'] as String?,
);

Map<String, dynamic> _$DriveFoldersCreateRequestToJson(
  DriveFoldersCreateRequest instance,
) => <String, dynamic>{'name': instance.name, 'parentId': ?instance.parentId};

DriveFoldersDeleteRequest _$DriveFoldersDeleteRequestFromJson(
  Map<String, dynamic> json,
) => DriveFoldersDeleteRequest(folderId: json['folderId'] as String);

Map<String, dynamic> _$DriveFoldersDeleteRequestToJson(
  DriveFoldersDeleteRequest instance,
) => <String, dynamic>{'folderId': instance.folderId};

DriveFoldersFindRequest _$DriveFoldersFindRequestFromJson(
  Map<String, dynamic> json,
) => DriveFoldersFindRequest(
  name: json['name'] as String,
  parentId: json['parentId'] as String?,
);

Map<String, dynamic> _$DriveFoldersFindRequestToJson(
  DriveFoldersFindRequest instance,
) => <String, dynamic>{'name': instance.name, 'parentId': ?instance.parentId};

DriveFoldersShowRequest _$DriveFoldersShowRequestFromJson(
  Map<String, dynamic> json,
) => DriveFoldersShowRequest(folderId: json['folderId'] as String);

Map<String, dynamic> _$DriveFoldersShowRequestToJson(
  DriveFoldersShowRequest instance,
) => <String, dynamic>{'folderId': instance.folderId};

DriveFoldersUpdateRequest _$DriveFoldersUpdateRequestFromJson(
  Map<String, dynamic> json,
) => DriveFoldersUpdateRequest(
  folderId: json['folderId'] as String,
  name: json['name'] as String?,
  parentId: json['parentId'] as String?,
);

Map<String, dynamic> _$DriveFoldersUpdateRequestToJson(
  DriveFoldersUpdateRequest instance,
) => <String, dynamic>{
  'folderId': instance.folderId,
  'name': ?instance.name,
  'parentId': ?instance.parentId,
};

DriveStreamRequest _$DriveStreamRequestFromJson(Map<String, dynamic> json) =>
    DriveStreamRequest(
      limit: (json['limit'] as num?)?.toInt() ?? 10,
      sinceId: json['sinceId'] as String?,
      untilId: json['untilId'] as String?,
      sinceDate: (json['sinceDate'] as num?)?.toInt(),
      untilDate: (json['untilDate'] as num?)?.toInt(),
      type: json['type'] as String?,
    );

Map<String, dynamic> _$DriveStreamRequestToJson(DriveStreamRequest instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'sinceId': ?instance.sinceId,
      'untilId': ?instance.untilId,
      'sinceDate': ?instance.sinceDate,
      'untilDate': ?instance.untilDate,
      'type': ?instance.type,
    };
