// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clips_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClipsAddNoteRequest _$ClipsAddNoteRequestFromJson(Map<String, dynamic> json) =>
    ClipsAddNoteRequest(
      clipId: json['clipId'] as String,
      noteId: json['noteId'] as String,
    );

Map<String, dynamic> _$ClipsAddNoteRequestToJson(
  ClipsAddNoteRequest instance,
) => <String, dynamic>{'clipId': instance.clipId, 'noteId': instance.noteId};

ClipsCreateRequest _$ClipsCreateRequestFromJson(Map<String, dynamic> json) =>
    ClipsCreateRequest(
      name: json['name'] as String,
      isPublic: json['isPublic'] as bool? ?? false,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$ClipsCreateRequestToJson(ClipsCreateRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'isPublic': instance.isPublic,
      'description': ?instance.description,
    };

ClipsDeleteRequest _$ClipsDeleteRequestFromJson(Map<String, dynamic> json) =>
    ClipsDeleteRequest(clipId: json['clipId'] as String);

Map<String, dynamic> _$ClipsDeleteRequestToJson(ClipsDeleteRequest instance) =>
    <String, dynamic>{'clipId': instance.clipId};

ClipsFavoriteRequest _$ClipsFavoriteRequestFromJson(
  Map<String, dynamic> json,
) => ClipsFavoriteRequest(clipId: json['clipId'] as String);

Map<String, dynamic> _$ClipsFavoriteRequestToJson(
  ClipsFavoriteRequest instance,
) => <String, dynamic>{'clipId': instance.clipId};

ClipsListRequest _$ClipsListRequestFromJson(Map<String, dynamic> json) =>
    ClipsListRequest(
      limit: (json['limit'] as num?)?.toInt() ?? 10,
      sinceId: json['sinceId'] as String?,
      untilId: json['untilId'] as String?,
      sinceDate: (json['sinceDate'] as num?)?.toInt(),
      untilDate: (json['untilDate'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ClipsListRequestToJson(ClipsListRequest instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'sinceId': ?instance.sinceId,
      'untilId': ?instance.untilId,
      'sinceDate': ?instance.sinceDate,
      'untilDate': ?instance.untilDate,
    };

ClipsNotesRequest _$ClipsNotesRequestFromJson(Map<String, dynamic> json) =>
    ClipsNotesRequest(
      clipId: json['clipId'] as String,
      limit: (json['limit'] as num?)?.toInt() ?? 10,
      sinceId: json['sinceId'] as String?,
      untilId: json['untilId'] as String?,
      sinceDate: (json['sinceDate'] as num?)?.toInt(),
      untilDate: (json['untilDate'] as num?)?.toInt(),
      search: json['search'] as String?,
    );

Map<String, dynamic> _$ClipsNotesRequestToJson(ClipsNotesRequest instance) =>
    <String, dynamic>{
      'clipId': instance.clipId,
      'limit': instance.limit,
      'sinceId': ?instance.sinceId,
      'untilId': ?instance.untilId,
      'sinceDate': ?instance.sinceDate,
      'untilDate': ?instance.untilDate,
      'search': ?instance.search,
    };

ClipsRemoveNoteRequest _$ClipsRemoveNoteRequestFromJson(
  Map<String, dynamic> json,
) => ClipsRemoveNoteRequest(
  clipId: json['clipId'] as String,
  noteId: json['noteId'] as String,
);

Map<String, dynamic> _$ClipsRemoveNoteRequestToJson(
  ClipsRemoveNoteRequest instance,
) => <String, dynamic>{'clipId': instance.clipId, 'noteId': instance.noteId};

ClipsShowValueRequest _$ClipsShowValueRequestFromJson(
  Map<String, dynamic> json,
) => ClipsShowValueRequest(clipId: json['clipId'] as String);

Map<String, dynamic> _$ClipsShowValueRequestToJson(
  ClipsShowValueRequest instance,
) => <String, dynamic>{'clipId': instance.clipId};

ClipsUnfavoriteRequest _$ClipsUnfavoriteRequestFromJson(
  Map<String, dynamic> json,
) => ClipsUnfavoriteRequest(clipId: json['clipId'] as String);

Map<String, dynamic> _$ClipsUnfavoriteRequestToJson(
  ClipsUnfavoriteRequest instance,
) => <String, dynamic>{'clipId': instance.clipId};

ClipsUpdateRequest _$ClipsUpdateRequestFromJson(Map<String, dynamic> json) =>
    ClipsUpdateRequest(
      clipId: json['clipId'] as String,
      name: json['name'] as String?,
      isPublic: json['isPublic'] as bool?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$ClipsUpdateRequestToJson(ClipsUpdateRequest instance) =>
    <String, dynamic>{
      'clipId': instance.clipId,
      'name': ?instance.name,
      'isPublic': ?instance.isPublic,
      'description': ?instance.description,
    };
