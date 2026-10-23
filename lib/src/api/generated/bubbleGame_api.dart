// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../config.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'bubbleGame_models.dart';

class RawBubbleGameApi {
  RawBubbleGameApi(this.client);

  final MisskeyClient client;

  Future<List<BubbleGameRankingResponseItem>> ranking(
    BubbleGameRankingRequest request, {
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) {
    return client.postList<BubbleGameRankingResponseItem>(
      'bubble-game/ranking',
      body: request.toJson(),
      httpMethod: httpMethod,
      requiresAuth: false,
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
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }
}
