// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/generated/generated.dart';
import '../../models/json.dart';

part 'flash_models.g.dart';

enum FlashCreateRequestVisibility { public, private }

enum FlashUpdateRequestVisibility { public, private }

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FlashCreateRequest {
  const FlashCreateRequest({
    required this.title,
    required this.summary,
    required this.script,
    required this.permissions,
    this.visibility = FlashCreateRequestVisibility.public,
  });
  final String title;
  final String summary;
  final String script;
  final List<String> permissions;
  final FlashCreateRequestVisibility visibility;

  factory FlashCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$FlashCreateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FlashCreateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FlashDeleteRequest {
  const FlashDeleteRequest({required this.flashId});
  final String flashId;

  factory FlashDeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$FlashDeleteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FlashDeleteRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FlashFeaturedRequest {
  const FlashFeaturedRequest({this.offset = 0, this.limit = 10});
  final int offset;
  final int limit;

  factory FlashFeaturedRequest.fromJson(Map<String, dynamic> json) =>
      _$FlashFeaturedRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FlashFeaturedRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FlashLikeRequest {
  const FlashLikeRequest({required this.flashId});
  final String flashId;

  factory FlashLikeRequest.fromJson(Map<String, dynamic> json) =>
      _$FlashLikeRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FlashLikeRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FlashMyRequest {
  const FlashMyRequest({
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

  factory FlashMyRequest.fromJson(Map<String, dynamic> json) =>
      _$FlashMyRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FlashMyRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FlashMyLikesRequest {
  const FlashMyLikesRequest({
    this.limit = 10,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    this.search,
  });
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final String? search;

  factory FlashMyLikesRequest.fromJson(Map<String, dynamic> json) =>
      _$FlashMyLikesRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FlashMyLikesRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FlashMyLikesResponseItem {
  const FlashMyLikesResponseItem({required this.id, required this.flash});
  final String id;
  final Flash flash;

  factory FlashMyLikesResponseItem.fromJson(Map<String, dynamic> json) =>
      _$FlashMyLikesResponseItemFromJson(json);

  Map<String, dynamic> toJson() => _$FlashMyLikesResponseItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FlashSearchRequest {
  const FlashSearchRequest({
    required this.query,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    this.limit = 5,
  });
  final String query;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final int limit;

  factory FlashSearchRequest.fromJson(Map<String, dynamic> json) =>
      _$FlashSearchRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FlashSearchRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FlashShowValueRequest {
  const FlashShowValueRequest({required this.flashId});
  final String flashId;

  factory FlashShowValueRequest.fromJson(Map<String, dynamic> json) =>
      _$FlashShowValueRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FlashShowValueRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FlashUnlikeRequest {
  const FlashUnlikeRequest({required this.flashId});
  final String flashId;

  factory FlashUnlikeRequest.fromJson(Map<String, dynamic> json) =>
      _$FlashUnlikeRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FlashUnlikeRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FlashUpdateRequest {
  const FlashUpdateRequest({
    required this.flashId,
    this.title,
    this.summary,
    this.script,
    this.permissions,
    this.visibility,
  });
  final String flashId;
  final String? title;
  final String? summary;
  final String? script;
  final List<String>? permissions;
  final FlashUpdateRequestVisibility? visibility;

  factory FlashUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$FlashUpdateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FlashUpdateRequestToJson(this);
}
