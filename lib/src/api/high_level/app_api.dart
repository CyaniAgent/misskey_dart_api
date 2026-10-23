// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../generated/app_models.dart';

/// High-level endpoints for the `app` API group.
class AppApi {
  /// Creates a high-level `app` API facade.
  AppApi(this.client);

  /// The shared client used for transport and authentication.
  final MisskeyClient client;

  /// app/create
  ///
  /// Calls POST /api/app/create.
  Future<App> create({
    required String name,
    required String description,
    required List<String> permission,
    String? callbackUrl,
    CancelToken? cancelToken,
  }) async {
    return client.raw.app.create(
      AppCreateRequest(
        name: name,
        description: description,
        permission: permission,
        callbackUrl: callbackUrl,
      ),
      cancelToken: cancelToken,
    );
  }

  /// app/show
  ///
  /// Calls POST /api/app/show.
  Future<App> showValue({
    required String appId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.app.showValue(
      AppShowValueRequest(appId: appId),
      cancelToken: cancelToken,
    );
  }
}
