// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nonProductive_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NonProductiveTestRequest _$NonProductiveTestRequestFromJson(
  Map<String, dynamic> json,
) => NonProductiveTestRequest(
  required_: json['required'] as bool,
  string: json['string'] as String?,
  defaultValue: json['default'] as String? ?? 'hello',
  nullableDefault: json['nullableDefault'] as String? ?? 'hello',
  id: json['id'] as String?,
);

Map<String, dynamic> _$NonProductiveTestRequestToJson(
  NonProductiveTestRequest instance,
) => <String, dynamic>{
  'required': instance.required_,
  'string': ?instance.string,
  'default': instance.defaultValue,
  'nullableDefault': ?instance.nullableDefault,
  'id': ?instance.id,
};

NonProductiveTestResponse _$NonProductiveTestResponseFromJson(
  Map<String, dynamic> json,
) => NonProductiveTestResponse(
  id: json['id'] as String?,
  required_: json['required'] as bool,
  string: json['string'] as String?,
  defaultValue: json['default'] as String?,
  nullableDefault: json['nullableDefault'] as String? ?? 'hello',
);

Map<String, dynamic> _$NonProductiveTestResponseToJson(
  NonProductiveTestResponse instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'required': instance.required_,
  'string': ?instance.string,
  'default': ?instance.defaultValue,
  'nullableDefault': ?instance.nullableDefault,
};
