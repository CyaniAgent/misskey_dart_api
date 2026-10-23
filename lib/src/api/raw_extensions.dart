// SPDX-License-Identifier: BSD-3-Clause

import 'package:dio/dio.dart';

import '../models/generated/generated.dart';
import 'generated/generated.dart';

/// Hand-written raw account helpers.
extension RawAccountApiHandWritten on RawAccountApi {
  /// Returns the authenticated user's detailed profile.
  Future<MeDetailed> me({CancelToken? cancelToken}) {
    return client.postModel<MeDetailed>(
      'i',
      requiresAuth: true,
      parser: MeDetailed.fromJson,
      cancelToken: cancelToken,
    );
  }
}

/// Hand-written raw instance metadata helpers.
extension RawMetaApiHandWritten on RawMetaApi {
  /// Returns the public instance metadata.
  Future<MetaLite> get({CancelToken? cancelToken}) {
    return client.postModel<MetaLite>(
      'meta',
      body: const {'detail': false},
      parser: MetaLite.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// Returns detailed instance metadata.
  Future<MetaDetailed> detailed({CancelToken? cancelToken}) {
    return client.postModel<MetaDetailed>(
      'meta',
      body: const {'detail': true},
      parser: MetaDetailed.fromJson,
      cancelToken: cancelToken,
    );
  }
}
