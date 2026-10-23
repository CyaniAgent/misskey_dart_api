// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/generated/generated.dart';
import '../../models/json.dart';

part 'antennas_models.g.dart';

enum AntennasCreateRequestSrc { home, all, users, list, users_blacklist }

enum AntennasUpdateRequestSrc { home, all, users, list, users_blacklist }

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AntennasCreateRequest {
  const AntennasCreateRequest({
    required this.name,
    required this.src,
    this.userListId,
    required this.keywords,
    required this.excludeKeywords,
    required this.users,
    required this.caseSensitive,
    this.localOnly,
    this.excludeBots,
    required this.withReplies,
    required this.withFile,
    this.excludeNotesInSensitiveChannel,
  });
  final String name;
  final AntennasCreateRequestSrc src;
  final String? userListId;
  final List<List<String>> keywords;
  final List<List<String>> excludeKeywords;
  final List<String> users;
  final bool caseSensitive;
  final bool? localOnly;
  final bool? excludeBots;
  final bool withReplies;
  final bool withFile;
  final bool? excludeNotesInSensitiveChannel;

  factory AntennasCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$AntennasCreateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AntennasCreateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AntennasDeleteRequest {
  const AntennasDeleteRequest({required this.antennaId});
  final String antennaId;

  factory AntennasDeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$AntennasDeleteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AntennasDeleteRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AntennasNotesRequest {
  const AntennasNotesRequest({
    required this.antennaId,
    this.limit = 10,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
  });
  final String antennaId;
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;

  factory AntennasNotesRequest.fromJson(Map<String, dynamic> json) =>
      _$AntennasNotesRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AntennasNotesRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AntennasRemoveNoteRequest {
  const AntennasRemoveNoteRequest({
    required this.antennaId,
    required this.noteId,
  });
  final String antennaId;
  final String noteId;

  factory AntennasRemoveNoteRequest.fromJson(Map<String, dynamic> json) =>
      _$AntennasRemoveNoteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AntennasRemoveNoteRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AntennasShowValueRequest {
  const AntennasShowValueRequest({required this.antennaId});
  final String antennaId;

  factory AntennasShowValueRequest.fromJson(Map<String, dynamic> json) =>
      _$AntennasShowValueRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AntennasShowValueRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AntennasUpdateRequest {
  const AntennasUpdateRequest({
    required this.antennaId,
    this.name,
    this.src,
    this.userListId,
    this.keywords,
    this.excludeKeywords,
    this.users,
    this.caseSensitive,
    this.localOnly,
    this.excludeBots,
    this.withReplies,
    this.withFile,
    this.excludeNotesInSensitiveChannel,
  });
  final String antennaId;
  final String? name;
  final AntennasUpdateRequestSrc? src;
  final String? userListId;
  final List<List<String>>? keywords;
  final List<List<String>>? excludeKeywords;
  final List<String>? users;
  final bool? caseSensitive;
  final bool? localOnly;
  final bool? excludeBots;
  final bool? withReplies;
  final bool? withFile;
  final bool? excludeNotesInSensitiveChannel;

  factory AntennasUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$AntennasUpdateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AntennasUpdateRequestToJson(this);
}
