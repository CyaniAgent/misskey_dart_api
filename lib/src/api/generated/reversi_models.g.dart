// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reversi_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReversiCancelMatchRequest _$ReversiCancelMatchRequestFromJson(
  Map<String, dynamic> json,
) => ReversiCancelMatchRequest(userId: json['userId'] as String?);

Map<String, dynamic> _$ReversiCancelMatchRequestToJson(
  ReversiCancelMatchRequest instance,
) => <String, dynamic>{'userId': ?instance.userId};

ReversiGamesRequest _$ReversiGamesRequestFromJson(Map<String, dynamic> json) =>
    ReversiGamesRequest(
      limit: (json['limit'] as num?)?.toInt() ?? 10,
      sinceId: json['sinceId'] as String?,
      untilId: json['untilId'] as String?,
      sinceDate: (json['sinceDate'] as num?)?.toInt(),
      untilDate: (json['untilDate'] as num?)?.toInt(),
      my: json['my'] as bool? ?? false,
    );

Map<String, dynamic> _$ReversiGamesRequestToJson(
  ReversiGamesRequest instance,
) => <String, dynamic>{
  'limit': instance.limit,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
  'my': instance.my,
};

ReversiMatchRequest _$ReversiMatchRequestFromJson(Map<String, dynamic> json) =>
    ReversiMatchRequest(
      userId: json['userId'] as String?,
      noIrregularRules: json['noIrregularRules'] as bool? ?? false,
      multiple: json['multiple'] as bool? ?? false,
    );

Map<String, dynamic> _$ReversiMatchRequestToJson(
  ReversiMatchRequest instance,
) => <String, dynamic>{
  'userId': ?instance.userId,
  'noIrregularRules': instance.noIrregularRules,
  'multiple': instance.multiple,
};

ReversiShowGameRequest _$ReversiShowGameRequestFromJson(
  Map<String, dynamic> json,
) => ReversiShowGameRequest(gameId: json['gameId'] as String);

Map<String, dynamic> _$ReversiShowGameRequestToJson(
  ReversiShowGameRequest instance,
) => <String, dynamic>{'gameId': instance.gameId};

ReversiSurrenderRequest _$ReversiSurrenderRequestFromJson(
  Map<String, dynamic> json,
) => ReversiSurrenderRequest(gameId: json['gameId'] as String);

Map<String, dynamic> _$ReversiSurrenderRequestToJson(
  ReversiSurrenderRequest instance,
) => <String, dynamic>{'gameId': instance.gameId};

ReversiVerifyRequest _$ReversiVerifyRequestFromJson(
  Map<String, dynamic> json,
) => ReversiVerifyRequest(
  gameId: json['gameId'] as String,
  crc32: json['crc32'] as String,
);

Map<String, dynamic> _$ReversiVerifyRequestToJson(
  ReversiVerifyRequest instance,
) => <String, dynamic>{'gameId': instance.gameId, 'crc32': instance.crc32};

ReversiVerifyResponse _$ReversiVerifyResponseFromJson(
  Map<String, dynamic> json,
) => ReversiVerifyResponse(
  desynced: json['desynced'] as bool,
  game: json['game'] == null
      ? null
      : ReversiGameDetailed.fromJson(json['game'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ReversiVerifyResponseToJson(
  ReversiVerifyResponse instance,
) => <String, dynamic>{
  'desynced': instance.desynced,
  'game': ?instance.game?.toJson(),
};
