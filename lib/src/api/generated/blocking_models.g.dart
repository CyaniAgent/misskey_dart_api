// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blocking_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BlockingCreateRequest _$BlockingCreateRequestFromJson(
  Map<String, dynamic> json,
) => BlockingCreateRequest(userId: json['userId'] as String);

Map<String, dynamic> _$BlockingCreateRequestToJson(
  BlockingCreateRequest instance,
) => <String, dynamic>{'userId': instance.userId};

BlockingDeleteRequest _$BlockingDeleteRequestFromJson(
  Map<String, dynamic> json,
) => BlockingDeleteRequest(userId: json['userId'] as String);

Map<String, dynamic> _$BlockingDeleteRequestToJson(
  BlockingDeleteRequest instance,
) => <String, dynamic>{'userId': instance.userId};

BlockingListRequest _$BlockingListRequestFromJson(Map<String, dynamic> json) =>
    BlockingListRequest(
      limit: (json['limit'] as num?)?.toInt() ?? 30,
      sinceId: json['sinceId'] as String?,
      untilId: json['untilId'] as String?,
      sinceDate: (json['sinceDate'] as num?)?.toInt(),
      untilDate: (json['untilDate'] as num?)?.toInt(),
    );

Map<String, dynamic> _$BlockingListRequestToJson(
  BlockingListRequest instance,
) => <String, dynamic>{
  'limit': instance.limit,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
};
