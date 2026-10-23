// SPDX-License-Identifier: BSD-3-Clause

import 'package:dio/dio.dart';

import '../models/generated/generated.dart';
import 'high_level/meta_api.dart';
import 'raw_extensions.dart';

/// Hand-written instance metadata helpers.
extension MetaApiHandWritten on MetaApi {
  /// Returns the public instance metadata.
  Future<MetaLite> get({CancelToken? cancelToken}) {
    return client.raw.meta.get(cancelToken: cancelToken);
  }

  /// Returns detailed instance metadata.
  Future<MetaDetailed> detailed({CancelToken? cancelToken}) {
    return client.raw.meta.detailed(cancelToken: cancelToken);
  }
}
