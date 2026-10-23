// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../pagination/cursor_page.dart';
import '../generated/following_models.dart';

/// High-level endpoints for the `following` API group.
class FollowingApi {
  /// Creates a high-level `following` API facade.
  FollowingApi(this.client);

  /// The shared client used for transport and authentication.
  final MisskeyClient client;

  /// following/create
  ///
  /// Calls POST /api/following/create.
  ///
  /// Authentication required.
  Future<UserLite> create({
    required String userId,
    bool? withReplies,
    CancelToken? cancelToken,
  }) async {
    return client.raw.following.create(
      FollowingCreateRequest(userId: userId, withReplies: withReplies),
      cancelToken: cancelToken,
    );
  }

  /// following/delete
  ///
  /// Calls POST /api/following/delete.
  ///
  /// Authentication required.
  Future<UserLite> delete({
    required String userId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.following.delete(
      FollowingDeleteRequest(userId: userId),
      cancelToken: cancelToken,
    );
  }

  /// following/invalidate
  ///
  /// Calls POST /api/following/invalidate.
  ///
  /// Authentication required.
  Future<UserLite> invalidate({
    required String userId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.following.invalidate(
      FollowingInvalidateRequest(userId: userId),
      cancelToken: cancelToken,
    );
  }

  /// following/list
  ///
  /// Calls POST /api/following/list.
  ///
  /// Authentication required.
  Future<List<Following>> list({
    bool notification = false,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    int limit = 10,
    CancelToken? cancelToken,
  }) async {
    return client.raw.following.list(
      FollowingListRequest(
        notification: notification,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
        limit: limit,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [list].
  Future<CursorPage<Following>> listPage({
    int limit = 20,
    String? untilId,
    bool notification = false,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<Following>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => list(
        limit: pageLimit,
        untilId: cursor,
        notification: notification,
        cancelToken: cancelToken,
      ),
    );
  }

  /// following/requests/accept
  ///
  /// Calls POST /api/following/requests/accept.
  ///
  /// Authentication required.
  Future<void> requestsAccept({
    required String userId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.following.requestsAccept(
      FollowingRequestsAcceptRequest(userId: userId),
      cancelToken: cancelToken,
    );
  }

  /// following/requests/cancel
  ///
  /// Calls POST /api/following/requests/cancel.
  ///
  /// Authentication required.
  Future<UserLite> requestsCancel({
    required String userId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.following.requestsCancel(
      FollowingRequestsCancelRequest(userId: userId),
      cancelToken: cancelToken,
    );
  }

  /// following/requests/list
  ///
  /// Calls POST /api/following/requests/list.
  ///
  /// Authentication required.
  Future<List<FollowingRequestsListResponseItem>> requestsList({
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    int limit = 10,
    CancelToken? cancelToken,
  }) async {
    return client.raw.following.requestsList(
      FollowingRequestsListRequest(
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
        limit: limit,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [requestsList].
  Future<CursorPage<FollowingRequestsListResponseItem>> requestsListPage({
    int limit = 20,
    String? untilId,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<FollowingRequestsListResponseItem>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => requestsList(
        limit: pageLimit,
        untilId: cursor,
        cancelToken: cancelToken,
      ),
    );
  }

  /// following/requests/reject
  ///
  /// Calls POST /api/following/requests/reject.
  ///
  /// Authentication required.
  Future<void> requestsReject({
    required String userId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.following.requestsReject(
      FollowingRequestsRejectRequest(userId: userId),
      cancelToken: cancelToken,
    );
  }

  /// following/requests/sent
  ///
  /// Calls POST /api/following/requests/sent.
  ///
  /// Authentication required.
  Future<List<FollowingRequestsSentResponseItem>> requestsSent({
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    int limit = 10,
    CancelToken? cancelToken,
  }) async {
    return client.raw.following.requestsSent(
      FollowingRequestsSentRequest(
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
        limit: limit,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [requestsSent].
  Future<CursorPage<FollowingRequestsSentResponseItem>> requestsSentPage({
    int limit = 20,
    String? untilId,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<FollowingRequestsSentResponseItem>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => requestsSent(
        limit: pageLimit,
        untilId: cursor,
        cancelToken: cancelToken,
      ),
    );
  }

  /// following/update
  ///
  /// Calls POST /api/following/update.
  ///
  /// Authentication required.
  Future<UserLite> update({
    required String userId,
    UserNotify? notify,
    bool? withReplies,
    CancelToken? cancelToken,
  }) async {
    return client.raw.following.update(
      FollowingUpdateRequest(
        userId: userId,
        notify: notify,
        withReplies: withReplies,
      ),
      cancelToken: cancelToken,
    );
  }

  /// following/update-all
  ///
  /// Calls POST /api/following/update-all.
  ///
  /// Authentication required.
  Future<void> updateAll({
    UserNotify? notify,
    bool? withReplies,
    CancelToken? cancelToken,
  }) async {
    return client.raw.following.updateAll(
      FollowingUpdateAllRequest(notify: notify, withReplies: withReplies),
      cancelToken: cancelToken,
    );
  }
}
