// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/generated/generated.dart';
import '../../models/json.dart';

part 'gallery_models.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class GalleryFeaturedRequest {
  const GalleryFeaturedRequest({this.limit = 10, this.untilId});
  final int limit;
  final String? untilId;

  factory GalleryFeaturedRequest.fromJson(Map<String, dynamic> json) =>
      _$GalleryFeaturedRequestFromJson(json);

  Map<String, dynamic> toJson() => _$GalleryFeaturedRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class GalleryPostsRequest {
  const GalleryPostsRequest({
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

  factory GalleryPostsRequest.fromJson(Map<String, dynamic> json) =>
      _$GalleryPostsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$GalleryPostsRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class GalleryPostsCreateRequest {
  const GalleryPostsCreateRequest({
    required this.title,
    this.description,
    required this.fileIds,
    this.isSensitive = false,
  });
  final String title;
  final String? description;
  final List<String> fileIds;
  final bool isSensitive;

  factory GalleryPostsCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$GalleryPostsCreateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$GalleryPostsCreateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class GalleryPostsDeleteRequest {
  const GalleryPostsDeleteRequest({required this.postId});
  final String postId;

  factory GalleryPostsDeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$GalleryPostsDeleteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$GalleryPostsDeleteRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class GalleryPostsLikeRequest {
  const GalleryPostsLikeRequest({required this.postId});
  final String postId;

  factory GalleryPostsLikeRequest.fromJson(Map<String, dynamic> json) =>
      _$GalleryPostsLikeRequestFromJson(json);

  Map<String, dynamic> toJson() => _$GalleryPostsLikeRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class GalleryPostsShowRequest {
  const GalleryPostsShowRequest({required this.postId});
  final String postId;

  factory GalleryPostsShowRequest.fromJson(Map<String, dynamic> json) =>
      _$GalleryPostsShowRequestFromJson(json);

  Map<String, dynamic> toJson() => _$GalleryPostsShowRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class GalleryPostsUnlikeRequest {
  const GalleryPostsUnlikeRequest({required this.postId});
  final String postId;

  factory GalleryPostsUnlikeRequest.fromJson(Map<String, dynamic> json) =>
      _$GalleryPostsUnlikeRequestFromJson(json);

  Map<String, dynamic> toJson() => _$GalleryPostsUnlikeRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class GalleryPostsUpdateRequest {
  const GalleryPostsUpdateRequest({
    required this.postId,
    this.title,
    this.description,
    this.fileIds,
    this.isSensitive = false,
  });
  final String postId;
  final String? title;
  final String? description;
  final List<String>? fileIds;
  final bool isSensitive;

  factory GalleryPostsUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$GalleryPostsUpdateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$GalleryPostsUpdateRequestToJson(this);
}
