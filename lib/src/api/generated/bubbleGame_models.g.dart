// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bubbleGame_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BubbleGameRankingRequest _$BubbleGameRankingRequestFromJson(
  Map<String, dynamic> json,
) => BubbleGameRankingRequest(gameMode: json['gameMode'] as String);

Map<String, dynamic> _$BubbleGameRankingRequestToJson(
  BubbleGameRankingRequest instance,
) => <String, dynamic>{'gameMode': instance.gameMode};

BubbleGameRankingResponseItem _$BubbleGameRankingResponseItemFromJson(
  Map<String, dynamic> json,
) => BubbleGameRankingResponseItem(
  id: json['id'] as String,
  score: (json['score'] as num).toInt(),
  user: json['user'] == null
      ? null
      : UserLite.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$BubbleGameRankingResponseItemToJson(
  BubbleGameRankingResponseItem instance,
) => <String, dynamic>{
  'id': instance.id,
  'score': instance.score,
  'user': ?instance.user?.toJson(),
};

BubbleGameRegisterRequest _$BubbleGameRegisterRequestFromJson(
  Map<String, dynamic> json,
) => BubbleGameRegisterRequest(
  score: (json['score'] as num).toInt(),
  seed: json['seed'] as String,
  logs: (json['logs'] as List<dynamic>)
      .map((e) => (e as List<dynamic>).map((e) => e as num).toList())
      .toList(),
  gameMode: json['gameMode'] as String,
  gameVersion: (json['gameVersion'] as num).toInt(),
);

Map<String, dynamic> _$BubbleGameRegisterRequestToJson(
  BubbleGameRegisterRequest instance,
) => <String, dynamic>{
  'score': instance.score,
  'seed': instance.seed,
  'logs': instance.logs,
  'gameMode': instance.gameMode,
  'gameVersion': instance.gameVersion,
};
