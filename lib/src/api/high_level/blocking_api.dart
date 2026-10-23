// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../pagination/cursor_page.dart';
import '../generated/blocking_models.dart';

/// High-level endpoints for the `blocking` API group.
class BlockingApi {
  /// Creates a high-level `blocking` API facade.
  BlockingApi(this.client);

  /// The shared client used for transport and authentication.
  final MisskeyClient client;

  /// blocking/create
  ///
  /// Calls POST /api/blocking/create.
  ///
  /// Authentication required.
  Future<UserDetailedNotMe> create({
    required String userId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.blocking.create(
      BlockingCreateRequest(userId: userId),
      cancelToken: cancelToken,
    );
  }

  /// blocking/delete
  ///
  /// Calls POST /api/blocking/delete.
  ///
  /// Authentication required.
  Future<UserDetailedNotMe> delete({
    required String userId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.blocking.delete(
      BlockingDeleteRequest(userId: userId),
      cancelToken: cancelToken,
    );
  }

  /// blocking/list
  ///
  /// Calls POST /api/blocking/list.
  ///
  /// Authentication required.
  Future<List<Blocking>> list({
    int limit = 30,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    CancelToken? cancelToken,
  }) async {
    return client.raw.blocking.list(
      BlockingListRequest(
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
  Future<CursorPage<Blocking>> listPage({
    int limit = 20,
    String? untilId,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<Blocking>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) =>
          list(limit: pageLimit, untilId: cursor, cancelToken: cancelToken),
    );
  }
}
