// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/generated/generated.dart';
import '../../models/json.dart';

part 'invite_models.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class InviteDeleteRequest {
  const InviteDeleteRequest({required this.inviteId});
  final String inviteId;

  factory InviteDeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$InviteDeleteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$InviteDeleteRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class InviteLimitResponse {
  const InviteLimitResponse({
    @JsonKey(name: 'remaining', includeIfNull: true) required this.remaining,
  });
  final int? remaining;

  factory InviteLimitResponse.fromJson(Map<String, dynamic> json) =>
      _$InviteLimitResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InviteLimitResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class InviteListRequest {
  const InviteListRequest({
    this.limit = 30,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
  });
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;

  factory InviteListRequest.fromJson(Map<String, dynamic> json) =>
      _$InviteListRequestFromJson(json);

  Map<String, dynamic> toJson() => _$InviteListRequestToJson(this);
}
