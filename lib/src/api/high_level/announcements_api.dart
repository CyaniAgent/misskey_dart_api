// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../pagination/cursor_page.dart';
import '../generated/announcements_models.dart';

/// High-level endpoints for the `announcements` API group.
class AnnouncementsApi {
  /// Creates a high-level `announcements` API facade.
  AnnouncementsApi(this.client);

  /// The shared client used for transport and authentication.
  final MisskeyClient client;

  /// announcements
  ///
  /// Calls POST /api/announcements.
  Future<List<Announcement>> list({
    int limit = 10,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    bool isActive = true,
    CancelToken? cancelToken,
  }) async {
    return client.raw.announcements.list(
      AnnouncementsListRequest(
        limit: limit,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
        isActive: isActive,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [list].
  Future<CursorPage<Announcement>> listPage({
    int limit = 20,
    String? untilId,
    bool isActive = true,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<Announcement>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => list(
        limit: pageLimit,
        untilId: cursor,
        isActive: isActive,
        cancelToken: cancelToken,
      ),
    );
  }

  /// announcements/show
  ///
  /// Calls POST /api/announcements/show.
  Future<Announcement> showValue({
    required String announcementId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.announcements.showValue(
      AnnouncementsShowValueRequest(announcementId: announcementId),
      cancelToken: cancelToken,
    );
  }
}
