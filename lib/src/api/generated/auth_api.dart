// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'auth_models.dart';

/// Raw generated endpoints for the `auth` API group.
class RawAuthApi {
  /// Creates a raw `auth` API facade.
  RawAuthApi(this.client);

  /// The shared client used for transport and authentication.
  final MisskeyClient client;

  /// auth/accept
  ///
  /// Calls POST /api/auth/accept.
  ///
  /// Authentication required.
  Future<void> accept(AuthAcceptRequest request, {CancelToken? cancelToken}) {
    return client.postVoid(
      'auth/accept',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// auth/session/generate
  ///
  /// Calls POST /api/auth/session/generate.
  Future<AuthSessionGenerateResponse> sessionGenerate(
    AuthSessionGenerateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<AuthSessionGenerateResponse>(
      'auth/session/generate',
      body: request.toJson(),
      requiresAuth: false,
      parser: AuthSessionGenerateResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// auth/session/show
  ///
  /// Calls POST /api/auth/session/show.
  Future<AuthSessionShowResponse> sessionShow(
    AuthSessionShowRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<AuthSessionShowResponse>(
      'auth/session/show',
      body: request.toJson(),
      requiresAuth: false,
      parser: AuthSessionShowResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// auth/session/userkey
  ///
  /// Calls POST /api/auth/session/userkey.
  Future<AuthSessionUserkeyResponse> sessionUserkey(
    AuthSessionUserkeyRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<AuthSessionUserkeyResponse>(
      'auth/session/userkey',
      body: request.toJson(),
      requiresAuth: false,
      parser: AuthSessionUserkeyResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// miauth/gen-token
  ///
  /// Calls POST /api/miauth/gen-token.
  ///
  /// Authentication required.
  Future<AuthMiAuthGenTokenResponse> miAuthGenToken(
    AuthMiAuthGenTokenRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<AuthMiAuthGenTokenResponse>(
      'miauth/gen-token',
      body: request.toJson(),
      requiresAuth: true,
      parser: AuthMiAuthGenTokenResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// request-reset-password
  ///
  /// Calls POST /api/request-reset-password.
  Future<void> requestResetPassword(
    AuthRequestResetPasswordRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'request-reset-password',
      body: request.toJson(),
      requiresAuth: false,
      cancelToken: cancelToken,
    );
  }

  /// reset-password
  ///
  /// Calls POST /api/reset-password.
  Future<void> resetPassword(
    AuthResetPasswordRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'reset-password',
      body: request.toJson(),
      requiresAuth: false,
      cancelToken: cancelToken,
    );
  }
}
