// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'announcements_models.dart';

class AnnouncementsApi {
  AnnouncementsApi(this.client);

  final MisskeyClient client;

  Future<List<Announcement>> list(
    AnnouncementsListRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Announcement>(
      'announcements',
      body: request.toJson(),
      itemParser: Announcement.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<Announcement> showValue(
    AnnouncementsShowValueRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<Announcement>(
      'announcements/show',
      body: request.toJson(),
      parser: Announcement.fromJson,
      cancelToken: cancelToken,
    );
  }
}
