// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationsCreateRequest _$NotificationsCreateRequestFromJson(
  Map<String, dynamic> json,
) => NotificationsCreateRequest(
  body: json['body'] as String,
  header: json['header'] as String?,
  icon: json['icon'] as String?,
);

Map<String, dynamic> _$NotificationsCreateRequestToJson(
  NotificationsCreateRequest instance,
) => <String, dynamic>{
  'body': instance.body,
  'header': ?instance.header,
  'icon': ?instance.icon,
};
