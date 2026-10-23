// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/generated/generated.dart';
import '../../models/json.dart';

part 'auth_models.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AuthAcceptRequest {
  const AuthAcceptRequest({required this.token});
  final String token;

  factory AuthAcceptRequest.fromJson(Map<String, dynamic> json) =>
      _$AuthAcceptRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AuthAcceptRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AuthSessionGenerateRequest {
  const AuthSessionGenerateRequest({required this.appSecret});
  final String appSecret;

  factory AuthSessionGenerateRequest.fromJson(Map<String, dynamic> json) =>
      _$AuthSessionGenerateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AuthSessionGenerateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AuthSessionGenerateResponse {
  const AuthSessionGenerateResponse({required this.token, required this.url});
  final String token;
  final String url;

  factory AuthSessionGenerateResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthSessionGenerateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AuthSessionGenerateResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AuthSessionShowRequest {
  const AuthSessionShowRequest({required this.token});
  final String token;

  factory AuthSessionShowRequest.fromJson(Map<String, dynamic> json) =>
      _$AuthSessionShowRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AuthSessionShowRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AuthSessionShowResponse {
  const AuthSessionShowResponse({
    required this.id,
    required this.app,
    required this.token,
  });
  final String id;
  final App app;
  final String token;

  factory AuthSessionShowResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthSessionShowResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AuthSessionShowResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AuthSessionUserkeyRequest {
  const AuthSessionUserkeyRequest({
    required this.appSecret,
    required this.token,
  });
  final String appSecret;
  final String token;

  factory AuthSessionUserkeyRequest.fromJson(Map<String, dynamic> json) =>
      _$AuthSessionUserkeyRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AuthSessionUserkeyRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AuthSessionUserkeyResponse {
  const AuthSessionUserkeyResponse({
    required this.accessToken,
    required this.user,
  });
  final String accessToken;
  final UserDetailedNotMe user;

  factory AuthSessionUserkeyResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthSessionUserkeyResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AuthSessionUserkeyResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AuthMiAuthGenTokenRequest {
  const AuthMiAuthGenTokenRequest({
    @JsonKey(name: 'session', includeIfNull: true) required this.session,
    this.name,
    this.description,
    this.iconUrl,
    required this.permission,
  });
  final String? session;
  final String? name;
  final String? description;
  final String? iconUrl;
  final List<String> permission;

  factory AuthMiAuthGenTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$AuthMiAuthGenTokenRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AuthMiAuthGenTokenRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AuthMiAuthGenTokenResponse {
  const AuthMiAuthGenTokenResponse({required this.token});
  final String token;

  factory AuthMiAuthGenTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthMiAuthGenTokenResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AuthMiAuthGenTokenResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AuthRequestResetPasswordRequest {
  const AuthRequestResetPasswordRequest({
    required this.username,
    required this.email,
  });
  final String username;
  final String email;

  factory AuthRequestResetPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$AuthRequestResetPasswordRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AuthRequestResetPasswordRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AuthResetPasswordRequest {
  const AuthResetPasswordRequest({required this.token, required this.password});
  final String token;
  final String password;

  factory AuthResetPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$AuthResetPasswordRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AuthResetPasswordRequestToJson(this);
}
