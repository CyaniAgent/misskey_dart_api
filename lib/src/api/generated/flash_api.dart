// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'flash_models.dart';

class FlashApi {
  FlashApi(this.client);

  final MisskeyClient client;

  Future<Flash> create(FlashCreateRequest request, {CancelToken? cancelToken}) {
    return client.postModel<Flash>(
      'flash/create',
      body: request.toJson(),
      parser: Flash.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<void> delete(FlashDeleteRequest request, {CancelToken? cancelToken}) {
    return client.postVoid(
      'flash/delete',
      body: request.toJson(),
      cancelToken: cancelToken,
    );
  }

  Future<List<Flash>> featured(
    FlashFeaturedRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Flash>(
      'flash/featured',
      body: request.toJson(),
      itemParser: Flash.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<void> like(FlashLikeRequest request, {CancelToken? cancelToken}) {
    return client.postVoid(
      'flash/like',
      body: request.toJson(),
      cancelToken: cancelToken,
    );
  }

  Future<List<Flash>> my(FlashMyRequest request, {CancelToken? cancelToken}) {
    return client.postList<Flash>(
      'flash/my',
      body: request.toJson(),
      itemParser: Flash.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<FlashMyLikesResponseItem>> myLikes(
    FlashMyLikesRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<FlashMyLikesResponseItem>(
      'flash/my-likes',
      body: request.toJson(),
      itemParser: FlashMyLikesResponseItem.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<Flash>> search(
    FlashSearchRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Flash>(
      'flash/search',
      body: request.toJson(),
      itemParser: Flash.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<Flash> showValue(
    FlashShowValueRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<Flash>(
      'flash/show',
      body: request.toJson(),
      parser: Flash.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<void> unlike(FlashUnlikeRequest request, {CancelToken? cancelToken}) {
    return client.postVoid(
      'flash/unlike',
      body: request.toJson(),
      cancelToken: cancelToken,
    );
  }

  Future<void> update(FlashUpdateRequest request, {CancelToken? cancelToken}) {
    return client.postVoid(
      'flash/update',
      body: request.toJson(),
      cancelToken: cancelToken,
    );
  }
}
