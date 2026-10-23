// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'nonProductive_models.dart';

class RawNonProductiveApi {
  RawNonProductiveApi(this.client);

  final MisskeyClient client;

  Future<void> resetDb({CancelToken? cancelToken}) {
    return client.postVoid(
      'reset-db',
      requiresAuth: false,
      cancelToken: cancelToken,
    );
  }

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
