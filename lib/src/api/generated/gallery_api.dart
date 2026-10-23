// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'gallery_models.dart';

/// Raw generated endpoints for the `gallery` API group.
class RawGalleryApi {
  /// Creates a raw `gallery` API facade.
  RawGalleryApi(this.client);

  /// The shared client used for transport and authentication.
  final MisskeyClient client;

  /// gallery/featured
  ///
  /// Calls POST /api/gallery/featured.
  Future<List<GalleryPost>> featured(
    GalleryFeaturedRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<GalleryPost>(
      'gallery/featured',
      body: request.toJson(),
      requiresAuth: false,
      itemParser: GalleryPost.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// gallery/popular
  ///
  /// Calls POST /api/gallery/popular.
  Future<List<GalleryPost>> popular({CancelToken? cancelToken}) {
    return client.postList<GalleryPost>(
      'gallery/popular',
      requiresAuth: false,
      itemParser: GalleryPost.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// gallery/posts
  ///
  /// Calls POST /api/gallery/posts.
  Future<List<GalleryPost>> posts(
    GalleryPostsRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<GalleryPost>(
      'gallery/posts',
      body: request.toJson(),
      requiresAuth: false,
      itemParser: GalleryPost.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// gallery/posts/create
  ///
  /// Calls POST /api/gallery/posts/create.
  ///
  /// Authentication required.
  Future<GalleryPost> postsCreate(
    GalleryPostsCreateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<GalleryPost>(
      'gallery/posts/create',
      body: request.toJson(),
      requiresAuth: true,
      parser: GalleryPost.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// gallery/posts/delete
  ///
  /// Calls POST /api/gallery/posts/delete.
  ///
  /// Authentication required.
  Future<void> postsDelete(
    GalleryPostsDeleteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'gallery/posts/delete',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// gallery/posts/like
  ///
  /// Calls POST /api/gallery/posts/like.
  ///
  /// Authentication required.
  Future<void> postsLike(
    GalleryPostsLikeRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'gallery/posts/like',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// gallery/posts/show
  ///
  /// Calls POST /api/gallery/posts/show.
  Future<GalleryPost> postsShow(
    GalleryPostsShowRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<GalleryPost>(
      'gallery/posts/show',
      body: request.toJson(),
      requiresAuth: false,
      parser: GalleryPost.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// gallery/posts/unlike
  ///
  /// Calls POST /api/gallery/posts/unlike.
  ///
  /// Authentication required.
  Future<void> postsUnlike(
    GalleryPostsUnlikeRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'gallery/posts/unlike',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// gallery/posts/update
  ///
  /// Calls POST /api/gallery/posts/update.
  ///
  /// Authentication required.
  Future<GalleryPost> postsUpdate(
    GalleryPostsUpdateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<GalleryPost>(
      'gallery/posts/update',
      body: request.toJson(),
      requiresAuth: true,
      parser: GalleryPost.fromJson,
      cancelToken: cancelToken,
    );
  }
}
