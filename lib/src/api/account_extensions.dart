// SPDX-License-Identifier: BSD-3-Clause

import 'package:dio/dio.dart';

import '../models/generated/generated.dart';
import 'generated/generated.dart';

extension AccountApiHandWritten on AccountApi {
  Future<MeDetailed> me({CancelToken? cancelToken}) {
    return client.postModel<MeDetailed>(
      'i',
      parser: MeDetailed.fromJson,
      cancelToken: cancelToken,
    );
  }
}
