// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/generated/generated.dart';
import '../../models/json.dart';

part 'drive_models.g.dart';

enum DriveFilesRequestSort {
  @JsonValue('+createdAt')
  pluscreatedAt,
  @JsonValue('-createdAt')
  minuscreatedAt,
  @JsonValue('+name')
  plusname,
  @JsonValue('-name')
  minusname,
  @JsonValue('+size')
  plussize,
  @JsonValue('-size')
  minussize,
}

sealed class DriveFilesShowRequest {
  const DriveFilesShowRequest();

  Map<String, dynamic> toJson();
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class DriveGetResponse {
  const DriveGetResponse({required this.capacity, required this.usage});
  final num capacity;
  final num usage;

  factory DriveGetResponse.fromJson(Map<String, dynamic> json) =>
      _$DriveGetResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DriveGetResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class DriveFilesRequest {
  const DriveFilesRequest({
    this.limit = 10,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    this.folderId,
    this.type,
    this.sort,
  });
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final String? folderId;
  final String? type;
  final DriveFilesRequestSort? sort;

  factory DriveFilesRequest.fromJson(Map<String, dynamic> json) =>
      _$DriveFilesRequestFromJson(json);

  Map<String, dynamic> toJson() => _$DriveFilesRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class DriveFilesAttachedChatMessagesRequest {
  const DriveFilesAttachedChatMessagesRequest({
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    this.limit = 10,
    required this.fileId,
  });
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final int limit;
  final String fileId;

  factory DriveFilesAttachedChatMessagesRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$DriveFilesAttachedChatMessagesRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DriveFilesAttachedChatMessagesRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class DriveFilesAttachedNotesRequest {
  const DriveFilesAttachedNotesRequest({
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    this.limit = 10,
    required this.fileId,
  });
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final int limit;
  final String fileId;

  factory DriveFilesAttachedNotesRequest.fromJson(Map<String, dynamic> json) =>
      _$DriveFilesAttachedNotesRequestFromJson(json);

  Map<String, dynamic> toJson() => _$DriveFilesAttachedNotesRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class DriveFilesCheckExistenceRequest {
  const DriveFilesCheckExistenceRequest({required this.md5});
  final String md5;

  factory DriveFilesCheckExistenceRequest.fromJson(Map<String, dynamic> json) =>
      _$DriveFilesCheckExistenceRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DriveFilesCheckExistenceRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class DriveFilesCreateRequest {
  const DriveFilesCreateRequest({
    this.folderId,
    this.name,
    this.comment,
    this.isSensitive = false,
    this.force = false,
    required this.file,
    required this.fileName,
  });
  final String? folderId;
  final String? name;
  final String? comment;
  final bool isSensitive;
  final bool force;
  final List<int> file;
  final String fileName;

  factory DriveFilesCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$DriveFilesCreateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$DriveFilesCreateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class DriveFilesDeleteRequest {
  const DriveFilesDeleteRequest({required this.fileId});
  final String fileId;

  factory DriveFilesDeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$DriveFilesDeleteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$DriveFilesDeleteRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class DriveFilesFindRequest {
  const DriveFilesFindRequest({required this.name, this.folderId});
  final String name;
  final String? folderId;

  factory DriveFilesFindRequest.fromJson(Map<String, dynamic> json) =>
      _$DriveFilesFindRequestFromJson(json);

  Map<String, dynamic> toJson() => _$DriveFilesFindRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class DriveFilesFindByHashRequest {
  const DriveFilesFindByHashRequest({required this.md5});
  final String md5;

  factory DriveFilesFindByHashRequest.fromJson(Map<String, dynamic> json) =>
      _$DriveFilesFindByHashRequestFromJson(json);

  Map<String, dynamic> toJson() => _$DriveFilesFindByHashRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class DriveFilesMoveBulkRequest {
  const DriveFilesMoveBulkRequest({required this.fileIds, this.folderId});
  final List<String> fileIds;
  final String? folderId;

  factory DriveFilesMoveBulkRequest.fromJson(Map<String, dynamic> json) =>
      _$DriveFilesMoveBulkRequestFromJson(json);

  Map<String, dynamic> toJson() => _$DriveFilesMoveBulkRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class DriveFilesShowRequestByFileId extends DriveFilesShowRequest {
  const DriveFilesShowRequestByFileId({required this.fileId}) : super();
  final String fileId;

  factory DriveFilesShowRequestByFileId.fromJson(Map<String, dynamic> json) =>
      _$DriveFilesShowRequestByFileIdFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DriveFilesShowRequestByFileIdToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class DriveFilesShowRequestByUrl extends DriveFilesShowRequest {
  const DriveFilesShowRequestByUrl({required this.url}) : super();
  final String url;

  factory DriveFilesShowRequestByUrl.fromJson(Map<String, dynamic> json) =>
      _$DriveFilesShowRequestByUrlFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DriveFilesShowRequestByUrlToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class DriveFilesUpdateRequest {
  const DriveFilesUpdateRequest({
    required this.fileId,
    this.folderId,
    this.name,
    this.isSensitive,
    this.comment,
  });
  final String fileId;
  final String? folderId;
  final String? name;
  final bool? isSensitive;
  final String? comment;

  factory DriveFilesUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$DriveFilesUpdateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$DriveFilesUpdateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class DriveFilesUploadFromUrlRequest {
  const DriveFilesUploadFromUrlRequest({
    required this.url,
    this.folderId,
    this.isSensitive = false,
    this.comment,
    this.marker,
    this.force = false,
  });
  final String url;
  final String? folderId;
  final bool isSensitive;
  final String? comment;
  final String? marker;
  final bool force;

  factory DriveFilesUploadFromUrlRequest.fromJson(Map<String, dynamic> json) =>
      _$DriveFilesUploadFromUrlRequestFromJson(json);

  Map<String, dynamic> toJson() => _$DriveFilesUploadFromUrlRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class DriveFoldersRequest {
  const DriveFoldersRequest({
    this.limit = 10,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    this.folderId,
  });
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final String? folderId;

  factory DriveFoldersRequest.fromJson(Map<String, dynamic> json) =>
      _$DriveFoldersRequestFromJson(json);

  Map<String, dynamic> toJson() => _$DriveFoldersRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class DriveFoldersCreateRequest {
  const DriveFoldersCreateRequest({this.name = 'Untitled', this.parentId});
  final String name;
  final String? parentId;

  factory DriveFoldersCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$DriveFoldersCreateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$DriveFoldersCreateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class DriveFoldersDeleteRequest {
  const DriveFoldersDeleteRequest({required this.folderId});
  final String folderId;

  factory DriveFoldersDeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$DriveFoldersDeleteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$DriveFoldersDeleteRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class DriveFoldersFindRequest {
  const DriveFoldersFindRequest({required this.name, this.parentId});
  final String name;
  final String? parentId;

  factory DriveFoldersFindRequest.fromJson(Map<String, dynamic> json) =>
      _$DriveFoldersFindRequestFromJson(json);

  Map<String, dynamic> toJson() => _$DriveFoldersFindRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class DriveFoldersShowRequest {
  const DriveFoldersShowRequest({required this.folderId});
  final String folderId;

  factory DriveFoldersShowRequest.fromJson(Map<String, dynamic> json) =>
      _$DriveFoldersShowRequestFromJson(json);

  Map<String, dynamic> toJson() => _$DriveFoldersShowRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class DriveFoldersUpdateRequest {
  const DriveFoldersUpdateRequest({
    required this.folderId,
    this.name,
    this.parentId,
  });
  final String folderId;
  final String? name;
  final String? parentId;

  factory DriveFoldersUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$DriveFoldersUpdateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$DriveFoldersUpdateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class DriveStreamRequest {
  const DriveStreamRequest({
    this.limit = 10,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    this.type,
  });
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final String? type;

  factory DriveStreamRequest.fromJson(Map<String, dynamic> json) =>
      _$DriveStreamRequestFromJson(json);

  Map<String, dynamic> toJson() => _$DriveStreamRequestToJson(this);
}
