// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'hashtags_models.dart';

class HashtagsApi {
  HashtagsApi(this.client);

  final MisskeyClient client;

  Future<List<Hashtag>> list(
    HashtagsListRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Hashtag>(
      'hashtags/list',
      body: request.toJson(),
      itemParser: Hashtag.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<String>> search(
    HashtagsSearchRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postParsed<List<String>>(
      'hashtags/search',
      body: request.toJson(),
      parser: (data) => (data as List).cast<String>(),
      cancelToken: cancelToken,
    );
  }

  Future<Hashtag> showValue(
    HashtagsShowValueRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<Hashtag>(
      'hashtags/show',
      body: request.toJson(),
      parser: Hashtag.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<HashtagsTrendResponseItem>> trend({CancelToken? cancelToken}) {
    return client.postList<HashtagsTrendResponseItem>(
      'hashtags/trend',
      itemParser: HashtagsTrendResponseItem.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<UserDetailed>> users(
    HashtagsUsersRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<UserDetailed>(
      'hashtags/users',
      body: request.toJson(),
      itemParser: UserDetailed.fromJson,
      cancelToken: cancelToken,
    );
  }
}
