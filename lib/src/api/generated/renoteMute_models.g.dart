// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'renoteMute_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RenoteMuteCreateRequest _$RenoteMuteCreateRequestFromJson(
  Map<String, dynamic> json,
) => RenoteMuteCreateRequest(userId: json['userId'] as String);

Map<String, dynamic> _$RenoteMuteCreateRequestToJson(
  RenoteMuteCreateRequest instance,
) => <String, dynamic>{'userId': instance.userId};

RenoteMuteDeleteRequest _$RenoteMuteDeleteRequestFromJson(
  Map<String, dynamic> json,
) => RenoteMuteDeleteRequest(userId: json['userId'] as String);

Map<String, dynamic> _$RenoteMuteDeleteRequestToJson(
  RenoteMuteDeleteRequest instance,
) => <String, dynamic>{'userId': instance.userId};

RenoteMuteListRequest _$RenoteMuteListRequestFromJson(
  Map<String, dynamic> json,
) => RenoteMuteListRequest(
  limit: (json['limit'] as num?)?.toInt() ?? 30,
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
);

Map<String, dynamic> _$RenoteMuteListRequestToJson(
  RenoteMuteListRequest instance,
) => <String, dynamic>{
  'limit': instance.limit,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
};
