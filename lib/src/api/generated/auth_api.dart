// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'auth_models.dart';

class AuthApi {
  AuthApi(this.client);

  final MisskeyClient client;

  Future<void> accept(AuthAcceptRequest request, {CancelToken? cancelToken}) {
    return client.postVoid(
      'auth/accept',
      body: request.toJson(),
      cancelToken: cancelToken,
    );
  }

  Future<AuthSessionGenerateResponse> sessionGenerate(
    AuthSessionGenerateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<AuthSessionGenerateResponse>(
      'auth/session/generate',
      body: request.toJson(),
      parser: AuthSessionGenerateResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<AuthSessionShowResponse> sessionShow(
    AuthSessionShowRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<AuthSessionShowResponse>(
      'auth/session/show',
      body: request.toJson(),
      parser: AuthSessionShowResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<AuthSessionUserkeyResponse> sessionUserkey(
    AuthSessionUserkeyRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<AuthSessionUserkeyResponse>(
      'auth/session/userkey',
      body: request.toJson(),
      parser: AuthSessionUserkeyResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<AuthMiAuthGenTokenResponse> miAuthGenToken(
    AuthMiAuthGenTokenRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<AuthMiAuthGenTokenResponse>(
      'miauth/gen-token',
      body: request.toJson(),
      parser: AuthMiAuthGenTokenResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<void> requestResetPassword(
    AuthRequestResetPasswordRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'request-reset-password',
      body: request.toJson(),
      cancelToken: cancelToken,
    );
  }

  Future<void> resetPassword(
    AuthResetPasswordRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'reset-password',
      body: request.toJson(),
      cancelToken: cancelToken,
    );
  }
}
