// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'notifications_models.dart';

/// Raw generated endpoints for the `notifications` API group.
class RawNotificationsApi {
  /// Creates a raw `notifications` API facade.
  RawNotificationsApi(this.client);

  /// The shared client used for transport and authentication.
  final MisskeyClient client;

  /// notifications/create
  ///
  /// Calls POST /api/notifications/create.
  ///
  /// Authentication required.
  Future<void> create(
    NotificationsCreateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'notifications/create',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// notifications/flush
  ///
  /// Calls POST /api/notifications/flush.
  ///
  /// Authentication required.
  Future<void> flush({CancelToken? cancelToken}) {
    return client.postVoid(
      'notifications/flush',
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// notifications/mark-all-as-read
  ///
  /// Calls POST /api/notifications/mark-all-as-read.
  ///
  /// Authentication required.
  Future<void> markAllAsRead({CancelToken? cancelToken}) {
    return client.postVoid(
      'notifications/mark-all-as-read',
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// notifications/test-notification
  ///
  /// Calls POST /api/notifications/test-notification.
  ///
  /// Authentication required.
  Future<void> testNotification({CancelToken? cancelToken}) {
    return client.postVoid(
      'notifications/test-notification',
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }
}
