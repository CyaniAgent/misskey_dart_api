// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/generated/generated.dart';
import '../../models/json.dart';

part 'announcements_models.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AnnouncementsListRequest {
  const AnnouncementsListRequest({
    this.limit = 10,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    this.isActive = true,
  });
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final bool isActive;

  factory AnnouncementsListRequest.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementsListRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AnnouncementsListRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AnnouncementsShowValueRequest {
  const AnnouncementsShowValueRequest({required this.announcementId});
  final String announcementId;

  factory AnnouncementsShowValueRequest.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementsShowValueRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AnnouncementsShowValueRequestToJson(this);
}
