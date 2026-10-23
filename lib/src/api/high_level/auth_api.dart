// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../generated/auth_models.dart';

/// High-level endpoints for the `auth` API group.
class AuthApi {
  /// Creates a high-level `auth` API facade.
  AuthApi(this.client);

  /// The shared client used for transport and authentication.
  final MisskeyClient client;

  /// auth/accept
  ///
  /// Calls POST /api/auth/accept.
  ///
  /// Authentication required.
  Future<void> accept({required String token, CancelToken? cancelToken}) async {
    return client.raw.auth.accept(
      AuthAcceptRequest(token: token),
      cancelToken: cancelToken,
    );
  }

  /// auth/session/generate
  ///
  /// Calls POST /api/auth/session/generate.
  Future<AuthSessionGenerateResponse> sessionGenerate({
    required String appSecret,
    CancelToken? cancelToken,
  }) async {
    return client.raw.auth.sessionGenerate(
      AuthSessionGenerateRequest(appSecret: appSecret),
      cancelToken: cancelToken,
    );
  }

  /// auth/session/show
  ///
  /// Calls POST /api/auth/session/show.
  Future<AuthSessionShowResponse> sessionShow({
    required String token,
    CancelToken? cancelToken,
  }) async {
    return client.raw.auth.sessionShow(
      AuthSessionShowRequest(token: token),
      cancelToken: cancelToken,
    );
  }

  /// auth/session/userkey
  ///
  /// Calls POST /api/auth/session/userkey.
  Future<AuthSessionUserkeyResponse> sessionUserkey({
    required String appSecret,
    required String token,
    CancelToken? cancelToken,
  }) async {
    return client.raw.auth.sessionUserkey(
      AuthSessionUserkeyRequest(appSecret: appSecret, token: token),
      cancelToken: cancelToken,
    );
  }

  /// miauth/gen-token
  ///
  /// Calls POST /api/miauth/gen-token.
  ///
  /// Authentication required.
  Future<AuthMiAuthGenTokenResponse> miAuthGenToken({
    required String? session,
    String? name,
    String? description,
    String? iconUrl,
    required List<String> permission,
    CancelToken? cancelToken,
  }) async {
    return client.raw.auth.miAuthGenToken(
      AuthMiAuthGenTokenRequest(
        session: session,
        name: name,
        description: description,
        iconUrl: iconUrl,
        permission: permission,
      ),
      cancelToken: cancelToken,
    );
  }

  /// request-reset-password
  ///
  /// Calls POST /api/request-reset-password.
  Future<void> requestResetPassword({
    required String username,
    required String email,
    CancelToken? cancelToken,
  }) async {
    return client.raw.auth.requestResetPassword(
      AuthRequestResetPasswordRequest(username: username, email: email),
      cancelToken: cancelToken,
    );
  }

  /// reset-password
  ///
  /// Calls POST /api/reset-password.
  Future<void> resetPassword({
    required String token,
    required String password,
    CancelToken? cancelToken,
  }) async {
    return client.raw.auth.resetPassword(
      AuthResetPasswordRequest(token: token, password: password),
      cancelToken: cancelToken,
    );
  }
}
