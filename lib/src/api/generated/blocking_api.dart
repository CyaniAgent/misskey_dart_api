// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'blocking_models.dart';

class RawBlockingApi {
  RawBlockingApi(this.client);

  final MisskeyClient client;

  Future<UserDetailedNotMe> create(
    BlockingCreateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<UserDetailedNotMe>(
      'blocking/create',
      body: request.toJson(),
      requiresAuth: true,
      parser: UserDetailedNotMe.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<UserDetailedNotMe> delete(
    BlockingDeleteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<UserDetailedNotMe>(
      'blocking/delete',
      body: request.toJson(),
      requiresAuth: true,
      parser: UserDetailedNotMe.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<Blocking>> list(
    BlockingListRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Blocking>(
      'blocking/list',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: Blocking.fromJson,
      cancelToken: cancelToken,
    );
  }
}
