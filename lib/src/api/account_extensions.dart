// SPDX-License-Identifier: BSD-3-Clause

import 'package:dio/dio.dart';

import '../models/generated/generated.dart';
import 'high_level/account_api.dart';
import 'raw_extensions.dart';

/// Hand-written account helpers.
extension AccountApiHandWritten on AccountApi {
  /// Returns the authenticated user's detailed profile.
  Future<MeDetailed> me({CancelToken? cancelToken}) {
    return client.raw.account.me(cancelToken: cancelToken);
  }

  /// Removes a push subscription from the server.
  ///
  /// Sends `endpoint`, `auth` and `publickey` together: Misskey 2026.10 made
  /// the endpoint credential-free and identifies the subscription by its own
  /// keys, while 2026.9 and earlier took only `endpoint`. The union works on
  /// both — the endpoint ignored unknown properties before the change (its
  /// schema never closed the object) and needs all three afterwards.
  ///
  /// Neither version accepts a token here, so this is the one push call a
  /// client holding an access token can make.
  Future<void> swUnregisterSubscription({
    required String endpoint,
    required String auth,
    required String publickey,
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'sw/unregister',
      body: {'endpoint': endpoint, 'auth': auth, 'publickey': publickey},
      requiresAuth: false,
      cancelToken: cancelToken,
    );
  }
}
