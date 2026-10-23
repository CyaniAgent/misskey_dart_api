// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../config.dart';
import '../../models/generated/generated.dart';
import '../generated/emoji_models.dart';

/// High-level endpoints for the `emoji` API group.
class EmojiApi {
  /// Creates a high-level `emoji` API facade.
  EmojiApi(this.client);

  /// The shared client used for transport and authentication.
  final MisskeyClient client;

  /// emoji
  ///
  /// Calls POST /api/emoji.
  Future<EmojiDetailed> get({
    required String name,
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) async {
    return client.raw.emoji.get(
      EmojiGetRequest(name: name),
      httpMethod: httpMethod,
      cancelToken: cancelToken,
    );
  }

  /// emojis
  ///
  /// Calls POST /api/emojis.
  Future<EmojiListResponse> list({
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) async {
    return client.raw.emoji.list(
      httpMethod: httpMethod,
      cancelToken: cancelToken,
    );
  }

  /// export-custom-emojis
  ///
  /// Calls POST /api/export-custom-emojis.
  ///
  /// Authentication required.
  Future<void> exportCustomEmojis({CancelToken? cancelToken}) async {
    return client.raw.emoji.exportCustomEmojis(cancelToken: cancelToken);
  }
}
