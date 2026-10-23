// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'blocking_models.dart';

/// Raw generated endpoints for the `blocking` API group.
class RawBlockingApi {
  /// Creates a raw `blocking` API facade.
  RawBlockingApi(this.client);

  /// The shared client used for transport and authentication.
  final MisskeyClient client;

  /// blocking/create
  ///
  /// Calls POST /api/blocking/create.
  ///
  /// Authentication required.
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

  /// blocking/delete
  ///
  /// Calls POST /api/blocking/delete.
  ///
  /// Authentication required.
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

  /// blocking/list
  ///
  /// Calls POST /api/blocking/list.
  ///
  /// Authentication required.
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
