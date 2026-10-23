// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'emoji_models.dart';

class EmojiApi {
  EmojiApi(this.client);

  final MisskeyClient client;

  Future<EmojiDetailed> get(
    EmojiGetRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<EmojiDetailed>(
      'emoji',
      body: request.toJson(),
      parser: EmojiDetailed.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<EmojiListResponse> list({CancelToken? cancelToken}) {
    return client.postModel<EmojiListResponse>(
      'emojis',
      parser: EmojiListResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<void> exportCustomEmojis({CancelToken? cancelToken}) {
    return client.postVoid('export-custom-emojis', cancelToken: cancelToken);
  }
}
