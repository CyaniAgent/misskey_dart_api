// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../config.dart';
import '../generated/charts_models.dart';

/// High-level endpoints for the `charts` API group.
class ChartsApi {
  /// Creates a high-level `charts` API facade.
  ChartsApi(this.client);

  /// The shared client used for transport and authentication.
  final MisskeyClient client;

  /// charts/active-users
  ///
  /// Calls POST /api/charts/active-users.
  Future<ChartsActiveUsersResponse> activeUsers({
    required ChartsActiveUsersRequestSpan span,
    int limit = 30,
    int? offset,
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) async {
    return client.raw.charts.activeUsers(
      ChartsActiveUsersRequest(span: span, limit: limit, offset: offset),
      httpMethod: httpMethod,
      cancelToken: cancelToken,
    );
  }

  /// charts/ap-request
  ///
  /// Calls POST /api/charts/ap-request.
  Future<ChartsApRequestResponse> apRequest({
    required ChartsApRequestRequestSpan span,
    int limit = 30,
    int? offset,
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) async {
    return client.raw.charts.apRequest(
      ChartsApRequestRequest(span: span, limit: limit, offset: offset),
      httpMethod: httpMethod,
      cancelToken: cancelToken,
    );
  }

  /// charts/drive
  ///
  /// Calls POST /api/charts/drive.
  Future<ChartsDriveResponse> drive({
    required ChartsDriveRequestSpan span,
    int limit = 30,
    int? offset,
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) async {
    return client.raw.charts.drive(
      ChartsDriveRequest(span: span, limit: limit, offset: offset),
      httpMethod: httpMethod,
      cancelToken: cancelToken,
    );
  }

  /// charts/federation
  ///
  /// Calls POST /api/charts/federation.
  Future<ChartsFederationResponse> federation({
    required ChartsFederationRequestSpan span,
    int limit = 30,
    int? offset,
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) async {
    return client.raw.charts.federation(
      ChartsFederationRequest(span: span, limit: limit, offset: offset),
      httpMethod: httpMethod,
      cancelToken: cancelToken,
    );
  }

  /// charts/instance
  ///
  /// Calls POST /api/charts/instance.
  Future<ChartsInstanceResponse> instance({
    required ChartsInstanceRequestSpan span,
    int limit = 30,
    int? offset,
    required String host,
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) async {
    return client.raw.charts.instance(
      ChartsInstanceRequest(
        span: span,
        limit: limit,
        offset: offset,
        host: host,
      ),
      httpMethod: httpMethod,
      cancelToken: cancelToken,
    );
  }

  /// charts/notes
  ///
  /// Calls POST /api/charts/notes.
  Future<ChartsNotesResponse> notes({
    required ChartsNotesRequestSpan span,
    int limit = 30,
    int? offset,
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) async {
    return client.raw.charts.notes(
      ChartsNotesRequest(span: span, limit: limit, offset: offset),
      httpMethod: httpMethod,
      cancelToken: cancelToken,
    );
  }

  /// charts/user/drive
  ///
  /// Calls POST /api/charts/user/drive.
  Future<ChartsUserDriveResponse> userDrive({
    required ChartsUserDriveRequestSpan span,
    int limit = 30,
    int? offset,
    required String userId,
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) async {
    return client.raw.charts.userDrive(
      ChartsUserDriveRequest(
        span: span,
        limit: limit,
        offset: offset,
        userId: userId,
      ),
      httpMethod: httpMethod,
      cancelToken: cancelToken,
    );
  }

  /// charts/user/following
  ///
  /// Calls POST /api/charts/user/following.
  Future<ChartsUserFollowingResponse> userFollowing({
    required ChartsUserFollowingRequestSpan span,
    int limit = 30,
    int? offset,
    required String userId,
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) async {
    return client.raw.charts.userFollowing(
      ChartsUserFollowingRequest(
        span: span,
        limit: limit,
        offset: offset,
        userId: userId,
      ),
      httpMethod: httpMethod,
      cancelToken: cancelToken,
    );
  }

  /// charts/user/notes
  ///
  /// Calls POST /api/charts/user/notes.
  Future<ChartsUserNotesResponse> userNotes({
    required ChartsUserNotesRequestSpan span,
    int limit = 30,
    int? offset,
    required String userId,
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) async {
    return client.raw.charts.userNotes(
      ChartsUserNotesRequest(
        span: span,
        limit: limit,
        offset: offset,
        userId: userId,
      ),
      httpMethod: httpMethod,
      cancelToken: cancelToken,
    );
  }

  /// charts/user/pv
  ///
  /// Calls POST /api/charts/user/pv.
  Future<ChartsUserPvResponse> userPv({
    required ChartsUserPvRequestSpan span,
    int limit = 30,
    int? offset,
    required String userId,
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) async {
    return client.raw.charts.userPv(
      ChartsUserPvRequest(
        span: span,
        limit: limit,
        offset: offset,
        userId: userId,
      ),
      httpMethod: httpMethod,
      cancelToken: cancelToken,
    );
  }

  /// charts/user/reactions
  ///
  /// Calls POST /api/charts/user/reactions.
  Future<ChartsUserReactionsResponse> userReactions({
    required ChartsUserReactionsRequestSpan span,
    int limit = 30,
    int? offset,
    required String userId,
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) async {
    return client.raw.charts.userReactions(
      ChartsUserReactionsRequest(
        span: span,
        limit: limit,
        offset: offset,
        userId: userId,
      ),
      httpMethod: httpMethod,
      cancelToken: cancelToken,
    );
  }

  /// charts/users
  ///
  /// Calls POST /api/charts/users.
  Future<ChartsUsersResponse> users({
    required ChartsUsersRequestSpan span,
    int limit = 30,
    int? offset,
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) async {
    return client.raw.charts.users(
      ChartsUsersRequest(span: span, limit: limit, offset: offset),
      httpMethod: httpMethod,
      cancelToken: cancelToken,
    );
  }
}
