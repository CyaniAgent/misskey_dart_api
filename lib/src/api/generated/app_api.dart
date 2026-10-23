// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'app_models.dart';

class RawAppApi {
  RawAppApi(this.client);

  final MisskeyClient client;

  Future<App> create(AppCreateRequest request, {CancelToken? cancelToken}) {
    return client.postModel<App>(
      'app/create',
      body: request.toJson(),
      requiresAuth: false,
      parser: App.fromJson,
      cancelToken: cancelToken,
    );
  }

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
