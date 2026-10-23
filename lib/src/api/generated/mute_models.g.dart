// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mute_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MuteCreateRequest _$MuteCreateRequestFromJson(Map<String, dynamic> json) =>
    MuteCreateRequest(
      userId: json['userId'] as String,
      expiresAt: (json['expiresAt'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MuteCreateRequestToJson(MuteCreateRequest instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'expiresAt': ?instance.expiresAt,
    };

MuteDeleteRequest _$MuteDeleteRequestFromJson(Map<String, dynamic> json) =>
    MuteDeleteRequest(userId: json['userId'] as String);

Map<String, dynamic> _$MuteDeleteRequestToJson(MuteDeleteRequest instance) =>
    <String, dynamic>{'userId': instance.userId};

MuteListRequest _$MuteListRequestFromJson(Map<String, dynamic> json) =>
    MuteListRequest(
      limit: (json['limit'] as num?)?.toInt() ?? 30,
      sinceId: json['sinceId'] as String?,
      untilId: json['untilId'] as String?,
      sinceDate: (json['sinceDate'] as num?)?.toInt(),
      untilDate: (json['untilDate'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MuteListRequestToJson(MuteListRequest instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'sinceId': ?instance.sinceId,
      'untilId': ?instance.untilId,
      'sinceDate': ?instance.sinceDate,
      'untilDate': ?instance.untilDate,
    };
