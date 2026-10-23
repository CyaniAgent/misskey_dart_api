// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../config.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'federation_models.dart';

/// Raw generated endpoints for the `federation` API group.
class RawFederationApi {
  /// Creates a raw `federation` API facade.
  RawFederationApi(this.client);

  /// The shared client used for transport and authentication.
  final MisskeyClient client;

  /// ap/get
  ///
  /// Calls POST /api/ap/get.
  ///
  /// Authentication required.
  Future<JsonMap> apGet(
    FederationApGetRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postMap(
      'ap/get',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// ap/show
  ///
  /// Calls POST /api/ap/show.
  ///
  /// Authentication required.
  Future<FederationApShowResponse> apShow(
    FederationApShowRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<FederationApShowResponse>(
      'ap/show',
      body: request.toJson(),
      requiresAuth: true,
      parser: FederationApShowResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// federation/followers
  ///
  /// Calls POST /api/federation/followers.
  Future<List<Following>> followers(
    FederationFollowersRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Following>(
      'federation/followers',
      body: request.toJson(),
      requiresAuth: false,
      itemParser: Following.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// federation/following
  ///
  /// Calls POST /api/federation/following.
  Future<List<Following>> following(
    FederationFollowingRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Following>(
      'federation/following',
      body: request.toJson(),
      requiresAuth: false,
      itemParser: Following.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// federation/instances
  ///
  /// Calls POST /api/federation/instances.
  Future<List<FederationInstance>> instances(
    FederationInstancesRequest request, {
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) {
    return client.postList<FederationInstance>(
      'federation/instances',
      body: request.toJson(),
      httpMethod: httpMethod,
      requiresAuth: false,
      itemParser: FederationInstance.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// federation/show-instance
  ///
  /// Calls POST /api/federation/show-instance.
  Future<FederationInstance?> showInstance(
    FederationShowInstanceRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postNullableModel<FederationInstance>(
      'federation/show-instance',
      body: request.toJson(),
      requiresAuth: false,
      parser: FederationInstance.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// federation/stats
  ///
  /// Calls POST /api/federation/stats.
  Future<FederationStatsResponse> stats(
    FederationStatsRequest request, {
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) {
    return client.postModel<FederationStatsResponse>(
      'federation/stats',
      body: request.toJson(),
      httpMethod: httpMethod,
      requiresAuth: false,
      parser: FederationStatsResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// federation/update-remote-user
  ///
  /// Calls POST /api/federation/update-remote-user.
  Future<void> updateRemoteUser(
    FederationUpdateRemoteUserRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'federation/update-remote-user',
      body: request.toJson(),
      requiresAuth: false,
      cancelToken: cancelToken,
    );
  }

  /// federation/users
  ///
  /// Calls POST /api/federation/users.
  Future<List<UserDetailedNotMe>> users(
    FederationUsersRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<UserDetailedNotMe>(
      'federation/users',
      body: request.toJson(),
      requiresAuth: false,
      itemParser: UserDetailedNotMe.fromJson,
      cancelToken: cancelToken,
    );
  }
}
