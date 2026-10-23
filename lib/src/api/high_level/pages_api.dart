// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import '../generated/pages_models.dart';

/// High-level endpoints for the `pages` API group.
class PagesApi {
  /// Creates a high-level `pages` API facade.
  PagesApi(this.client);

  /// The shared client used for transport and authentication.
  final MisskeyClient client;

  /// page-push
  ///
  /// Calls POST /api/page-push.
  ///
  /// Authentication required.
  Future<void> pagePush({
    required String pageId,
    required String event,
    JsonMap? varValue,
    CancelToken? cancelToken,
  }) async {
    return client.raw.pages.pagePush(
      PagesPagePushRequest(pageId: pageId, event: event, varValue: varValue),
      cancelToken: cancelToken,
    );
  }

  /// pages/create
  ///
  /// Calls POST /api/pages/create.
  ///
  /// Authentication required.
  Future<Page> create({
    required String title,
    required String name,
    String? summary,
    required List<JsonMap> content,
    required List<JsonMap> variables,
    required String script,
    String? eyeCatchingImageId,
    PagesCreateRequestFont font = PagesCreateRequestFont.sansSerif,
    bool alignCenter = false,
    bool hideTitleWhenPinned = false,
    CancelToken? cancelToken,
  }) async {
    return client.raw.pages.create(
      PagesCreateRequest(
        title: title,
        name: name,
        summary: summary,
        content: content,
        variables: variables,
        script: script,
        eyeCatchingImageId: eyeCatchingImageId,
        font: font,
        alignCenter: alignCenter,
        hideTitleWhenPinned: hideTitleWhenPinned,
      ),
      cancelToken: cancelToken,
    );
  }

  /// pages/delete
  ///
  /// Calls POST /api/pages/delete.
  ///
  /// Authentication required.
  Future<void> delete({
    required String pageId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.pages.delete(
      PagesDeleteRequest(pageId: pageId),
      cancelToken: cancelToken,
    );
  }

  /// pages/featured
  ///
  /// Calls POST /api/pages/featured.
  Future<List<Page>> featured({CancelToken? cancelToken}) async {
    return client.raw.pages.featured(cancelToken: cancelToken);
  }

  /// pages/like
  ///
  /// Calls POST /api/pages/like.
  ///
  /// Authentication required.
  Future<void> like({required String pageId, CancelToken? cancelToken}) async {
    return client.raw.pages.like(
      PagesLikeRequest(pageId: pageId),
      cancelToken: cancelToken,
    );
  }

  /// pages/show
  ///
  /// Calls POST /api/pages/show.
  Future<Page> showByPageId({
    required String pageId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.pages.showValue(
      PagesShowValueRequestByPageId(pageId: pageId),
      cancelToken: cancelToken,
    );
  }

  /// pages/show
  ///
  /// Calls POST /api/pages/show.
  Future<Page> showByName({
    required String name,
    required String username,
    CancelToken? cancelToken,
  }) async {
    return client.raw.pages.showValue(
      PagesShowValueRequestByName(name: name, username: username),
      cancelToken: cancelToken,
    );
  }

  /// pages/unlike
  ///
  /// Calls POST /api/pages/unlike.
  ///
  /// Authentication required.
  Future<void> unlike({
    required String pageId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.pages.unlike(
      PagesUnlikeRequest(pageId: pageId),
      cancelToken: cancelToken,
    );
  }

  /// pages/update
  ///
  /// Calls POST /api/pages/update.
  ///
  /// Authentication required.
  Future<void> update({
    required String pageId,
    String? title,
    String? name,
    String? summary,
    List<JsonMap>? content,
    List<JsonMap>? variables,
    String? script,
    String? eyeCatchingImageId,
    PagesUpdateRequestFont? font,
    bool? alignCenter,
    bool? hideTitleWhenPinned,
    CancelToken? cancelToken,
  }) async {
    return client.raw.pages.update(
      PagesUpdateRequest(
        pageId: pageId,
        title: title,
        name: name,
        summary: summary,
        content: content,
        variables: variables,
        script: script,
        eyeCatchingImageId: eyeCatchingImageId,
        font: font,
        alignCenter: alignCenter,
        hideTitleWhenPinned: hideTitleWhenPinned,
      ),
      cancelToken: cancelToken,
    );
  }
}
