// SPDX-License-Identifier: BSD-3-Clause

import 'package:dio/dio.dart';

import '../models/generated/generated.dart';
import 'generated/generated.dart';

extension RawAccountApiHandWritten on RawAccountApi {
  Future<MeDetailed> me({CancelToken? cancelToken}) {
    return client.postModel<MeDetailed>(
      'i',
      requiresAuth: true,
      parser: MeDetailed.fromJson,
      cancelToken: cancelToken,
    );
  }
}

extension RawMetaApiHandWritten on RawMetaApi {
  Future<MetaLite> get({CancelToken? cancelToken}) {
    return client.postModel<MetaLite>(
      'meta',
      body: const {'detail': false},
      parser: MetaLite.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<MetaDetailed> detailed({CancelToken? cancelToken}) {
    return client.postModel<MetaDetailed>(
      'meta',
      body: const {'detail': true},
      parser: MetaDetailed.fromJson,
      cancelToken: cancelToken,
    );
  }
}
