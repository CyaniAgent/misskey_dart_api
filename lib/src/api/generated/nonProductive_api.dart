// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'nonProductive_models.dart';

/// Raw generated endpoints for the `nonProductive` API group.
class RawNonProductiveApi {
  /// Creates a raw `nonProductive` API facade.
  RawNonProductiveApi(this.client);

  /// The shared client used for transport and authentication.
  final MisskeyClient client;

  /// reset-db
  ///
  /// Calls POST /api/reset-db.
  Future<void> resetDb({CancelToken? cancelToken}) {
    return client.postVoid(
      'reset-db',
      requiresAuth: false,
      cancelToken: cancelToken,
    );
  }

  /// test
  ///
  /// Calls POST /api/test.
  Future<NonProductiveTestResponse> test(
    NonProductiveTestRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<NonProductiveTestResponse>(
      'test',
      body: request.toJson(),
      requiresAuth: false,
      parser: NonProductiveTestResponse.fromJson,
      cancelToken: cancelToken,
    );
  }
}
