// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../pagination/cursor_page.dart';
import '../generated/mute_models.dart';

class MuteApi {
  MuteApi(this.client);

  final MisskeyClient client;

  /// mute/create
  ///
  /// Calls POST /api/mute/create.
  ///
  /// Authentication required.
  Future<void> create({
    required String userId,
    int? expiresAt,
    CancelToken? cancelToken,
  }) async {
    return client.raw.mute.create(
      MuteCreateRequest(userId: userId, expiresAt: expiresAt),
      cancelToken: cancelToken,
    );
  }

  /// mute/delete
  ///
  /// Calls POST /api/mute/delete.
  ///
  /// Authentication required.
  Future<void> delete({
    required String userId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.mute.delete(
      MuteDeleteRequest(userId: userId),
      cancelToken: cancelToken,
    );
  }

  /// mute/list
  ///
  /// Calls POST /api/mute/list.
  ///
  /// Authentication required.
  Future<List<Muting>> list({
    int limit = 30,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    CancelToken? cancelToken,
  }) async {
    return client.raw.mute.list(
      MuteListRequest(
        limit: limit,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [list].
  Future<CursorPage<Muting>> listPage({
    int limit = 20,
    String? untilId,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<Muting>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) =>
          list(limit: pageLimit, untilId: cursor, cancelToken: cancelToken),
    );
  }
}
