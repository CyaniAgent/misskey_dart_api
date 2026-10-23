// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../pagination/cursor_page.dart';
import '../generated/gallery_models.dart';

class GalleryApi {
  GalleryApi(this.client);

  final MisskeyClient client;

  /// gallery/featured
  ///
  /// Calls POST /api/gallery/featured.
  Future<List<GalleryPost>> featured({
    int limit = 10,
    String? untilId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.gallery.featured(
      GalleryFeaturedRequest(limit: limit, untilId: untilId),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [featured].
  Future<CursorPage<GalleryPost>> featuredPage({
    int limit = 20,
    String? untilId,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<GalleryPost>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) =>
          featured(limit: pageLimit, untilId: cursor, cancelToken: cancelToken),
    );
  }

  /// gallery/popular
  ///
  /// Calls POST /api/gallery/popular.
  Future<List<GalleryPost>> popular({CancelToken? cancelToken}) async {
    return client.raw.gallery.popular(cancelToken: cancelToken);
  }

  /// gallery/posts
  ///
  /// Calls POST /api/gallery/posts.
  Future<List<GalleryPost>> posts({
    int limit = 10,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    CancelToken? cancelToken,
  }) async {
    return client.raw.gallery.posts(
      GalleryPostsRequest(
        limit: limit,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [posts].
  Future<CursorPage<GalleryPost>> postsPage({
    int limit = 20,
    String? untilId,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<GalleryPost>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) =>
          posts(limit: pageLimit, untilId: cursor, cancelToken: cancelToken),
    );
  }

  /// gallery/posts/create
  ///
  /// Calls POST /api/gallery/posts/create.
  ///
  /// Authentication required.
  Future<GalleryPost> postsCreate({
    required String title,
    String? description,
    required List<String> fileIds,
    bool isSensitive = false,
    CancelToken? cancelToken,
  }) async {
    return client.raw.gallery.postsCreate(
      GalleryPostsCreateRequest(
        title: title,
        description: description,
        fileIds: fileIds,
        isSensitive: isSensitive,
      ),
      cancelToken: cancelToken,
    );
  }

  /// gallery/posts/delete
  ///
  /// Calls POST /api/gallery/posts/delete.
  ///
  /// Authentication required.
  Future<void> postsDelete({
    required String postId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.gallery.postsDelete(
      GalleryPostsDeleteRequest(postId: postId),
      cancelToken: cancelToken,
    );
  }

  /// gallery/posts/like
  ///
  /// Calls POST /api/gallery/posts/like.
  ///
  /// Authentication required.
  Future<void> postsLike({
    required String postId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.gallery.postsLike(
      GalleryPostsLikeRequest(postId: postId),
      cancelToken: cancelToken,
    );
  }

  /// gallery/posts/show
  ///
  /// Calls POST /api/gallery/posts/show.
  Future<GalleryPost> postsShow({
    required String postId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.gallery.postsShow(
      GalleryPostsShowRequest(postId: postId),
      cancelToken: cancelToken,
    );
  }

  /// gallery/posts/unlike
  ///
  /// Calls POST /api/gallery/posts/unlike.
  ///
  /// Authentication required.
  Future<void> postsUnlike({
    required String postId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.gallery.postsUnlike(
      GalleryPostsUnlikeRequest(postId: postId),
      cancelToken: cancelToken,
    );
  }

  /// gallery/posts/update
  ///
  /// Calls POST /api/gallery/posts/update.
  ///
  /// Authentication required.
  Future<GalleryPost> postsUpdate({
    required String postId,
    String? title,
    String? description,
    List<String>? fileIds,
    bool isSensitive = false,
    CancelToken? cancelToken,
  }) async {
    return client.raw.gallery.postsUpdate(
      GalleryPostsUpdateRequest(
        postId: postId,
        title: title,
        description: description,
        fileIds: fileIds,
        isSensitive: isSensitive,
      ),
      cancelToken: cancelToken,
    );
  }
}
