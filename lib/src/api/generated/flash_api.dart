// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'flash_models.dart';

/// Raw generated endpoints for the `flash` API group.
class RawFlashApi {
  /// Creates a raw `flash` API facade.
  RawFlashApi(this.client);

  /// The shared client used for transport and authentication.
  final MisskeyClient client;

  /// flash/create
  ///
  /// Calls POST /api/flash/create.
  ///
  /// Authentication required.
  Future<Flash> create(FlashCreateRequest request, {CancelToken? cancelToken}) {
    return client.postModel<Flash>(
      'flash/create',
      body: request.toJson(),
      requiresAuth: true,
      parser: Flash.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// flash/delete
  ///
  /// Calls POST /api/flash/delete.
  ///
  /// Authentication required.
  Future<void> delete(FlashDeleteRequest request, {CancelToken? cancelToken}) {
    return client.postVoid(
      'flash/delete',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// flash/featured
  ///
  /// Calls POST /api/flash/featured.
  Future<List<Flash>> featured(
    FlashFeaturedRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Flash>(
      'flash/featured',
      body: request.toJson(),
      requiresAuth: false,
      itemParser: Flash.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// flash/like
  ///
  /// Calls POST /api/flash/like.
  ///
  /// Authentication required.
  Future<void> like(FlashLikeRequest request, {CancelToken? cancelToken}) {
    return client.postVoid(
      'flash/like',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// flash/my
  ///
  /// Calls POST /api/flash/my.
  ///
  /// Authentication required.
  Future<List<Flash>> my(FlashMyRequest request, {CancelToken? cancelToken}) {
    return client.postList<Flash>(
      'flash/my',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: Flash.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// flash/my-likes
  ///
  /// Calls POST /api/flash/my-likes.
  ///
  /// Authentication required.
  Future<List<FlashMyLikesResponseItem>> myLikes(
    FlashMyLikesRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<FlashMyLikesResponseItem>(
      'flash/my-likes',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: FlashMyLikesResponseItem.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// flash/search
  ///
  /// Calls POST /api/flash/search.
  Future<List<Flash>> search(
    FlashSearchRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Flash>(
      'flash/search',
      body: request.toJson(),
      requiresAuth: false,
      itemParser: Flash.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// flash/show
  ///
  /// Calls POST /api/flash/show.
  Future<Flash> showValue(
    FlashShowValueRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<Flash>(
      'flash/show',
      body: request.toJson(),
      requiresAuth: false,
      parser: Flash.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// flash/unlike
  ///
  /// Calls POST /api/flash/unlike.
  ///
  /// Authentication required.
  Future<void> unlike(FlashUnlikeRequest request, {CancelToken? cancelToken}) {
    return client.postVoid(
      'flash/unlike',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// flash/update
  ///
  /// Calls POST /api/flash/update.
  ///
  /// Authentication required.
  Future<void> update(FlashUpdateRequest request, {CancelToken? cancelToken}) {
    return client.postVoid(
      'flash/update',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }
}
