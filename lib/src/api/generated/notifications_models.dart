// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/generated/generated.dart';
import '../../models/json.dart';

part 'notifications_models.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotificationsCreateRequest {
  const NotificationsCreateRequest({
    required this.body,
    this.header,
    this.icon,
  });
  final String body;
  final String? header;
  final String? icon;

  factory NotificationsCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$NotificationsCreateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationsCreateRequestToJson(this);
}
