// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../config.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'emoji_models.dart';

/// Raw generated endpoints for the `emoji` API group.
class RawEmojiApi {
  /// Creates a raw `emoji` API facade.
  RawEmojiApi(this.client);

  /// The shared client used for transport and authentication.
  final MisskeyClient client;

  /// emoji
  ///
  /// Calls POST /api/emoji.
  Future<EmojiDetailed> get(
    EmojiGetRequest request, {
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) {
    return client.postModel<EmojiDetailed>(
      'emoji',
      body: request.toJson(),
      httpMethod: httpMethod,
      requiresAuth: false,
      parser: EmojiDetailed.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// emojis
  ///
  /// Calls POST /api/emojis.
  Future<EmojiListResponse> list({
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) {
    return client.postModel<EmojiListResponse>(
      'emojis',
      httpMethod: httpMethod,
      requiresAuth: false,
      parser: EmojiListResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// export-custom-emojis
  ///
  /// Calls POST /api/export-custom-emojis.
  ///
  /// Authentication required.
  Future<void> exportCustomEmojis({CancelToken? cancelToken}) {
    return client.postVoid(
      'export-custom-emojis',
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }
}
