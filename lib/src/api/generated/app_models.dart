// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/generated/generated.dart';
import '../../models/json.dart';

part 'app_models.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AppCreateRequest {
  const AppCreateRequest({
    required this.name,
    required this.description,
    required this.permission,
    this.callbackUrl,
  });
  final String name;
  final String description;
  final List<String> permission;
  final String? callbackUrl;

  factory AppCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$AppCreateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AppCreateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AppShowValueRequest {
  const AppShowValueRequest({required this.appId});
  final String appId;

  factory AppShowValueRequest.fromJson(Map<String, dynamic> json) =>
      _$AppShowValueRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AppShowValueRequestToJson(this);
}
