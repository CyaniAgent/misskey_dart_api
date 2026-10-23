// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'mute_models.dart';

/// Raw generated endpoints for the `mute` API group.
class RawMuteApi {
  /// Creates a raw `mute` API facade.
  RawMuteApi(this.client);

  /// The shared client used for transport and authentication.
  final MisskeyClient client;

  /// mute/create
  ///
  /// Calls POST /api/mute/create.
  ///
  /// Authentication required.
  Future<void> create(MuteCreateRequest request, {CancelToken? cancelToken}) {
    return client.postVoid(
      'mute/create',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// mute/delete
  ///
  /// Calls POST /api/mute/delete.
  ///
  /// Authentication required.
  Future<void> delete(MuteDeleteRequest request, {CancelToken? cancelToken}) {
    return client.postVoid(
      'mute/delete',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// mute/list
  ///
  /// Calls POST /api/mute/list.
  ///
  /// Authentication required.
  Future<List<Muting>> list(
    MuteListRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Muting>(
      'mute/list',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: Muting.fromJson,
      cancelToken: cancelToken,
    );
  }
}
