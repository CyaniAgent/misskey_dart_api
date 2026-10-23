// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'pages_models.dart';

/// Raw generated endpoints for the `pages` API group.
class RawPagesApi {
  /// Creates a raw `pages` API facade.
  RawPagesApi(this.client);

  /// The shared client used for transport and authentication.
  final MisskeyClient client;

  /// page-push
  ///
  /// Calls POST /api/page-push.
  ///
  /// Authentication required.
  Future<void> pagePush(
    PagesPagePushRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'page-push',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// pages/create
  ///
  /// Calls POST /api/pages/create.
  ///
  /// Authentication required.
  Future<Page> create(PagesCreateRequest request, {CancelToken? cancelToken}) {
    return client.postModel<Page>(
      'pages/create',
      body: request.toJson(),
      requiresAuth: true,
      parser: Page.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// pages/delete
  ///
  /// Calls POST /api/pages/delete.
  ///
  /// Authentication required.
  Future<void> delete(PagesDeleteRequest request, {CancelToken? cancelToken}) {
    return client.postVoid(
      'pages/delete',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// pages/featured
  ///
  /// Calls POST /api/pages/featured.
  Future<List<Page>> featured({CancelToken? cancelToken}) {
    return client.postList<Page>(
      'pages/featured',
      requiresAuth: false,
      itemParser: Page.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// pages/like
  ///
  /// Calls POST /api/pages/like.
  ///
  /// Authentication required.
  Future<void> like(PagesLikeRequest request, {CancelToken? cancelToken}) {
    return client.postVoid(
      'pages/like',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// pages/show
  ///
  /// Calls POST /api/pages/show.
  Future<Page> showValue(
    PagesShowValueRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<Page>(
      'pages/show',
      body: request.toJson(),
      requiresAuth: false,
      parser: Page.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// pages/unlike
  ///
  /// Calls POST /api/pages/unlike.
  ///
  /// Authentication required.
  Future<void> unlike(PagesUnlikeRequest request, {CancelToken? cancelToken}) {
    return client.postVoid(
      'pages/unlike',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// pages/update
  ///
  /// Calls POST /api/pages/update.
  ///
  /// Authentication required.
  Future<void> update(PagesUpdateRequest request, {CancelToken? cancelToken}) {
    return client.postVoid(
      'pages/update',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }
}
