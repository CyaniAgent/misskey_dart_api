// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../pagination/cursor_page.dart';
import '../generated/reversi_models.dart';

/// High-level endpoints for the `reversi` API group.
class ReversiApi {
  /// Creates a high-level `reversi` API facade.
  ReversiApi(this.client);

  /// The shared client used for transport and authentication.
  final MisskeyClient client;

  /// reversi/cancel-match
  ///
  /// Calls POST /api/reversi/cancel-match.
  ///
  /// Authentication required.
  Future<void> cancelMatch({String? userId, CancelToken? cancelToken}) async {
    return client.raw.reversi.cancelMatch(
      ReversiCancelMatchRequest(userId: userId),
      cancelToken: cancelToken,
    );
  }

  /// reversi/games
  ///
  /// Calls POST /api/reversi/games.
  Future<List<ReversiGameLite>> games({
    int limit = 10,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    bool my = false,
    CancelToken? cancelToken,
  }) async {
    return client.raw.reversi.games(
      ReversiGamesRequest(
        limit: limit,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
        my: my,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [games].
  Future<CursorPage<ReversiGameLite>> gamesPage({
    int limit = 20,
    String? untilId,
    bool my = false,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<ReversiGameLite>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => games(
        limit: pageLimit,
        untilId: cursor,
        my: my,
        cancelToken: cancelToken,
      ),
    );
  }

  /// reversi/invitations
  ///
  /// Calls POST /api/reversi/invitations.
  ///
  /// Authentication required.
  Future<List<UserLite>> invitations({CancelToken? cancelToken}) async {
    return client.raw.reversi.invitations(cancelToken: cancelToken);
  }

  /// reversi/match
  ///
  /// Calls POST /api/reversi/match.
  ///
  /// Authentication required.
  Future<ReversiGameDetailed> match({
    String? userId,
    bool noIrregularRules = false,
    bool multiple = false,
    CancelToken? cancelToken,
  }) async {
    return client.raw.reversi.match(
      ReversiMatchRequest(
        userId: userId,
        noIrregularRules: noIrregularRules,
        multiple: multiple,
      ),
      cancelToken: cancelToken,
    );
  }

  /// reversi/show-game
  ///
  /// Calls POST /api/reversi/show-game.
  Future<ReversiGameDetailed> showGame({
    required String gameId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.reversi.showGame(
      ReversiShowGameRequest(gameId: gameId),
      cancelToken: cancelToken,
    );
  }

  /// reversi/surrender
  ///
  /// Calls POST /api/reversi/surrender.
  ///
  /// Authentication required.
  Future<void> surrender({
    required String gameId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.reversi.surrender(
      ReversiSurrenderRequest(gameId: gameId),
      cancelToken: cancelToken,
    );
  }

  /// reversi/verify
  ///
  /// Calls POST /api/reversi/verify.
  Future<ReversiVerifyResponse> verify({
    required String gameId,
    required String crc32,
    CancelToken? cancelToken,
  }) async {
    return client.raw.reversi.verify(
      ReversiVerifyRequest(gameId: gameId, crc32: crc32),
      cancelToken: cancelToken,
    );
  }
}
