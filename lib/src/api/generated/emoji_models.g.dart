// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emoji_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmojiGetRequest _$EmojiGetRequestFromJson(Map<String, dynamic> json) =>
    EmojiGetRequest(name: json['name'] as String);

Map<String, dynamic> _$EmojiGetRequestToJson(EmojiGetRequest instance) =>
    <String, dynamic>{'name': instance.name};

EmojiListResponse _$EmojiListResponseFromJson(Map<String, dynamic> json) =>
    EmojiListResponse(
      emojis: (json['emojis'] as List<dynamic>)
          .map((e) => EmojiSimple.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EmojiListResponseToJson(EmojiListResponse instance) =>
    <String, dynamic>{
      'emojis': instance.emojis.map((e) => e.toJson()).toList(),
    };
