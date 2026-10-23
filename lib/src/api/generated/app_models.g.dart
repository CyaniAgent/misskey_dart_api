// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppCreateRequest _$AppCreateRequestFromJson(Map<String, dynamic> json) =>
    AppCreateRequest(
      name: json['name'] as String,
      description: json['description'] as String,
      permission: (json['permission'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      callbackUrl: json['callbackUrl'] as String?,
    );

Map<String, dynamic> _$AppCreateRequestToJson(AppCreateRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'permission': instance.permission,
      'callbackUrl': ?instance.callbackUrl,
    };

AppShowValueRequest _$AppShowValueRequestFromJson(Map<String, dynamic> json) =>
    AppShowValueRequest(appId: json['appId'] as String);

Map<String, dynamic> _$AppShowValueRequestToJson(
  AppShowValueRequest instance,
) => <String, dynamic>{'appId': instance.appId};
