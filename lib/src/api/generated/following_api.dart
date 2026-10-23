// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'following_models.dart';

/// Raw generated endpoints for the `following` API group.
class RawFollowingApi {
  /// Creates a raw `following` API facade.
  RawFollowingApi(this.client);

  /// The shared client used for transport and authentication.
  final MisskeyClient client;

  /// following/create
  ///
  /// Calls POST /api/following/create.
  ///
  /// Authentication required.
  Future<UserLite> create(
    FollowingCreateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<UserLite>(
      'following/create',
      body: request.toJson(),
      requiresAuth: true,
      parser: UserLite.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// following/delete
  ///
  /// Calls POST /api/following/delete.
  ///
  /// Authentication required.
  Future<UserLite> delete(
    FollowingDeleteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<UserLite>(
      'following/delete',
      body: request.toJson(),
      requiresAuth: true,
      parser: UserLite.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// following/invalidate
  ///
  /// Calls POST /api/following/invalidate.
  ///
  /// Authentication required.
  Future<UserLite> invalidate(
    FollowingInvalidateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<UserLite>(
      'following/invalidate',
      body: request.toJson(),
      requiresAuth: true,
      parser: UserLite.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// following/list
  ///
  /// Calls POST /api/following/list.
  ///
  /// Authentication required.
  Future<List<Following>> list(
    FollowingListRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Following>(
      'following/list',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: Following.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// following/requests/accept
  ///
  /// Calls POST /api/following/requests/accept.
  ///
  /// Authentication required.
  Future<void> requestsAccept(
    FollowingRequestsAcceptRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'following/requests/accept',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// following/requests/cancel
  ///
  /// Calls POST /api/following/requests/cancel.
  ///
  /// Authentication required.
  Future<UserLite> requestsCancel(
    FollowingRequestsCancelRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<UserLite>(
      'following/requests/cancel',
      body: request.toJson(),
      requiresAuth: true,
      parser: UserLite.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// following/requests/list
  ///
  /// Calls POST /api/following/requests/list.
  ///
  /// Authentication required.
  Future<List<FollowingRequestsListResponseItem>> requestsList(
    FollowingRequestsListRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<FollowingRequestsListResponseItem>(
      'following/requests/list',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: FollowingRequestsListResponseItem.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// following/requests/reject
  ///
  /// Calls POST /api/following/requests/reject.
  ///
  /// Authentication required.
  Future<void> requestsReject(
    FollowingRequestsRejectRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'following/requests/reject',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// following/requests/sent
  ///
  /// Calls POST /api/following/requests/sent.
  ///
  /// Authentication required.
  Future<List<FollowingRequestsSentResponseItem>> requestsSent(
    FollowingRequestsSentRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<FollowingRequestsSentResponseItem>(
      'following/requests/sent',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: FollowingRequestsSentResponseItem.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// following/update
  ///
  /// Calls POST /api/following/update.
  ///
  /// Authentication required.
  Future<UserLite> update(
    FollowingUpdateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<UserLite>(
      'following/update',
      body: request.toJson(),
      requiresAuth: true,
      parser: UserLite.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// following/update-all
  ///
  /// Calls POST /api/following/update-all.
  ///
  /// Authentication required.
  Future<void> updateAll(
    FollowingUpdateAllRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'following/update-all',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }
}
