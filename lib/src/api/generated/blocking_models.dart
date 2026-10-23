// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/generated/generated.dart';
import '../../models/json.dart';

part 'blocking_models.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class BlockingCreateRequest {
  const BlockingCreateRequest({required this.userId});
  final String userId;

  factory BlockingCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$BlockingCreateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$BlockingCreateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class BlockingDeleteRequest {
  const BlockingDeleteRequest({required this.userId});
  final String userId;

  factory BlockingDeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$BlockingDeleteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$BlockingDeleteRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class BlockingListRequest {
  const BlockingListRequest({
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

  factory BlockingListRequest.fromJson(Map<String, dynamic> json) =>
      _$BlockingListRequestFromJson(json);

  Map<String, dynamic> toJson() => _$BlockingListRequestToJson(this);
}
