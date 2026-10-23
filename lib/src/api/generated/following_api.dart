// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'following_models.dart';

class RawFollowingApi {
  RawFollowingApi(this.client);

  final MisskeyClient client;

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
