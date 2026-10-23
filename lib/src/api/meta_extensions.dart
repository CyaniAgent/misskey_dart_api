// SPDX-License-Identifier: BSD-3-Clause

import 'package:dio/dio.dart';

import '../models/generated/generated.dart';
import 'high_level/meta_api.dart';
import 'raw_extensions.dart';

extension MetaApiHandWritten on MetaApi {
  Future<MetaLite> get({CancelToken? cancelToken}) {
    return client.raw.meta.get(cancelToken: cancelToken);
  }

  Future<MetaDetailed> detailed({CancelToken? cancelToken}) {
    return client.raw.meta.detailed(cancelToken: cancelToken);
  }
}
