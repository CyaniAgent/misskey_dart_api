// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/generated/generated.dart';
import '../../models/json.dart';

part 'renoteMute_models.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class RenoteMuteCreateRequest {
  const RenoteMuteCreateRequest({required this.userId});
  final String userId;

  factory RenoteMuteCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$RenoteMuteCreateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RenoteMuteCreateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class RenoteMuteDeleteRequest {
  const RenoteMuteDeleteRequest({required this.userId});
  final String userId;

  factory RenoteMuteDeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$RenoteMuteDeleteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RenoteMuteDeleteRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class RenoteMuteListRequest {
  const RenoteMuteListRequest({
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

  factory RenoteMuteListRequest.fromJson(Map<String, dynamic> json) =>
      _$RenoteMuteListRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RenoteMuteListRequestToJson(this);
}
