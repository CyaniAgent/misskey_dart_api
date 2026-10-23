// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../pagination/cursor_page.dart';
import '../generated/invite_models.dart';

/// High-level endpoints for the `invite` API group.
class InviteApi {
  /// Creates a high-level `invite` API facade.
  InviteApi(this.client);

  /// The shared client used for transport and authentication.
  final MisskeyClient client;

  /// invite/create
  ///
  /// Calls POST /api/invite/create.
  ///
  /// Authentication required.
  Future<InviteCode> create({CancelToken? cancelToken}) async {
    return client.raw.invite.create(cancelToken: cancelToken);
  }

  /// invite/delete
  ///
  /// Calls POST /api/invite/delete.
  ///
  /// Authentication required.
  Future<void> delete({
    required String inviteId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.invite.delete(
      InviteDeleteRequest(inviteId: inviteId),
      cancelToken: cancelToken,
    );
  }

  /// invite/limit
  ///
  /// Calls POST /api/invite/limit.
  ///
  /// Authentication required.
  Future<InviteLimitResponse> limit({CancelToken? cancelToken}) async {
    return client.raw.invite.limit(cancelToken: cancelToken);
  }

  /// invite/list
  ///
  /// Calls POST /api/invite/list.
  ///
  /// Authentication required.
  Future<List<InviteCode>> list({
    int limit = 30,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    CancelToken? cancelToken,
  }) async {
    return client.raw.invite.list(
      InviteListRequest(
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
  Future<CursorPage<InviteCode>> listPage({
    int limit = 20,
    String? untilId,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<InviteCode>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) =>
          list(limit: pageLimit, untilId: cursor, cancelToken: cancelToken),
    );
  }
}
