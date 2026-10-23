// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'roles_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RolesNotesRequest _$RolesNotesRequestFromJson(Map<String, dynamic> json) =>
    RolesNotesRequest(
      roleId: json['roleId'] as String,
      limit: (json['limit'] as num?)?.toInt() ?? 10,
      sinceId: json['sinceId'] as String?,
      untilId: json['untilId'] as String?,
      sinceDate: (json['sinceDate'] as num?)?.toInt(),
      untilDate: (json['untilDate'] as num?)?.toInt(),
    );

Map<String, dynamic> _$RolesNotesRequestToJson(RolesNotesRequest instance) =>
    <String, dynamic>{
      'roleId': instance.roleId,
      'limit': instance.limit,
      'sinceId': ?instance.sinceId,
      'untilId': ?instance.untilId,
      'sinceDate': ?instance.sinceDate,
      'untilDate': ?instance.untilDate,
    };

RolesShowValueRequest _$RolesShowValueRequestFromJson(
  Map<String, dynamic> json,
) => RolesShowValueRequest(roleId: json['roleId'] as String);

Map<String, dynamic> _$RolesShowValueRequestToJson(
  RolesShowValueRequest instance,
) => <String, dynamic>{'roleId': instance.roleId};

RolesUsersRequest _$RolesUsersRequestFromJson(Map<String, dynamic> json) =>
    RolesUsersRequest(
      roleId: json['roleId'] as String,
      sinceId: json['sinceId'] as String?,
      untilId: json['untilId'] as String?,
      sinceDate: (json['sinceDate'] as num?)?.toInt(),
      untilDate: (json['untilDate'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt() ?? 10,
    );

Map<String, dynamic> _$RolesUsersRequestToJson(RolesUsersRequest instance) =>
    <String, dynamic>{
      'roleId': instance.roleId,
      'sinceId': ?instance.sinceId,
      'untilId': ?instance.untilId,
      'sinceDate': ?instance.sinceDate,
      'untilDate': ?instance.untilDate,
      'limit': instance.limit,
    };

RolesUsersResponseItem _$RolesUsersResponseItemFromJson(
  Map<String, dynamic> json,
) => RolesUsersResponseItem(
  id: json['id'] as String,
  user: UserDetailed.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$RolesUsersResponseItemToJson(
  RolesUsersResponseItem instance,
) => <String, dynamic>{'id': instance.id, 'user': instance.user.toJson()};
