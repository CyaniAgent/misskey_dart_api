// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'roles_models.dart';

/// Raw generated endpoints for the `roles` API group.
class RawRolesApi {
  /// Creates a raw `roles` API facade.
  RawRolesApi(this.client);

  /// The shared client used for transport and authentication.
  final MisskeyClient client;

  /// roles/list
  ///
  /// Calls POST /api/roles/list.
  ///
  /// Authentication required.
  Future<List<Role>> list({CancelToken? cancelToken}) {
    return client.postList<Role>(
      'roles/list',
      requiresAuth: true,
      itemParser: Role.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// roles/notes
  ///
  /// Calls POST /api/roles/notes.
  ///
  /// Authentication required.
  Future<List<Note>> notes(
    RolesNotesRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Note>(
      'roles/notes',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: Note.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// roles/show
  ///
  /// Calls POST /api/roles/show.
  Future<Role> showValue(
    RolesShowValueRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<Role>(
      'roles/show',
      body: request.toJson(),
      requiresAuth: false,
      parser: Role.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// roles/users
  ///
  /// Calls POST /api/roles/users.
  Future<List<RolesUsersResponseItem>> users(
    RolesUsersRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<RolesUsersResponseItem>(
      'roles/users',
      body: request.toJson(),
      requiresAuth: false,
      itemParser: RolesUsersResponseItem.fromJson,
      cancelToken: cancelToken,
    );
  }
}
