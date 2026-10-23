// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'gallery_models.dart';

class GalleryApi {
  GalleryApi(this.client);

  final MisskeyClient client;

  Future<List<GalleryPost>> featured(
    GalleryFeaturedRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<GalleryPost>(
      'gallery/featured',
      body: request.toJson(),
      itemParser: GalleryPost.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<GalleryPost>> popular({CancelToken? cancelToken}) {
    return client.postList<GalleryPost>(
      'gallery/popular',
      itemParser: GalleryPost.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<GalleryPost>> posts(
    GalleryPostsRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<GalleryPost>(
      'gallery/posts',
      body: request.toJson(),
      itemParser: GalleryPost.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<GalleryPost> postsCreate(
    GalleryPostsCreateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<GalleryPost>(
      'gallery/posts/create',
      body: request.toJson(),
      parser: GalleryPost.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<void> postsDelete(
    GalleryPostsDeleteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'gallery/posts/delete',
      body: request.toJson(),
      cancelToken: cancelToken,
    );
  }

  Future<void> postsLike(
    GalleryPostsLikeRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'gallery/posts/like',
      body: request.toJson(),
      cancelToken: cancelToken,
    );
  }

  Future<GalleryPost> postsShow(
    GalleryPostsShowRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<GalleryPost>(
      'gallery/posts/show',
      body: request.toJson(),
      parser: GalleryPost.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<void> postsUnlike(
    GalleryPostsUnlikeRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'gallery/posts/unlike',
      body: request.toJson(),
      cancelToken: cancelToken,
    );
  }

  Future<GalleryPost> postsUpdate(
    GalleryPostsUpdateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<GalleryPost>(
      'gallery/posts/update',
      body: request.toJson(),
      parser: GalleryPost.fromJson,
      cancelToken: cancelToken,
    );
  }
}
