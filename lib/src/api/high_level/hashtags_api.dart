// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../config.dart';
import '../../models/generated/generated.dart';
import '../generated/hashtags_models.dart';

class HashtagsApi {
  HashtagsApi(this.client);

  final MisskeyClient client;

  /// hashtags/list
  ///
  /// Calls POST /api/hashtags/list.
  Future<List<Hashtag>> list({
    int limit = 10,
    bool attachedToUserOnly = false,
    bool attachedToLocalUserOnly = false,
    bool attachedToRemoteUserOnly = false,
    required HashtagsListRequestSort sort,
    CancelToken? cancelToken,
  }) async {
    return client.raw.hashtags.list(
      HashtagsListRequest(
        limit: limit,
        attachedToUserOnly: attachedToUserOnly,
        attachedToLocalUserOnly: attachedToLocalUserOnly,
        attachedToRemoteUserOnly: attachedToRemoteUserOnly,
        sort: sort,
      ),
      cancelToken: cancelToken,
    );
  }

  /// hashtags/search
  ///
  /// Calls POST /api/hashtags/search.
  Future<List<String>> search({
    int limit = 10,
    required String query,
    int offset = 0,
    CancelToken? cancelToken,
  }) async {
    return client.raw.hashtags.search(
      HashtagsSearchRequest(limit: limit, query: query, offset: offset),
      cancelToken: cancelToken,
    );
  }

  /// hashtags/show
  ///
  /// Calls POST /api/hashtags/show.
  Future<Hashtag> showValue({
    required String tag,
    CancelToken? cancelToken,
  }) async {
    return client.raw.hashtags.showValue(
      HashtagsShowValueRequest(tag: tag),
      cancelToken: cancelToken,
    );
  }

  /// hashtags/trend
  ///
  /// Calls POST /api/hashtags/trend.
  Future<List<HashtagsTrendResponseItem>> trend({
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) async {
    return client.raw.hashtags.trend(
      httpMethod: httpMethod,
      cancelToken: cancelToken,
    );
  }

  /// hashtags/users
  ///
  /// Calls POST /api/hashtags/users.
  Future<List<UserDetailed>> users({
    required String tag,
    int limit = 10,
    int offset = 0,
    required HashtagsUsersRequestSort sort,
    HashtagsUsersRequestState state = HashtagsUsersRequestState.all,
    HashtagsUsersRequestOrigin origin = HashtagsUsersRequestOrigin.local,
    CancelToken? cancelToken,
  }) async {
    return client.raw.hashtags.users(
      HashtagsUsersRequest(
        tag: tag,
        limit: limit,
        offset: offset,
        sort: sort,
        state: state,
        origin: origin,
      ),
      cancelToken: cancelToken,
    );
  }
}
