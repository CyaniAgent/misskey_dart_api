// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../pagination/cursor_page.dart';
import '../generated/renoteMute_models.dart';

class RenoteMuteApi {
  RenoteMuteApi(this.client);

  final MisskeyClient client;

  /// renote-mute/create
  ///
  /// Calls POST /api/renote-mute/create.
  ///
  /// Authentication required.
  Future<void> create({
    required String userId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.renoteMute.create(
      RenoteMuteCreateRequest(userId: userId),
      cancelToken: cancelToken,
    );
  }

  /// renote-mute/delete
  ///
  /// Calls POST /api/renote-mute/delete.
  ///
  /// Authentication required.
  Future<void> delete({
    required String userId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.renoteMute.delete(
      RenoteMuteDeleteRequest(userId: userId),
      cancelToken: cancelToken,
    );
  }

  /// renote-mute/list
  ///
  /// Calls POST /api/renote-mute/list.
  ///
  /// Authentication required.
  Future<List<RenoteMuting>> list({
    int limit = 30,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    CancelToken? cancelToken,
  }) async {
    return client.raw.renoteMute.list(
      RenoteMuteListRequest(
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
  Future<CursorPage<RenoteMuting>> listPage({
    int limit = 20,
    String? untilId,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<RenoteMuting>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) =>
          list(limit: pageLimit, untilId: cursor, cancelToken: cancelToken),
    );
  }
}
