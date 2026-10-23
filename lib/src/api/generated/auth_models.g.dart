// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthAcceptRequest _$AuthAcceptRequestFromJson(Map<String, dynamic> json) =>
    AuthAcceptRequest(token: json['token'] as String);

Map<String, dynamic> _$AuthAcceptRequestToJson(AuthAcceptRequest instance) =>
    <String, dynamic>{'token': instance.token};

AuthSessionGenerateRequest _$AuthSessionGenerateRequestFromJson(
  Map<String, dynamic> json,
) => AuthSessionGenerateRequest(appSecret: json['appSecret'] as String);

Map<String, dynamic> _$AuthSessionGenerateRequestToJson(
  AuthSessionGenerateRequest instance,
) => <String, dynamic>{'appSecret': instance.appSecret};

AuthSessionGenerateResponse _$AuthSessionGenerateResponseFromJson(
  Map<String, dynamic> json,
) => AuthSessionGenerateResponse(
  token: json['token'] as String,
  url: json['url'] as String,
);

Map<String, dynamic> _$AuthSessionGenerateResponseToJson(
  AuthSessionGenerateResponse instance,
) => <String, dynamic>{'token': instance.token, 'url': instance.url};

AuthSessionShowRequest _$AuthSessionShowRequestFromJson(
  Map<String, dynamic> json,
) => AuthSessionShowRequest(token: json['token'] as String);

Map<String, dynamic> _$AuthSessionShowRequestToJson(
  AuthSessionShowRequest instance,
) => <String, dynamic>{'token': instance.token};

AuthSessionShowResponse _$AuthSessionShowResponseFromJson(
  Map<String, dynamic> json,
) => AuthSessionShowResponse(
  id: json['id'] as String,
  app: App.fromJson(json['app'] as Map<String, dynamic>),
  token: json['token'] as String,
);

Map<String, dynamic> _$AuthSessionShowResponseToJson(
  AuthSessionShowResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'app': instance.app.toJson(),
  'token': instance.token,
};

AuthSessionUserkeyRequest _$AuthSessionUserkeyRequestFromJson(
  Map<String, dynamic> json,
) => AuthSessionUserkeyRequest(
  appSecret: json['appSecret'] as String,
  token: json['token'] as String,
);

Map<String, dynamic> _$AuthSessionUserkeyRequestToJson(
  AuthSessionUserkeyRequest instance,
) => <String, dynamic>{
  'appSecret': instance.appSecret,
  'token': instance.token,
};

AuthSessionUserkeyResponse _$AuthSessionUserkeyResponseFromJson(
  Map<String, dynamic> json,
) => AuthSessionUserkeyResponse(
  accessToken: json['accessToken'] as String,
  user: UserDetailedNotMe.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AuthSessionUserkeyResponseToJson(
  AuthSessionUserkeyResponse instance,
) => <String, dynamic>{
  'accessToken': instance.accessToken,
  'user': instance.user.toJson(),
};

AuthMiAuthGenTokenRequest _$AuthMiAuthGenTokenRequestFromJson(
  Map<String, dynamic> json,
) => AuthMiAuthGenTokenRequest(
  session: json['session'] as String?,
  name: json['name'] as String?,
  description: json['description'] as String?,
  iconUrl: json['iconUrl'] as String?,
  permission: (json['permission'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$AuthMiAuthGenTokenRequestToJson(
  AuthMiAuthGenTokenRequest instance,
) => <String, dynamic>{
  'session': instance.session,
  'name': ?instance.name,
  'description': ?instance.description,
  'iconUrl': ?instance.iconUrl,
  'permission': instance.permission,
};

AuthMiAuthGenTokenResponse _$AuthMiAuthGenTokenResponseFromJson(
  Map<String, dynamic> json,
) => AuthMiAuthGenTokenResponse(token: json['token'] as String);

Map<String, dynamic> _$AuthMiAuthGenTokenResponseToJson(
  AuthMiAuthGenTokenResponse instance,
) => <String, dynamic>{'token': instance.token};

AuthRequestResetPasswordRequest _$AuthRequestResetPasswordRequestFromJson(
  Map<String, dynamic> json,
) => AuthRequestResetPasswordRequest(
  username: json['username'] as String,
  email: json['email'] as String,
);

Map<String, dynamic> _$AuthRequestResetPasswordRequestToJson(
  AuthRequestResetPasswordRequest instance,
) => <String, dynamic>{'username': instance.username, 'email': instance.email};

AuthResetPasswordRequest _$AuthResetPasswordRequestFromJson(
  Map<String, dynamic> json,
) => AuthResetPasswordRequest(
  token: json['token'] as String,
  password: json['password'] as String,
);

Map<String, dynamic> _$AuthResetPasswordRequestToJson(
  AuthResetPasswordRequest instance,
) => <String, dynamic>{'token': instance.token, 'password': instance.password};
