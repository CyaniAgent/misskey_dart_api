// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'reversi_models.dart';

class ReversiApi {
  ReversiApi(this.client);

  final MisskeyClient client;

  Future<void> cancelMatch(
    ReversiCancelMatchRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'reversi/cancel-match',
      body: request.toJson(),
      cancelToken: cancelToken,
    );
  }

  Future<List<ReversiGameLite>> games(
    ReversiGamesRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<ReversiGameLite>(
      'reversi/games',
      body: request.toJson(),
      itemParser: ReversiGameLite.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<UserLite>> invitations({CancelToken? cancelToken}) {
    return client.postList<UserLite>(
      'reversi/invitations',
      itemParser: UserLite.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<ReversiGameDetailed> match(
    ReversiMatchRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<ReversiGameDetailed>(
      'reversi/match',
      body: request.toJson(),
      parser: ReversiGameDetailed.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<ReversiGameDetailed> showGame(
    ReversiShowGameRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<ReversiGameDetailed>(
      'reversi/show-game',
      body: request.toJson(),
      parser: ReversiGameDetailed.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<void> surrender(
    ReversiSurrenderRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'reversi/surrender',
      body: request.toJson(),
      cancelToken: cancelToken,
    );
  }

  Future<ReversiVerifyResponse> verify(
    ReversiVerifyRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<ReversiVerifyResponse>(
      'reversi/verify',
      body: request.toJson(),
      parser: ReversiVerifyResponse.fromJson,
      cancelToken: cancelToken,
    );
  }
}
