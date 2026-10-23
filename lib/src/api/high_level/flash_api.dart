// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../pagination/cursor_page.dart';
import '../generated/flash_models.dart';

class FlashApi {
  FlashApi(this.client);

  final MisskeyClient client;

  /// flash/create
  ///
  /// Calls POST /api/flash/create.
  ///
  /// Authentication required.
  Future<Flash> create({
    required String title,
    required String summary,
    required String script,
    required List<String> permissions,
    FlashCreateRequestVisibility visibility =
        FlashCreateRequestVisibility.public,
    CancelToken? cancelToken,
  }) async {
    return client.raw.flash.create(
      FlashCreateRequest(
        title: title,
        summary: summary,
        script: script,
        permissions: permissions,
        visibility: visibility,
      ),
      cancelToken: cancelToken,
    );
  }

  /// flash/delete
  ///
  /// Calls POST /api/flash/delete.
  ///
  /// Authentication required.
  Future<void> delete({
    required String flashId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.flash.delete(
      FlashDeleteRequest(flashId: flashId),
      cancelToken: cancelToken,
    );
  }

  /// flash/featured
  ///
  /// Calls POST /api/flash/featured.
  Future<List<Flash>> featured({
    int offset = 0,
    int limit = 10,
    CancelToken? cancelToken,
  }) async {
    return client.raw.flash.featured(
      FlashFeaturedRequest(offset: offset, limit: limit),
      cancelToken: cancelToken,
    );
  }

  /// flash/like
  ///
  /// Calls POST /api/flash/like.
  ///
  /// Authentication required.
  Future<void> like({required String flashId, CancelToken? cancelToken}) async {
    return client.raw.flash.like(
      FlashLikeRequest(flashId: flashId),
      cancelToken: cancelToken,
    );
  }

  /// flash/my
  ///
  /// Calls POST /api/flash/my.
  ///
  /// Authentication required.
  Future<List<Flash>> my({
    int limit = 10,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    CancelToken? cancelToken,
  }) async {
    return client.raw.flash.my(
      FlashMyRequest(
        limit: limit,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [my].
  Future<CursorPage<Flash>> myPage({
    int limit = 20,
    String? untilId,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<Flash>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) =>
          my(limit: pageLimit, untilId: cursor, cancelToken: cancelToken),
    );
  }

  /// flash/my-likes
  ///
  /// Calls POST /api/flash/my-likes.
  ///
  /// Authentication required.
  Future<List<FlashMyLikesResponseItem>> myLikes({
    int limit = 10,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    String? search,
    CancelToken? cancelToken,
  }) async {
    return client.raw.flash.myLikes(
      FlashMyLikesRequest(
        limit: limit,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
        search: search,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [myLikes].
  Future<CursorPage<FlashMyLikesResponseItem>> myLikesPage({
    int limit = 20,
    String? untilId,
    String? search,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<FlashMyLikesResponseItem>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => myLikes(
        limit: pageLimit,
        untilId: cursor,
        search: search,
        cancelToken: cancelToken,
      ),
    );
  }

  /// flash/search
  ///
  /// Calls POST /api/flash/search.
  Future<List<Flash>> search({
    required String query,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    int limit = 5,
    CancelToken? cancelToken,
  }) async {
    return client.raw.flash.search(
      FlashSearchRequest(
        query: query,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
        limit: limit,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [search].
  Future<CursorPage<Flash>> searchPage({
    int limit = 20,
    String? untilId,
    required String query,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<Flash>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => search(
        limit: pageLimit,
        untilId: cursor,
        query: query,
        cancelToken: cancelToken,
      ),
    );
  }

  /// flash/show
  ///
  /// Calls POST /api/flash/show.
  Future<Flash> showValue({
    required String flashId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.flash.showValue(
      FlashShowValueRequest(flashId: flashId),
      cancelToken: cancelToken,
    );
  }

  /// flash/unlike
  ///
  /// Calls POST /api/flash/unlike.
  ///
  /// Authentication required.
  Future<void> unlike({
    required String flashId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.flash.unlike(
      FlashUnlikeRequest(flashId: flashId),
      cancelToken: cancelToken,
    );
  }

  /// flash/update
  ///
  /// Calls POST /api/flash/update.
  ///
  /// Authentication required.
  Future<void> update({
    required String flashId,
    String? title,
    String? summary,
    String? script,
    List<String>? permissions,
    FlashUpdateRequestVisibility? visibility,
    CancelToken? cancelToken,
  }) async {
    return client.raw.flash.update(
      FlashUpdateRequest(
        flashId: flashId,
        title: title,
        summary: summary,
        script: script,
        permissions: permissions,
        visibility: visibility,
      ),
      cancelToken: cancelToken,
    );
  }
}
