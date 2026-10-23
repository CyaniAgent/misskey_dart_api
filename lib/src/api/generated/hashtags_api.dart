// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../config.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'hashtags_models.dart';

/// Raw generated endpoints for the `hashtags` API group.
class RawHashtagsApi {
  /// Creates a raw `hashtags` API facade.
  RawHashtagsApi(this.client);

  /// The shared client used for transport and authentication.
  final MisskeyClient client;

  /// hashtags/list
  ///
  /// Calls POST /api/hashtags/list.
  Future<List<Hashtag>> list(
    HashtagsListRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Hashtag>(
      'hashtags/list',
      body: request.toJson(),
      requiresAuth: false,
      itemParser: Hashtag.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// hashtags/search
  ///
  /// Calls POST /api/hashtags/search.
  Future<List<String>> search(
    HashtagsSearchRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postParsed<List<String>>(
      'hashtags/search',
      body: request.toJson(),
      requiresAuth: false,
      parser: (data) => (data as List).cast<String>(),
      cancelToken: cancelToken,
    );
  }

  /// hashtags/show
  ///
  /// Calls POST /api/hashtags/show.
  Future<Hashtag> showValue(
    HashtagsShowValueRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<Hashtag>(
      'hashtags/show',
      body: request.toJson(),
      requiresAuth: false,
      parser: Hashtag.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// hashtags/trend
  ///
  /// Calls POST /api/hashtags/trend.
  Future<List<HashtagsTrendResponseItem>> trend({
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) {
    return client.postList<HashtagsTrendResponseItem>(
      'hashtags/trend',
      httpMethod: httpMethod,
      requiresAuth: false,
      itemParser: HashtagsTrendResponseItem.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// hashtags/users
  ///
  /// Calls POST /api/hashtags/users.
  Future<List<UserDetailed>> users(
    HashtagsUsersRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<UserDetailed>(
      'hashtags/users',
      body: request.toJson(),
      requiresAuth: false,
      itemParser: UserDetailed.fromJson,
      cancelToken: cancelToken,
    );
  }
}
