// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/generated/generated.dart';
import '../../models/json.dart';

part 'nonProductive_models.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NonProductiveTestRequest {
  const NonProductiveTestRequest({
    @JsonKey(name: 'required') required this.required_,
    this.string,
    @JsonKey(name: 'default') this.defaultValue = 'hello',
    this.nullableDefault = 'hello',
    this.id,
  });
  final bool required_;
  final String? string;
  final String defaultValue;
  final String? nullableDefault;
  final String? id;

  factory NonProductiveTestRequest.fromJson(Map<String, dynamic> json) =>
      _$NonProductiveTestRequestFromJson(json);

  Map<String, dynamic> toJson() => _$NonProductiveTestRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NonProductiveTestResponse {
  const NonProductiveTestResponse({
    this.id,
    @JsonKey(name: 'required') required this.required_,
    this.string,
    @JsonKey(name: 'default') this.defaultValue,
    this.nullableDefault = 'hello',
  });
  final String? id;
  final bool required_;
  final String? string;
  final String? defaultValue;
  final String? nullableDefault;

  factory NonProductiveTestResponse.fromJson(Map<String, dynamic> json) =>
      _$NonProductiveTestResponseFromJson(json);

  Map<String, dynamic> toJson() => _$NonProductiveTestResponseToJson(this);
}
