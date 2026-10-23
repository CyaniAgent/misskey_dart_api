// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'renoteMute_models.dart';

class RawRenoteMuteApi {
  RawRenoteMuteApi(this.client);

  final MisskeyClient client;

  Future<void> create(
    RenoteMuteCreateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'renote-mute/create',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  Future<void> delete(
    RenoteMuteDeleteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'renote-mute/delete',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  Future<List<RenoteMuting>> list(
    RenoteMuteListRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<RenoteMuting>(
      'renote-mute/list',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: RenoteMuting.fromJson,
      cancelToken: cancelToken,
    );
  }
}
