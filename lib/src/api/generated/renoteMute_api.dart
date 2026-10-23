// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'renoteMute_models.dart';

/// Raw generated endpoints for the `renoteMute` API group.
class RawRenoteMuteApi {
  /// Creates a raw `renoteMute` API facade.
  RawRenoteMuteApi(this.client);

  /// The shared client used for transport and authentication.
  final MisskeyClient client;

  /// renote-mute/create
  ///
  /// Calls POST /api/renote-mute/create.
  ///
  /// Authentication required.
  Future<void> create(
    RenoteMuteCreateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'renote-mute/create',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// renote-mute/delete
  ///
  /// Calls POST /api/renote-mute/delete.
  ///
  /// Authentication required.
  Future<void> delete(
    RenoteMuteDeleteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'renote-mute/delete',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// renote-mute/list
  ///
  /// Calls POST /api/renote-mute/list.
  ///
  /// Authentication required.
  Future<List<RenoteMuting>> list(
    RenoteMuteListRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<RenoteMuting>(
      'renote-mute/list',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: RenoteMuting.fromJson,
      cancelToken: cancelToken,
    );
  }
}
