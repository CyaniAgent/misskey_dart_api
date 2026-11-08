// SPDX-License-Identifier: BSD-3-Clause

import 'package:dio/dio.dart';

import '../models/generated/generated.dart';
import 'high_level/account_api.dart';
import 'raw_extensions.dart';

/// Hand-written account helpers.
extension AccountApiHandWritten on AccountApi {
  /// Returns the authenticated user's detailed profile.
  Future<MeDetailed> me({CancelToken? cancelToken}) {
    return client.raw.account.me(cancelToken: cancelToken);
  }
}
