// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'charts_models.dart';

class ChartsApi {
  ChartsApi(this.client);

  final MisskeyClient client;

  Future<ChartsActiveUsersResponse> activeUsers(
    ChartsActiveUsersRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<ChartsActiveUsersResponse>(
      'charts/active-users',
      body: request.toJson(),
      parser: ChartsActiveUsersResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<ChartsApRequestResponse> apRequest(
    ChartsApRequestRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<ChartsApRequestResponse>(
      'charts/ap-request',
      body: request.toJson(),
      parser: ChartsApRequestResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<ChartsDriveResponse> drive(
    ChartsDriveRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<ChartsDriveResponse>(
      'charts/drive',
      body: request.toJson(),
      parser: ChartsDriveResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<ChartsFederationResponse> federation(
    ChartsFederationRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<ChartsFederationResponse>(
      'charts/federation',
      body: request.toJson(),
      parser: ChartsFederationResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<ChartsInstanceResponse> instance(
    ChartsInstanceRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<ChartsInstanceResponse>(
      'charts/instance',
      body: request.toJson(),
      parser: ChartsInstanceResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<ChartsNotesResponse> notes(
    ChartsNotesRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<ChartsNotesResponse>(
      'charts/notes',
      body: request.toJson(),
      parser: ChartsNotesResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<ChartsUserDriveResponse> userDrive(
    ChartsUserDriveRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<ChartsUserDriveResponse>(
      'charts/user/drive',
      body: request.toJson(),
      parser: ChartsUserDriveResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<ChartsUserFollowingResponse> userFollowing(
    ChartsUserFollowingRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<ChartsUserFollowingResponse>(
      'charts/user/following',
      body: request.toJson(),
      parser: ChartsUserFollowingResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<ChartsUserNotesResponse> userNotes(
    ChartsUserNotesRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<ChartsUserNotesResponse>(
      'charts/user/notes',
      body: request.toJson(),
      parser: ChartsUserNotesResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<ChartsUserPvResponse> userPv(
    ChartsUserPvRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<ChartsUserPvResponse>(
      'charts/user/pv',
      body: request.toJson(),
      parser: ChartsUserPvResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<ChartsUserReactionsResponse> userReactions(
    ChartsUserReactionsRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<ChartsUserReactionsResponse>(
      'charts/user/reactions',
      body: request.toJson(),
      parser: ChartsUserReactionsResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<ChartsUsersResponse> users(
    ChartsUsersRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<ChartsUsersResponse>(
      'charts/users',
      body: request.toJson(),
      parser: ChartsUsersResponse.fromJson,
      cancelToken: cancelToken,
    );
  }
}
