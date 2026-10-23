// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/generated/generated.dart';
import '../../models/json.dart';

part 'mute_models.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MuteCreateRequest {
  const MuteCreateRequest({required this.userId, this.expiresAt});
  final String userId;
  final int? expiresAt;

  factory MuteCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$MuteCreateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$MuteCreateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MuteDeleteRequest {
  const MuteDeleteRequest({required this.userId});
  final String userId;

  factory MuteDeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$MuteDeleteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$MuteDeleteRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MuteListRequest {
  const MuteListRequest({
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

  factory MuteListRequest.fromJson(Map<String, dynamic> json) =>
      _$MuteListRequestFromJson(json);

  Map<String, dynamic> toJson() => _$MuteListRequestToJson(this);
}
