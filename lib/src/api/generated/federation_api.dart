// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../config.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'federation_models.dart';

class RawFederationApi {
  RawFederationApi(this.client);

  final MisskeyClient client;

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
