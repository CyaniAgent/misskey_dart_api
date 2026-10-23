// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'pages_models.dart';

class PagesApi {
  PagesApi(this.client);

  final MisskeyClient client;

  Future<void> pagePush(
    PagesPagePushRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'page-push',
      body: request.toJson(),
      cancelToken: cancelToken,
    );
  }

  Future<Page> create(PagesCreateRequest request, {CancelToken? cancelToken}) {
    return client.postModel<Page>(
      'pages/create',
      body: request.toJson(),
      parser: Page.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<void> delete(PagesDeleteRequest request, {CancelToken? cancelToken}) {
    return client.postVoid(
      'pages/delete',
      body: request.toJson(),
      cancelToken: cancelToken,
    );
  }

  Future<List<Page>> featured({CancelToken? cancelToken}) {
    return client.postList<Page>(
      'pages/featured',
      itemParser: Page.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<void> like(PagesLikeRequest request, {CancelToken? cancelToken}) {
    return client.postVoid(
      'pages/like',
      body: request.toJson(),
      cancelToken: cancelToken,
    );
  }

  Future<Page> showValue(
    PagesShowValueRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<Page>(
      'pages/show',
      body: request.toJson(),
      parser: Page.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<void> unlike(PagesUnlikeRequest request, {CancelToken? cancelToken}) {
    return client.postVoid(
      'pages/unlike',
      body: request.toJson(),
      cancelToken: cancelToken,
    );
  }

  Future<void> update(PagesUpdateRequest request, {CancelToken? cancelToken}) {
    return client.postVoid(
      'pages/update',
      body: request.toJson(),
      cancelToken: cancelToken,
    );
  }
}
