// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'invite_models.dart';

class InviteApi {
  InviteApi(this.client);

  final MisskeyClient client;

  Future<InviteCode> create({CancelToken? cancelToken}) {
    return client.postModel<InviteCode>(
      'invite/create',
      parser: InviteCode.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<void> delete(InviteDeleteRequest request, {CancelToken? cancelToken}) {
    return client.postVoid(
      'invite/delete',
      body: request.toJson(),
      cancelToken: cancelToken,
    );
  }

  Future<InviteLimitResponse> limit({CancelToken? cancelToken}) {
    return client.postModel<InviteLimitResponse>(
      'invite/limit',
      parser: InviteLimitResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<InviteCode>> list(
    InviteListRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<InviteCode>(
      'invite/list',
      body: request.toJson(),
      itemParser: InviteCode.fromJson,
      cancelToken: cancelToken,
    );
  }
}
