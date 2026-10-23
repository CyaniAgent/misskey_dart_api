// SPDX-License-Identifier: BSD-3-Clause

import 'dart:math';

import 'package:dio/dio.dart';

import 'client.dart';
import 'models/json.dart';

/// The result of a completed MiAuth check.
final class MiAuthResult {
  const MiAuthResult({required this.token, required this.user});

  final String token;
  final JsonMap user;

  factory MiAuthResult.fromJson(Map<String, dynamic> json) {
    return MiAuthResult(
      token: json['token'] as String,
      user: Map<String, dynamic>.from(json['user'] as Map),
    );
  }
}

/// Misskey's MiAuth token acquisition flow.
class MiAuth {
  MiAuth(this._client);

  final MisskeyClient _client;

  /// Generates a UUID v4 session identifier.
  String createSessionId([Random? random]) {
    final source = random ?? Random.secure();
    final bytes = List<int>.generate(16, (_) => source.nextInt(256));
    bytes[6] = (bytes[6] & 0x0f) | 0x40;
    bytes[8] = (bytes[8] & 0x3f) | 0x80;
    final hex = bytes
        .map((byte) => byte.toRadixString(16).padLeft(2, '0'))
        .join();
    return '${hex.substring(0, 8)}-${hex.substring(8, 12)}-'
        '${hex.substring(12, 16)}-${hex.substring(16, 20)}-'
        '${hex.substring(20)}';
  }

  /// Builds the browser authorization URL for [sessionId].
  Uri buildAuthorizationUri({
    required String sessionId,
    String? name,
    String? iconUrl,
    String? callbackUrl,
    required List<String> permissions,
  }) {
    final query = <String, String>{};
    if (name != null && name.isNotEmpty) query['name'] = name;
    if (iconUrl != null && iconUrl.isNotEmpty) query['icon'] = iconUrl;
    if (callbackUrl != null && callbackUrl.isNotEmpty) {
      query['callback'] = callbackUrl;
    }
    if (permissions.isNotEmpty) query['permission'] = permissions.join(',');
    return _client.baseUri.replace(
      path: '/miauth/$sessionId',
      queryParameters: query.isEmpty ? null : query,
    );
  }

  /// Checks whether the user approved [sessionId].
  Future<MiAuthResult> check(String sessionId, {CancelToken? cancelToken}) {
    return _client.postModel<MiAuthResult>(
      'miauth/$sessionId/check',
      parser: MiAuthResult.fromJson,
      cancelToken: cancelToken,
    );
  }
}
