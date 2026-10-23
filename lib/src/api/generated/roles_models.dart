// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/generated/generated.dart';
import '../../models/json.dart';

part 'roles_models.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class RolesNotesRequest {
  const RolesNotesRequest({
    required this.roleId,
    this.limit = 10,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
  });
  final String roleId;
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;

  factory RolesNotesRequest.fromJson(Map<String, dynamic> json) =>
      _$RolesNotesRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RolesNotesRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class RolesShowValueRequest {
  const RolesShowValueRequest({required this.roleId});
  final String roleId;

  factory RolesShowValueRequest.fromJson(Map<String, dynamic> json) =>
      _$RolesShowValueRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RolesShowValueRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class RolesUsersRequest {
  const RolesUsersRequest({
    required this.roleId,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    this.limit = 10,
  });
  final String roleId;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final int limit;

  factory RolesUsersRequest.fromJson(Map<String, dynamic> json) =>
      _$RolesUsersRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RolesUsersRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class RolesUsersResponseItem {
  const RolesUsersResponseItem({required this.id, required this.user});
  final String id;
  final UserDetailed user;

  factory RolesUsersResponseItem.fromJson(Map<String, dynamic> json) =>
      _$RolesUsersResponseItemFromJson(json);

  Map<String, dynamic> toJson() => _$RolesUsersResponseItemToJson(this);
}
