// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'app_models.dart';

/// Raw generated endpoints for the `app` API group.
class RawAppApi {
  /// Creates a raw `app` API facade.
  RawAppApi(this.client);

  /// The shared client used for transport and authentication.
  final MisskeyClient client;

  /// app/create
  ///
  /// Calls POST /api/app/create.
  Future<App> create(AppCreateRequest request, {CancelToken? cancelToken}) {
    return client.postModel<App>(
      'app/create',
      body: request.toJson(),
      requiresAuth: false,
      parser: App.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// app/show
  ///
  /// Calls POST /api/app/show.
  Future<App> showValue(
    AppShowValueRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<App>(
      'app/show',
      body: request.toJson(),
      requiresAuth: false,
      parser: App.fromJson,
      cancelToken: cancelToken,
    );
  }
}
