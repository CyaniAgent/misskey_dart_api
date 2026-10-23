// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/generated/generated.dart';
import '../../models/json.dart';

part 'clips_models.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ClipsAddNoteRequest {
  const ClipsAddNoteRequest({required this.clipId, required this.noteId});
  final String clipId;
  final String noteId;

  factory ClipsAddNoteRequest.fromJson(Map<String, dynamic> json) =>
      _$ClipsAddNoteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ClipsAddNoteRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ClipsCreateRequest {
  const ClipsCreateRequest({
    required this.name,
    this.isPublic = false,
    this.description,
  });
  final String name;
  final bool isPublic;
  final String? description;

  factory ClipsCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$ClipsCreateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ClipsCreateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ClipsDeleteRequest {
  const ClipsDeleteRequest({required this.clipId});
  final String clipId;

  factory ClipsDeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$ClipsDeleteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ClipsDeleteRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ClipsFavoriteRequest {
  const ClipsFavoriteRequest({required this.clipId});
  final String clipId;

  factory ClipsFavoriteRequest.fromJson(Map<String, dynamic> json) =>
      _$ClipsFavoriteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ClipsFavoriteRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ClipsListRequest {
  const ClipsListRequest({
    this.limit = 10,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
  });
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;

  factory ClipsListRequest.fromJson(Map<String, dynamic> json) =>
      _$ClipsListRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ClipsListRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ClipsNotesRequest {
  const ClipsNotesRequest({
    required this.clipId,
    this.limit = 10,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    this.search,
  });
  final String clipId;
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final String? search;

  factory ClipsNotesRequest.fromJson(Map<String, dynamic> json) =>
      _$ClipsNotesRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ClipsNotesRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ClipsRemoveNoteRequest {
  const ClipsRemoveNoteRequest({required this.clipId, required this.noteId});
  final String clipId;
  final String noteId;

  factory ClipsRemoveNoteRequest.fromJson(Map<String, dynamic> json) =>
      _$ClipsRemoveNoteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ClipsRemoveNoteRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ClipsShowValueRequest {
  const ClipsShowValueRequest({required this.clipId});
  final String clipId;

  factory ClipsShowValueRequest.fromJson(Map<String, dynamic> json) =>
      _$ClipsShowValueRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ClipsShowValueRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ClipsUnfavoriteRequest {
  const ClipsUnfavoriteRequest({required this.clipId});
  final String clipId;

  factory ClipsUnfavoriteRequest.fromJson(Map<String, dynamic> json) =>
      _$ClipsUnfavoriteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ClipsUnfavoriteRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ClipsUpdateRequest {
  const ClipsUpdateRequest({
    required this.clipId,
    this.name,
    this.isPublic,
    this.description,
  });
  final String clipId;
  final String? name;
  final bool? isPublic;
  final String? description;

  factory ClipsUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$ClipsUpdateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ClipsUpdateRequestToJson(this);
}
