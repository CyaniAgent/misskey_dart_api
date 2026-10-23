// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'mute_models.dart';

class RawMuteApi {
  RawMuteApi(this.client);

  final MisskeyClient client;

  Future<void> create(MuteCreateRequest request, {CancelToken? cancelToken}) {
    return client.postVoid(
      'mute/create',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  Future<void> delete(MuteDeleteRequest request, {CancelToken? cancelToken}) {
    return client.postVoid(
      'mute/delete',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  Future<List<Muting>> list(
    MuteListRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Muting>(
      'mute/list',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: Muting.fromJson,
      cancelToken: cancelToken,
    );
  }
}
