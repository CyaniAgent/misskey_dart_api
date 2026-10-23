// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/generated/generated.dart';
import '../../models/json.dart';

part 'emoji_models.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class EmojiGetRequest {
  const EmojiGetRequest({required this.name});
  final String name;

  factory EmojiGetRequest.fromJson(Map<String, dynamic> json) =>
      _$EmojiGetRequestFromJson(json);

  Map<String, dynamic> toJson() => _$EmojiGetRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class EmojiListResponse {
  const EmojiListResponse({required this.emojis});
  final List<EmojiSimple> emojis;

  factory EmojiListResponse.fromJson(Map<String, dynamic> json) =>
      _$EmojiListResponseFromJson(json);

  Map<String, dynamic> toJson() => _$EmojiListResponseToJson(this);
}
