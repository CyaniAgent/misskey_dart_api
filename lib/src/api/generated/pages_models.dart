// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/generated/generated.dart';
import '../../models/json.dart';

part 'pages_models.g.dart';

enum PagesCreateRequestFont {
  serif,
  @JsonValue('sans-serif')
  sansSerif,
}

enum PagesUpdateRequestFont {
  serif,
  @JsonValue('sans-serif')
  sansSerif,
}

sealed class PagesShowValueRequest {
  const PagesShowValueRequest();

  Map<String, dynamic> toJson();
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class PagesPagePushRequest {
  const PagesPagePushRequest({
    required this.pageId,
    required this.event,
    @JsonKey(name: 'var') this.varValue,
  });
  final String pageId;
  final String event;
  final JsonMap? varValue;

  factory PagesPagePushRequest.fromJson(Map<String, dynamic> json) =>
      _$PagesPagePushRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PagesPagePushRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class PagesCreateRequest {
  const PagesCreateRequest({
    required this.title,
    required this.name,
    this.summary,
    required this.content,
    required this.variables,
    required this.script,
    this.eyeCatchingImageId,
    this.font = PagesCreateRequestFont.sansSerif,
    this.alignCenter = false,
    this.hideTitleWhenPinned = false,
  });
  final String title;
  final String name;
  final String? summary;
  final List<JsonMap> content;
  final List<JsonMap> variables;
  final String script;
  final String? eyeCatchingImageId;
  final PagesCreateRequestFont font;
  final bool alignCenter;
  final bool hideTitleWhenPinned;

  factory PagesCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$PagesCreateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PagesCreateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class PagesDeleteRequest {
  const PagesDeleteRequest({required this.pageId});
  final String pageId;

  factory PagesDeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$PagesDeleteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PagesDeleteRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class PagesLikeRequest {
  const PagesLikeRequest({required this.pageId});
  final String pageId;

  factory PagesLikeRequest.fromJson(Map<String, dynamic> json) =>
      _$PagesLikeRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PagesLikeRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class PagesShowValueRequestByPageId extends PagesShowValueRequest {
  const PagesShowValueRequestByPageId({required this.pageId}) : super();
  final String pageId;

  factory PagesShowValueRequestByPageId.fromJson(Map<String, dynamic> json) =>
      _$PagesShowValueRequestByPageIdFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PagesShowValueRequestByPageIdToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class PagesShowValueRequestByName extends PagesShowValueRequest {
  const PagesShowValueRequestByName({
    required this.name,
    required this.username,
  }) : super();
  final String name;
  final String username;

  factory PagesShowValueRequestByName.fromJson(Map<String, dynamic> json) =>
      _$PagesShowValueRequestByNameFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PagesShowValueRequestByNameToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class PagesUnlikeRequest {
  const PagesUnlikeRequest({required this.pageId});
  final String pageId;

  factory PagesUnlikeRequest.fromJson(Map<String, dynamic> json) =>
      _$PagesUnlikeRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PagesUnlikeRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class PagesUpdateRequest {
  const PagesUpdateRequest({
    required this.pageId,
    this.title,
    this.name,
    this.summary,
    this.content,
    this.variables,
    this.script,
    this.eyeCatchingImageId,
    this.font,
    this.alignCenter,
    this.hideTitleWhenPinned,
  });
  final String pageId;
  final String? title;
  final String? name;
  final String? summary;
  final List<JsonMap>? content;
  final List<JsonMap>? variables;
  final String? script;
  final String? eyeCatchingImageId;
  final PagesUpdateRequestFont? font;
  final bool? alignCenter;
  final bool? hideTitleWhenPinned;

  factory PagesUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$PagesUpdateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PagesUpdateRequestToJson(this);
}
