// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'announcements_models.dart';

/// Raw generated endpoints for the `announcements` API group.
class RawAnnouncementsApi {
  /// Creates a raw `announcements` API facade.
  RawAnnouncementsApi(this.client);

  /// The shared client used for transport and authentication.
  final MisskeyClient client;

  /// announcements
  ///
  /// Calls POST /api/announcements.
  Future<List<Announcement>> list(
    AnnouncementsListRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Announcement>(
      'announcements',
      body: request.toJson(),
      requiresAuth: false,
      itemParser: Announcement.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// announcements/show
  ///
  /// Calls POST /api/announcements/show.
  Future<Announcement> showValue(
    AnnouncementsShowValueRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<Announcement>(
      'announcements/show',
      body: request.toJson(),
      requiresAuth: false,
      parser: Announcement.fromJson,
      cancelToken: cancelToken,
    );
  }
}
