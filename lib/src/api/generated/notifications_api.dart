// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'notifications_models.dart';

class NotificationsApi {
  NotificationsApi(this.client);

  final MisskeyClient client;

  Future<void> create(
    NotificationsCreateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'notifications/create',
      body: request.toJson(),
      cancelToken: cancelToken,
    );
  }

  Future<void> flush({CancelToken? cancelToken}) {
    return client.postVoid('notifications/flush', cancelToken: cancelToken);
  }

  Future<void> markAllAsRead({CancelToken? cancelToken}) {
    return client.postVoid(
      'notifications/mark-all-as-read',
      cancelToken: cancelToken,
    );
  }

  Future<void> testNotification({CancelToken? cancelToken}) {
    return client.postVoid(
      'notifications/test-notification',
      cancelToken: cancelToken,
    );
  }
}
