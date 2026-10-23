// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcements_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnnouncementsListRequest _$AnnouncementsListRequestFromJson(
  Map<String, dynamic> json,
) => AnnouncementsListRequest(
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
  isActive: json['isActive'] as bool? ?? true,
);

Map<String, dynamic> _$AnnouncementsListRequestToJson(
  AnnouncementsListRequest instance,
) => <String, dynamic>{
  'limit': instance.limit,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
  'isActive': instance.isActive,
};

AnnouncementsShowValueRequest _$AnnouncementsShowValueRequestFromJson(
  Map<String, dynamic> json,
) => AnnouncementsShowValueRequest(
  announcementId: json['announcementId'] as String,
);

Map<String, dynamic> _$AnnouncementsShowValueRequestToJson(
  AnnouncementsShowValueRequest instance,
) => <String, dynamic>{'announcementId': instance.announcementId};
