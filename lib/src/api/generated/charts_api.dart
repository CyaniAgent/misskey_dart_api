// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../config.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'charts_models.dart';

class RawChartsApi {
  RawChartsApi(this.client);

  final MisskeyClient client;

  Future<ChartsActiveUsersResponse> activeUsers(
    ChartsActiveUsersRequest request, {
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) {
    return client.postModel<ChartsActiveUsersResponse>(
      'charts/active-users',
      body: request.toJson(),
      httpMethod: httpMethod,
      requiresAuth: false,
      parser: ChartsActiveUsersResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<ChartsApRequestResponse> apRequest(
    ChartsApRequestRequest request, {
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) {
    return client.postModel<ChartsApRequestResponse>(
      'charts/ap-request',
      body: request.toJson(),
      httpMethod: httpMethod,
      requiresAuth: false,
      parser: ChartsApRequestResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<ChartsDriveResponse> drive(
    ChartsDriveRequest request, {
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) {
    return client.postModel<ChartsDriveResponse>(
      'charts/drive',
      body: request.toJson(),
      httpMethod: httpMethod,
      requiresAuth: false,
      parser: ChartsDriveResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<ChartsFederationResponse> federation(
    ChartsFederationRequest request, {
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) {
    return client.postModel<ChartsFederationResponse>(
      'charts/federation',
      body: request.toJson(),
      httpMethod: httpMethod,
      requiresAuth: false,
      parser: ChartsFederationResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<ChartsInstanceResponse> instance(
    ChartsInstanceRequest request, {
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) {
    return client.postModel<ChartsInstanceResponse>(
      'charts/instance',
      body: request.toJson(),
      httpMethod: httpMethod,
      requiresAuth: false,
      parser: ChartsInstanceResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<ChartsNotesResponse> notes(
    ChartsNotesRequest request, {
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) {
    return client.postModel<ChartsNotesResponse>(
      'charts/notes',
      body: request.toJson(),
      httpMethod: httpMethod,
      requiresAuth: false,
      parser: ChartsNotesResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<ChartsUserDriveResponse> userDrive(
    ChartsUserDriveRequest request, {
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) {
    return client.postModel<ChartsUserDriveResponse>(
      'charts/user/drive',
      body: request.toJson(),
      httpMethod: httpMethod,
      requiresAuth: false,
      parser: ChartsUserDriveResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<ChartsUserFollowingResponse> userFollowing(
    ChartsUserFollowingRequest request, {
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) {
    return client.postModel<ChartsUserFollowingResponse>(
      'charts/user/following',
      body: request.toJson(),
      httpMethod: httpMethod,
      requiresAuth: false,
      parser: ChartsUserFollowingResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<ChartsUserNotesResponse> userNotes(
    ChartsUserNotesRequest request, {
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) {
    return client.postModel<ChartsUserNotesResponse>(
      'charts/user/notes',
      body: request.toJson(),
      httpMethod: httpMethod,
      requiresAuth: false,
      parser: ChartsUserNotesResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<ChartsUserPvResponse> userPv(
    ChartsUserPvRequest request, {
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) {
    return client.postModel<ChartsUserPvResponse>(
      'charts/user/pv',
      body: request.toJson(),
      httpMethod: httpMethod,
      requiresAuth: false,
      parser: ChartsUserPvResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<ChartsUserReactionsResponse> userReactions(
    ChartsUserReactionsRequest request, {
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) {
    return client.postModel<ChartsUserReactionsResponse>(
      'charts/user/reactions',
      body: request.toJson(),
      httpMethod: httpMethod,
      requiresAuth: false,
      parser: ChartsUserReactionsResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<ChartsUsersResponse> users(
    ChartsUsersRequest request, {
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) {
    return client.postModel<ChartsUsersResponse>(
      'charts/users',
      body: request.toJson(),
      httpMethod: httpMethod,
      requiresAuth: false,
      parser: ChartsUsersResponse.fromJson,
      cancelToken: cancelToken,
    );
  }
}
