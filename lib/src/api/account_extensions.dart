// SPDX-License-Identifier: BSD-3-Clause

import 'package:dio/dio.dart';

import '../models/generated/generated.dart';
import 'high_level/account_api.dart';
import 'raw_extensions.dart';

extension AccountApiHandWritten on AccountApi {
  Future<MeDetailed> me({CancelToken? cancelToken}) {
    return client.raw.account.me(cancelToken: cancelToken);
  }
}
