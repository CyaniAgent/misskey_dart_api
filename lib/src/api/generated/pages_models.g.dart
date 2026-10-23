// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pages_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PagesPagePushRequest _$PagesPagePushRequestFromJson(
  Map<String, dynamic> json,
) => PagesPagePushRequest(
  pageId: json['pageId'] as String,
  event: json['event'] as String,
  varValue: json['var'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$PagesPagePushRequestToJson(
  PagesPagePushRequest instance,
) => <String, dynamic>{
  'pageId': instance.pageId,
  'event': instance.event,
  'var': ?instance.varValue,
};

PagesCreateRequest _$PagesCreateRequestFromJson(Map<String, dynamic> json) =>
    PagesCreateRequest(
      title: json['title'] as String,
      name: json['name'] as String,
      summary: json['summary'] as String?,
      content: (json['content'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      variables: (json['variables'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      script: json['script'] as String,
      eyeCatchingImageId: json['eyeCatchingImageId'] as String?,
      font:
          $enumDecodeNullable(_$PagesCreateRequestFontEnumMap, json['font']) ??
          PagesCreateRequestFont.sansSerif,
      alignCenter: json['alignCenter'] as bool? ?? false,
      hideTitleWhenPinned: json['hideTitleWhenPinned'] as bool? ?? false,
    );

Map<String, dynamic> _$PagesCreateRequestToJson(PagesCreateRequest instance) =>
    <String, dynamic>{
      'title': instance.title,
      'name': instance.name,
      'summary': ?instance.summary,
      'content': instance.content,
      'variables': instance.variables,
      'script': instance.script,
      'eyeCatchingImageId': ?instance.eyeCatchingImageId,
      'font': _$PagesCreateRequestFontEnumMap[instance.font]!,
      'alignCenter': instance.alignCenter,
      'hideTitleWhenPinned': instance.hideTitleWhenPinned,
    };

const _$PagesCreateRequestFontEnumMap = {
  PagesCreateRequestFont.serif: 'serif',
  PagesCreateRequestFont.sansSerif: 'sans-serif',
};

PagesDeleteRequest _$PagesDeleteRequestFromJson(Map<String, dynamic> json) =>
    PagesDeleteRequest(pageId: json['pageId'] as String);

Map<String, dynamic> _$PagesDeleteRequestToJson(PagesDeleteRequest instance) =>
    <String, dynamic>{'pageId': instance.pageId};

PagesLikeRequest _$PagesLikeRequestFromJson(Map<String, dynamic> json) =>
    PagesLikeRequest(pageId: json['pageId'] as String);

Map<String, dynamic> _$PagesLikeRequestToJson(PagesLikeRequest instance) =>
    <String, dynamic>{'pageId': instance.pageId};

PagesShowValueRequestByPageId _$PagesShowValueRequestByPageIdFromJson(
  Map<String, dynamic> json,
) => PagesShowValueRequestByPageId(pageId: json['pageId'] as String);

Map<String, dynamic> _$PagesShowValueRequestByPageIdToJson(
  PagesShowValueRequestByPageId instance,
) => <String, dynamic>{'pageId': instance.pageId};

PagesShowValueRequestByName _$PagesShowValueRequestByNameFromJson(
  Map<String, dynamic> json,
) => PagesShowValueRequestByName(
  name: json['name'] as String,
  username: json['username'] as String,
);

Map<String, dynamic> _$PagesShowValueRequestByNameToJson(
  PagesShowValueRequestByName instance,
) => <String, dynamic>{'name': instance.name, 'username': instance.username};

PagesUnlikeRequest _$PagesUnlikeRequestFromJson(Map<String, dynamic> json) =>
    PagesUnlikeRequest(pageId: json['pageId'] as String);

Map<String, dynamic> _$PagesUnlikeRequestToJson(PagesUnlikeRequest instance) =>
    <String, dynamic>{'pageId': instance.pageId};

PagesUpdateRequest _$PagesUpdateRequestFromJson(Map<String, dynamic> json) =>
    PagesUpdateRequest(
      pageId: json['pageId'] as String,
      title: json['title'] as String?,
      name: json['name'] as String?,
      summary: json['summary'] as String?,
      content: (json['content'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      variables: (json['variables'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      script: json['script'] as String?,
      eyeCatchingImageId: json['eyeCatchingImageId'] as String?,
      font: $enumDecodeNullable(_$PagesUpdateRequestFontEnumMap, json['font']),
      alignCenter: json['alignCenter'] as bool?,
      hideTitleWhenPinned: json['hideTitleWhenPinned'] as bool?,
    );

Map<String, dynamic> _$PagesUpdateRequestToJson(PagesUpdateRequest instance) =>
    <String, dynamic>{
      'pageId': instance.pageId,
      'title': ?instance.title,
      'name': ?instance.name,
      'summary': ?instance.summary,
      'content': ?instance.content,
      'variables': ?instance.variables,
      'script': ?instance.script,
      'eyeCatchingImageId': ?instance.eyeCatchingImageId,
      'font': ?_$PagesUpdateRequestFontEnumMap[instance.font],
      'alignCenter': ?instance.alignCenter,
      'hideTitleWhenPinned': ?instance.hideTitleWhenPinned,
    };

const _$PagesUpdateRequestFontEnumMap = {
  PagesUpdateRequestFont.serif: 'serif',
  PagesUpdateRequestFont.sansSerif: 'sans-serif',
};
