// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'reversi_models.dart';

/// Raw generated endpoints for the `reversi` API group.
class RawReversiApi {
  /// Creates a raw `reversi` API facade.
  RawReversiApi(this.client);

  /// The shared client used for transport and authentication.
  final MisskeyClient client;

  /// reversi/cancel-match
  ///
  /// Calls POST /api/reversi/cancel-match.
  ///
  /// Authentication required.
  Future<void> cancelMatch(
    ReversiCancelMatchRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'reversi/cancel-match',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// reversi/games
  ///
  /// Calls POST /api/reversi/games.
  Future<List<ReversiGameLite>> games(
    ReversiGamesRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<ReversiGameLite>(
      'reversi/games',
      body: request.toJson(),
      requiresAuth: false,
      itemParser: ReversiGameLite.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// reversi/invitations
  ///
  /// Calls POST /api/reversi/invitations.
  ///
  /// Authentication required.
  Future<List<UserLite>> invitations({CancelToken? cancelToken}) {
    return client.postList<UserLite>(
      'reversi/invitations',
      requiresAuth: true,
      itemParser: UserLite.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// reversi/match
  ///
  /// Calls POST /api/reversi/match.
  ///
  /// Authentication required.
  Future<ReversiGameDetailed> match(
    ReversiMatchRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<ReversiGameDetailed>(
      'reversi/match',
      body: request.toJson(),
      requiresAuth: true,
      parser: ReversiGameDetailed.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// reversi/show-game
  ///
  /// Calls POST /api/reversi/show-game.
  Future<ReversiGameDetailed> showGame(
    ReversiShowGameRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<ReversiGameDetailed>(
      'reversi/show-game',
      body: request.toJson(),
      requiresAuth: false,
      parser: ReversiGameDetailed.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// reversi/surrender
  ///
  /// Calls POST /api/reversi/surrender.
  ///
  /// Authentication required.
  Future<void> surrender(
    ReversiSurrenderRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'reversi/surrender',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// reversi/verify
  ///
  /// Calls POST /api/reversi/verify.
  Future<ReversiVerifyResponse> verify(
    ReversiVerifyRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<ReversiVerifyResponse>(
      'reversi/verify',
      body: request.toJson(),
      requiresAuth: false,
      parser: ReversiVerifyResponse.fromJson,
      cancelToken: cancelToken,
    );
  }
}
