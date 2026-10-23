// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flash_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FlashCreateRequest _$FlashCreateRequestFromJson(Map<String, dynamic> json) =>
    FlashCreateRequest(
      title: json['title'] as String,
      summary: json['summary'] as String,
      script: json['script'] as String,
      permissions: (json['permissions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      visibility:
          $enumDecodeNullable(
            _$FlashCreateRequestVisibilityEnumMap,
            json['visibility'],
          ) ??
          FlashCreateRequestVisibility.public,
    );

Map<String, dynamic> _$FlashCreateRequestToJson(FlashCreateRequest instance) =>
    <String, dynamic>{
      'title': instance.title,
      'summary': instance.summary,
      'script': instance.script,
      'permissions': instance.permissions,
      'visibility': _$FlashCreateRequestVisibilityEnumMap[instance.visibility]!,
    };

const _$FlashCreateRequestVisibilityEnumMap = {
  FlashCreateRequestVisibility.public: 'public',
  FlashCreateRequestVisibility.private: 'private',
};

FlashDeleteRequest _$FlashDeleteRequestFromJson(Map<String, dynamic> json) =>
    FlashDeleteRequest(flashId: json['flashId'] as String);

Map<String, dynamic> _$FlashDeleteRequestToJson(FlashDeleteRequest instance) =>
    <String, dynamic>{'flashId': instance.flashId};

FlashFeaturedRequest _$FlashFeaturedRequestFromJson(
  Map<String, dynamic> json,
) => FlashFeaturedRequest(
  offset: (json['offset'] as num?)?.toInt() ?? 0,
  limit: (json['limit'] as num?)?.toInt() ?? 10,
);

Map<String, dynamic> _$FlashFeaturedRequestToJson(
  FlashFeaturedRequest instance,
) => <String, dynamic>{'offset': instance.offset, 'limit': instance.limit};

FlashLikeRequest _$FlashLikeRequestFromJson(Map<String, dynamic> json) =>
    FlashLikeRequest(flashId: json['flashId'] as String);

Map<String, dynamic> _$FlashLikeRequestToJson(FlashLikeRequest instance) =>
    <String, dynamic>{'flashId': instance.flashId};

FlashMyRequest _$FlashMyRequestFromJson(Map<String, dynamic> json) =>
    FlashMyRequest(
      limit: (json['limit'] as num?)?.toInt() ?? 10,
      sinceId: json['sinceId'] as String?,
      untilId: json['untilId'] as String?,
      sinceDate: (json['sinceDate'] as num?)?.toInt(),
      untilDate: (json['untilDate'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FlashMyRequestToJson(FlashMyRequest instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'sinceId': ?instance.sinceId,
      'untilId': ?instance.untilId,
      'sinceDate': ?instance.sinceDate,
      'untilDate': ?instance.untilDate,
    };

FlashMyLikesRequest _$FlashMyLikesRequestFromJson(Map<String, dynamic> json) =>
    FlashMyLikesRequest(
      limit: (json['limit'] as num?)?.toInt() ?? 10,
      sinceId: json['sinceId'] as String?,
      untilId: json['untilId'] as String?,
      sinceDate: (json['sinceDate'] as num?)?.toInt(),
      untilDate: (json['untilDate'] as num?)?.toInt(),
      search: json['search'] as String?,
    );

Map<String, dynamic> _$FlashMyLikesRequestToJson(
  FlashMyLikesRequest instance,
) => <String, dynamic>{
  'limit': instance.limit,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
  'search': ?instance.search,
};

FlashMyLikesResponseItem _$FlashMyLikesResponseItemFromJson(
  Map<String, dynamic> json,
) => FlashMyLikesResponseItem(
  id: json['id'] as String,
  flash: Flash.fromJson(json['flash'] as Map<String, dynamic>),
);

Map<String, dynamic> _$FlashMyLikesResponseItemToJson(
  FlashMyLikesResponseItem instance,
) => <String, dynamic>{'id': instance.id, 'flash': instance.flash.toJson()};

FlashSearchRequest _$FlashSearchRequestFromJson(Map<String, dynamic> json) =>
    FlashSearchRequest(
      query: json['query'] as String,
      sinceId: json['sinceId'] as String?,
      untilId: json['untilId'] as String?,
      sinceDate: (json['sinceDate'] as num?)?.toInt(),
      untilDate: (json['untilDate'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt() ?? 5,
    );

Map<String, dynamic> _$FlashSearchRequestToJson(FlashSearchRequest instance) =>
    <String, dynamic>{
      'query': instance.query,
      'sinceId': ?instance.sinceId,
      'untilId': ?instance.untilId,
      'sinceDate': ?instance.sinceDate,
      'untilDate': ?instance.untilDate,
      'limit': instance.limit,
    };

FlashShowValueRequest _$FlashShowValueRequestFromJson(
  Map<String, dynamic> json,
) => FlashShowValueRequest(flashId: json['flashId'] as String);

Map<String, dynamic> _$FlashShowValueRequestToJson(
  FlashShowValueRequest instance,
) => <String, dynamic>{'flashId': instance.flashId};

FlashUnlikeRequest _$FlashUnlikeRequestFromJson(Map<String, dynamic> json) =>
    FlashUnlikeRequest(flashId: json['flashId'] as String);

Map<String, dynamic> _$FlashUnlikeRequestToJson(FlashUnlikeRequest instance) =>
    <String, dynamic>{'flashId': instance.flashId};

FlashUpdateRequest _$FlashUpdateRequestFromJson(Map<String, dynamic> json) =>
    FlashUpdateRequest(
      flashId: json['flashId'] as String,
      title: json['title'] as String?,
      summary: json['summary'] as String?,
      script: json['script'] as String?,
      permissions: (json['permissions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      visibility: $enumDecodeNullable(
        _$FlashUpdateRequestVisibilityEnumMap,
        json['visibility'],
      ),
    );

Map<String, dynamic> _$FlashUpdateRequestToJson(FlashUpdateRequest instance) =>
    <String, dynamic>{
      'flashId': instance.flashId,
      'title': ?instance.title,
      'summary': ?instance.summary,
      'script': ?instance.script,
      'permissions': ?instance.permissions,
      'visibility': ?_$FlashUpdateRequestVisibilityEnumMap[instance.visibility],
    };

const _$FlashUpdateRequestVisibilityEnumMap = {
  FlashUpdateRequestVisibility.public: 'public',
  FlashUpdateRequestVisibility.private: 'private',
};
