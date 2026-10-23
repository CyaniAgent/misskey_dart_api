// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invite_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InviteDeleteRequest _$InviteDeleteRequestFromJson(Map<String, dynamic> json) =>
    InviteDeleteRequest(inviteId: json['inviteId'] as String);

Map<String, dynamic> _$InviteDeleteRequestToJson(
  InviteDeleteRequest instance,
) => <String, dynamic>{'inviteId': instance.inviteId};

InviteLimitResponse _$InviteLimitResponseFromJson(Map<String, dynamic> json) =>
    InviteLimitResponse(remaining: (json['remaining'] as num?)?.toInt());

Map<String, dynamic> _$InviteLimitResponseToJson(
  InviteLimitResponse instance,
) => <String, dynamic>{'remaining': instance.remaining};

InviteListRequest _$InviteListRequestFromJson(Map<String, dynamic> json) =>
    InviteListRequest(
      limit: (json['limit'] as num?)?.toInt() ?? 30,
      sinceId: json['sinceId'] as String?,
      untilId: json['untilId'] as String?,
      sinceDate: (json['sinceDate'] as num?)?.toInt(),
      untilDate: (json['untilDate'] as num?)?.toInt(),
    );

Map<String, dynamic> _$InviteListRequestToJson(InviteListRequest instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'sinceId': ?instance.sinceId,
      'untilId': ?instance.untilId,
      'sinceDate': ?instance.sinceDate,
      'untilDate': ?instance.untilDate,
    };
