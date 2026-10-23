// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/generated/generated.dart';
import '../../models/json.dart';

part 'bubbleGame_models.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class BubbleGameRankingRequest {
  const BubbleGameRankingRequest({required this.gameMode});
  final String gameMode;

  factory BubbleGameRankingRequest.fromJson(Map<String, dynamic> json) =>
      _$BubbleGameRankingRequestFromJson(json);

  Map<String, dynamic> toJson() => _$BubbleGameRankingRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class BubbleGameRankingResponseItem {
  const BubbleGameRankingResponseItem({
    required this.id,
    required this.score,
    this.user,
  });
  final String id;
  final int score;
  final UserLite? user;

  factory BubbleGameRankingResponseItem.fromJson(Map<String, dynamic> json) =>
      _$BubbleGameRankingResponseItemFromJson(json);

  Map<String, dynamic> toJson() => _$BubbleGameRankingResponseItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class BubbleGameRegisterRequest {
  const BubbleGameRegisterRequest({
    required this.score,
    required this.seed,
    required this.logs,
    required this.gameMode,
    required this.gameVersion,
  });
  final int score;
  final String seed;
  final List<List<num>> logs;
  final String gameMode;
  final int gameVersion;

  factory BubbleGameRegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$BubbleGameRegisterRequestFromJson(json);

  Map<String, dynamic> toJson() => _$BubbleGameRegisterRequestToJson(this);
}
