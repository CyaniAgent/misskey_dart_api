// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'invite_models.dart';

/// Raw generated endpoints for the `invite` API group.
class RawInviteApi {
  /// Creates a raw `invite` API facade.
  RawInviteApi(this.client);

  /// The shared client used for transport and authentication.
  final MisskeyClient client;

  /// invite/create
  ///
  /// Calls POST /api/invite/create.
  ///
  /// Authentication required.
  Future<InviteCode> create({CancelToken? cancelToken}) {
    return client.postModel<InviteCode>(
      'invite/create',
      requiresAuth: true,
      parser: InviteCode.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// invite/delete
  ///
  /// Calls POST /api/invite/delete.
  ///
  /// Authentication required.
  Future<void> delete(InviteDeleteRequest request, {CancelToken? cancelToken}) {
    return client.postVoid(
      'invite/delete',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// invite/limit
  ///
  /// Calls POST /api/invite/limit.
  ///
  /// Authentication required.
  Future<InviteLimitResponse> limit({CancelToken? cancelToken}) {
    return client.postModel<InviteLimitResponse>(
      'invite/limit',
      requiresAuth: true,
      parser: InviteLimitResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// invite/list
  ///
  /// Calls POST /api/invite/list.
  ///
  /// Authentication required.
  Future<List<InviteCode>> list(
    InviteListRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<InviteCode>(
      'invite/list',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: InviteCode.fromJson,
      cancelToken: cancelToken,
    );
  }
}
