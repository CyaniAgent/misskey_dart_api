// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../generated/nonProductive_models.dart';

class NonProductiveApi {
  NonProductiveApi(this.client);

  final MisskeyClient client;

  /// reset-db
  ///
  /// Calls POST /api/reset-db.
  Future<void> resetDb({CancelToken? cancelToken}) async {
    return client.raw.nonProductive.resetDb(cancelToken: cancelToken);
  }

  /// test
  ///
  /// Calls POST /api/test.
  Future<NonProductiveTestResponse> test({
    required bool required_,
    String? string,
    String defaultValue = 'hello',
    String? nullableDefault = 'hello',
    String? id,
    CancelToken? cancelToken,
  }) async {
    return client.raw.nonProductive.test(
      NonProductiveTestRequest(
        required_: required_,
        string: string,
        defaultValue: defaultValue,
        nullableDefault: nullableDefault,
        id: id,
      ),
      cancelToken: cancelToken,
    );
  }
}
