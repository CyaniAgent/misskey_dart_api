// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../pagination/cursor_page.dart';
import '../generated/roles_models.dart';

class RolesApi {
  RolesApi(this.client);

  final MisskeyClient client;

  /// roles/list
  ///
  /// Calls POST /api/roles/list.
  ///
  /// Authentication required.
  Future<List<Role>> list({CancelToken? cancelToken}) async {
    return client.raw.roles.list(cancelToken: cancelToken);
  }

  /// roles/notes
  ///
  /// Calls POST /api/roles/notes.
  ///
  /// Authentication required.
  Future<List<Note>> notes({
    required String roleId,
    int limit = 10,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    CancelToken? cancelToken,
  }) async {
    return client.raw.roles.notes(
      RolesNotesRequest(
        roleId: roleId,
        limit: limit,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [notes].
  Future<CursorPage<Note>> notesPage({
    int limit = 20,
    String? untilId,
    required String roleId,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<Note>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => notes(
        limit: pageLimit,
        untilId: cursor,
        roleId: roleId,
        cancelToken: cancelToken,
      ),
    );
  }

  /// roles/show
  ///
  /// Calls POST /api/roles/show.
  Future<Role> showValue({
    required String roleId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.roles.showValue(
      RolesShowValueRequest(roleId: roleId),
      cancelToken: cancelToken,
    );
  }

  /// roles/users
  ///
  /// Calls POST /api/roles/users.
  Future<List<RolesUsersResponseItem>> users({
    required String roleId,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    int limit = 10,
    CancelToken? cancelToken,
  }) async {
    return client.raw.roles.users(
      RolesUsersRequest(
        roleId: roleId,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
        limit: limit,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [users].
  Future<CursorPage<RolesUsersResponseItem>> usersPage({
    int limit = 20,
    String? untilId,
    required String roleId,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<RolesUsersResponseItem>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => users(
        limit: pageLimit,
        untilId: cursor,
        roleId: roleId,
        cancelToken: cancelToken,
      ),
    );
  }
}
