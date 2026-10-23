// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'bubbleGame_models.dart';

class BubbleGameApi {
  BubbleGameApi(this.client);

  final MisskeyClient client;

  Future<List<BubbleGameRankingResponseItem>> ranking(
    BubbleGameRankingRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<BubbleGameRankingResponseItem>(
      'bubble-game/ranking',
      body: request.toJson(),
      itemParser: BubbleGameRankingResponseItem.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<void> register(
    BubbleGameRegisterRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'bubble-game/register',
      body: request.toJson(),
      cancelToken: cancelToken,
    );
  }
}
