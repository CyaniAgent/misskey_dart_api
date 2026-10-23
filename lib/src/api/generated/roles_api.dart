// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'roles_models.dart';

class RolesApi {
  RolesApi(this.client);

  final MisskeyClient client;

  Future<List<Role>> list({CancelToken? cancelToken}) {
    return client.postList<Role>(
      'roles/list',
      itemParser: Role.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<Note>> notes(
    RolesNotesRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Note>(
      'roles/notes',
      body: request.toJson(),
      itemParser: Note.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<Role> showValue(
    RolesShowValueRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<Role>(
      'roles/show',
      body: request.toJson(),
      parser: Role.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<RolesUsersResponseItem>> users(
    RolesUsersRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<RolesUsersResponseItem>(
      'roles/users',
      body: request.toJson(),
      itemParser: RolesUsersResponseItem.fromJson,
      cancelToken: cancelToken,
    );
  }
}
