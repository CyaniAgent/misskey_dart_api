// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../config.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import '../../pagination/cursor_page.dart';
import '../generated/federation_models.dart';

class FederationApi {
  FederationApi(this.client);

  final MisskeyClient client;

  /// ap/get
  ///
  /// Calls POST /api/ap/get.
  ///
  /// Authentication required.
  Future<JsonMap> apGet({required String uri, CancelToken? cancelToken}) async {
    return client.raw.federation.apGet(
      FederationApGetRequest(uri: uri),
      cancelToken: cancelToken,
    );
  }

  /// ap/show
  ///
  /// Calls POST /api/ap/show.
  ///
  /// Authentication required.
  Future<FederationApShowResponse> apShow({
    required String uri,
    CancelToken? cancelToken,
  }) async {
    return client.raw.federation.apShow(
      FederationApShowRequest(uri: uri),
      cancelToken: cancelToken,
    );
  }

  /// federation/followers
  ///
  /// Calls POST /api/federation/followers.
  Future<List<Following>> followers({
    required String host,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    int limit = 10,
    CancelToken? cancelToken,
  }) async {
    return client.raw.federation.followers(
      FederationFollowersRequest(
        host: host,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
        limit: limit,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [followers].
  Future<CursorPage<Following>> followersPage({
    int limit = 20,
    String? untilId,
    required String host,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<Following>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => followers(
        limit: pageLimit,
        untilId: cursor,
        host: host,
        cancelToken: cancelToken,
      ),
    );
  }

  /// federation/following
  ///
  /// Calls POST /api/federation/following.
  Future<List<Following>> following({
    required String host,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    int limit = 10,
    CancelToken? cancelToken,
  }) async {
    return client.raw.federation.following(
      FederationFollowingRequest(
        host: host,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
        limit: limit,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [following].
  Future<CursorPage<Following>> followingPage({
    int limit = 20,
    String? untilId,
    required String host,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<Following>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => following(
        limit: pageLimit,
        untilId: cursor,
        host: host,
        cancelToken: cancelToken,
      ),
    );
  }

  /// federation/instances
  ///
  /// Calls POST /api/federation/instances.
  Future<List<FederationInstance>> instances({
    String? host,
    bool? blocked,
    bool? notResponding,
    bool? suspended,
    bool? silenced,
    bool? federating,
    bool? subscribing,
    bool? publishing,
    int limit = 30,
    int offset = 0,
    FederationInstancesRequestSort? sort,
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) async {
    return client.raw.federation.instances(
      FederationInstancesRequest(
        host: host,
        blocked: blocked,
        notResponding: notResponding,
        suspended: suspended,
        silenced: silenced,
        federating: federating,
        subscribing: subscribing,
        publishing: publishing,
        limit: limit,
        offset: offset,
        sort: sort,
      ),
      httpMethod: httpMethod,
      cancelToken: cancelToken,
    );
  }

  /// federation/show-instance
  ///
  /// Calls POST /api/federation/show-instance.
  Future<FederationInstance?> showInstance({
    required String host,
    CancelToken? cancelToken,
  }) async {
    return client.raw.federation.showInstance(
      FederationShowInstanceRequest(host: host),
      cancelToken: cancelToken,
    );
  }

  /// federation/stats
  ///
  /// Calls POST /api/federation/stats.
  Future<FederationStatsResponse> stats({
    int limit = 10,
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) async {
    return client.raw.federation.stats(
      FederationStatsRequest(limit: limit),
      httpMethod: httpMethod,
      cancelToken: cancelToken,
    );
  }

  /// federation/update-remote-user
  ///
  /// Calls POST /api/federation/update-remote-user.
  Future<void> updateRemoteUser({
    required String userId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.federation.updateRemoteUser(
      FederationUpdateRemoteUserRequest(userId: userId),
      cancelToken: cancelToken,
    );
  }

  /// federation/users
  ///
  /// Calls POST /api/federation/users.
  Future<List<UserDetailedNotMe>> users({
    required String host,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    int limit = 10,
    CancelToken? cancelToken,
  }) async {
    return client.raw.federation.users(
      FederationUsersRequest(
        host: host,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
        limit: limit,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [users].
  Future<CursorPage<UserDetailedNotMe>> usersPage({
    int limit = 20,
    String? untilId,
    required String host,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<UserDetailedNotMe>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => users(
        limit: pageLimit,
        untilId: cursor,
        host: host,
        cancelToken: cancelToken,
      ),
    );
  }
}
