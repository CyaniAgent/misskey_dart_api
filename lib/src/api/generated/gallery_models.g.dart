// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gallery_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GalleryFeaturedRequest _$GalleryFeaturedRequestFromJson(
  Map<String, dynamic> json,
) => GalleryFeaturedRequest(
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  untilId: json['untilId'] as String?,
);

Map<String, dynamic> _$GalleryFeaturedRequestToJson(
  GalleryFeaturedRequest instance,
) => <String, dynamic>{'limit': instance.limit, 'untilId': ?instance.untilId};

GalleryPostsRequest _$GalleryPostsRequestFromJson(Map<String, dynamic> json) =>
    GalleryPostsRequest(
      limit: (json['limit'] as num?)?.toInt() ?? 10,
      sinceId: json['sinceId'] as String?,
      untilId: json['untilId'] as String?,
      sinceDate: (json['sinceDate'] as num?)?.toInt(),
      untilDate: (json['untilDate'] as num?)?.toInt(),
    );

Map<String, dynamic> _$GalleryPostsRequestToJson(
  GalleryPostsRequest instance,
) => <String, dynamic>{
  'limit': instance.limit,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
};

GalleryPostsCreateRequest _$GalleryPostsCreateRequestFromJson(
  Map<String, dynamic> json,
) => GalleryPostsCreateRequest(
  title: json['title'] as String,
  description: json['description'] as String?,
  fileIds: (json['fileIds'] as List<dynamic>).map((e) => e as String).toList(),
  isSensitive: json['isSensitive'] as bool? ?? false,
);

Map<String, dynamic> _$GalleryPostsCreateRequestToJson(
  GalleryPostsCreateRequest instance,
) => <String, dynamic>{
  'title': instance.title,
  'description': ?instance.description,
  'fileIds': instance.fileIds,
  'isSensitive': instance.isSensitive,
};

GalleryPostsDeleteRequest _$GalleryPostsDeleteRequestFromJson(
  Map<String, dynamic> json,
) => GalleryPostsDeleteRequest(postId: json['postId'] as String);

Map<String, dynamic> _$GalleryPostsDeleteRequestToJson(
  GalleryPostsDeleteRequest instance,
) => <String, dynamic>{'postId': instance.postId};

GalleryPostsLikeRequest _$GalleryPostsLikeRequestFromJson(
  Map<String, dynamic> json,
) => GalleryPostsLikeRequest(postId: json['postId'] as String);

Map<String, dynamic> _$GalleryPostsLikeRequestToJson(
  GalleryPostsLikeRequest instance,
) => <String, dynamic>{'postId': instance.postId};

GalleryPostsShowRequest _$GalleryPostsShowRequestFromJson(
  Map<String, dynamic> json,
) => GalleryPostsShowRequest(postId: json['postId'] as String);

Map<String, dynamic> _$GalleryPostsShowRequestToJson(
  GalleryPostsShowRequest instance,
) => <String, dynamic>{'postId': instance.postId};

GalleryPostsUnlikeRequest _$GalleryPostsUnlikeRequestFromJson(
  Map<String, dynamic> json,
) => GalleryPostsUnlikeRequest(postId: json['postId'] as String);

Map<String, dynamic> _$GalleryPostsUnlikeRequestToJson(
  GalleryPostsUnlikeRequest instance,
) => <String, dynamic>{'postId': instance.postId};

GalleryPostsUpdateRequest _$GalleryPostsUpdateRequestFromJson(
  Map<String, dynamic> json,
) => GalleryPostsUpdateRequest(
  postId: json['postId'] as String,
  title: json['title'] as String?,
  description: json['description'] as String?,
  fileIds: (json['fileIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  isSensitive: json['isSensitive'] as bool? ?? false,
);

Map<String, dynamic> _$GalleryPostsUpdateRequestToJson(
  GalleryPostsUpdateRequest instance,
) => <String, dynamic>{
  'postId': instance.postId,
  'title': ?instance.title,
  'description': ?instance.description,
  'fileIds': ?instance.fileIds,
  'isSensitive': instance.isSensitive,
};
