// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../config.dart';
import '../generated/bubbleGame_models.dart';

class BubbleGameApi {
  BubbleGameApi(this.client);

  final MisskeyClient client;

  /// bubble-game/ranking
  ///
  /// Calls POST /api/bubble-game/ranking.
  Future<List<BubbleGameRankingResponseItem>> ranking({
    required String gameMode,
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) async {
    return client.raw.bubbleGame.ranking(
      BubbleGameRankingRequest(gameMode: gameMode),
      httpMethod: httpMethod,
      cancelToken: cancelToken,
    );
  }

  /// bubble-game/register
  ///
  /// Calls POST /api/bubble-game/register.
  ///
  /// Authentication required.
  Future<void> register({
    required int score,
    required String seed,
    required List<List<num>> logs,
    required String gameMode,
    required int gameVersion,
    CancelToken? cancelToken,
  }) async {
    return client.raw.bubbleGame.register(
      BubbleGameRegisterRequest(
        score: score,
        seed: seed,
        logs: logs,
        gameMode: gameMode,
        gameVersion: gameVersion,
      ),
      cancelToken: cancelToken,
    );
  }
}
