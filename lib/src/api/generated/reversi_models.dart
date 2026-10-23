// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/generated/generated.dart';
import '../../models/json.dart';

part 'reversi_models.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ReversiCancelMatchRequest {
  const ReversiCancelMatchRequest({this.userId});
  final String? userId;

  factory ReversiCancelMatchRequest.fromJson(Map<String, dynamic> json) =>
      _$ReversiCancelMatchRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ReversiCancelMatchRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ReversiGamesRequest {
  const ReversiGamesRequest({
    this.limit = 10,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    this.my = false,
  });
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final bool my;

  factory ReversiGamesRequest.fromJson(Map<String, dynamic> json) =>
      _$ReversiGamesRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ReversiGamesRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ReversiMatchRequest {
  const ReversiMatchRequest({
    this.userId,
    this.noIrregularRules = false,
    this.multiple = false,
  });
  final String? userId;
  final bool noIrregularRules;
  final bool multiple;

  factory ReversiMatchRequest.fromJson(Map<String, dynamic> json) =>
      _$ReversiMatchRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ReversiMatchRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ReversiShowGameRequest {
  const ReversiShowGameRequest({required this.gameId});
  final String gameId;

  factory ReversiShowGameRequest.fromJson(Map<String, dynamic> json) =>
      _$ReversiShowGameRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ReversiShowGameRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ReversiSurrenderRequest {
  const ReversiSurrenderRequest({required this.gameId});
  final String gameId;

  factory ReversiSurrenderRequest.fromJson(Map<String, dynamic> json) =>
      _$ReversiSurrenderRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ReversiSurrenderRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ReversiVerifyRequest {
  const ReversiVerifyRequest({required this.gameId, required this.crc32});
  final String gameId;
  final String crc32;

  factory ReversiVerifyRequest.fromJson(Map<String, dynamic> json) =>
      _$ReversiVerifyRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ReversiVerifyRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ReversiVerifyResponse {
  const ReversiVerifyResponse({required this.desynced, this.game});
  final bool desynced;
  final ReversiGameDetailed? game;

  factory ReversiVerifyResponse.fromJson(Map<String, dynamic> json) =>
      _$ReversiVerifyResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ReversiVerifyResponseToJson(this);
}
