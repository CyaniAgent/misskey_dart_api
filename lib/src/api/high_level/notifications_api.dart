// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../generated/notifications_models.dart';

class NotificationsApi {
  NotificationsApi(this.client);

  final MisskeyClient client;

  /// notifications/create
  ///
  /// Calls POST /api/notifications/create.
  ///
  /// Authentication required.
  Future<void> create({
    required String body,
    String? header,
    String? icon,
    CancelToken? cancelToken,
  }) async {
    return client.raw.notifications.create(
      NotificationsCreateRequest(body: body, header: header, icon: icon),
      cancelToken: cancelToken,
    );
  }

  /// notifications/flush
  ///
  /// Calls POST /api/notifications/flush.
  ///
  /// Authentication required.
  Future<void> flush({CancelToken? cancelToken}) async {
    return client.raw.notifications.flush(cancelToken: cancelToken);
  }

  /// notifications/mark-all-as-read
  ///
  /// Calls POST /api/notifications/mark-all-as-read.
  ///
  /// Authentication required.
  Future<void> markAllAsRead({CancelToken? cancelToken}) async {
    return client.raw.notifications.markAllAsRead(cancelToken: cancelToken);
  }

  /// notifications/test-notification
  ///
  /// Calls POST /api/notifications/test-notification.
  ///
  /// Authentication required.
  Future<void> testNotification({CancelToken? cancelToken}) async {
    return client.raw.notifications.testNotification(cancelToken: cancelToken);
  }
}
