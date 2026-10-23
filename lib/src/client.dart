// SPDX-License-Identifier: BSD-3-Clause

// ignore_for_file: prefer_initializing_formals

import 'dart:async';

import 'package:dio/dio.dart';

import 'api/high_level/generated.dart';
import 'client/token_provider.dart';
import 'config.dart';
import 'exceptions.dart';
import 'miauth.dart';
import 'models/json.dart';
import 'raw_client.dart';
import 'streaming/streaming_client.dart';

/// A client for a single Misskey instance.
class MisskeyClient {
  /// Creates a client for [config].
  MisskeyClient({
    required MisskeyClientConfig config,
    TokenProvider? tokenProvider,
    Dio? dio,
  }) : _config = config,
       _tokenProvider = tokenProvider,
       _baseUri = _normalizeBaseUri(config.baseUri, config.allowInsecureHttp),
       _dio = dio ?? Dio() {
    _dio.options
      ..connectTimeout = config.connectTimeout
      ..receiveTimeout = config.receiveTimeout
      ..sendTimeout = config.sendTimeout
      ..headers['User-Agent'] = config.userAgent ?? misskeyDartApiUserAgent;
    account = AccountApi(this);
    announcements = AnnouncementsApi(this);
    antennas = AntennasApi(this);
    app = AppApi(this);
    auth = AuthApi(this);
    blocking = BlockingApi(this);
    bubbleGame = BubbleGameApi(this);
    channels = ChannelsApi(this);
    charts = ChartsApi(this);
    chat = ChatApi(this);
    clips = ClipsApi(this);
    drive = DriveApi(this);
    emoji = EmojiApi(this);
    federation = FederationApi(this);
    flash = FlashApi(this);
    following = FollowingApi(this);
    gallery = GalleryApi(this);
    hashtags = HashtagsApi(this);
    invite = InviteApi(this);
    meta = MetaApi(this);
    mute = MuteApi(this);
    nonProductive = NonProductiveApi(this);
    notes = NotesApi(this);
    notifications = NotificationsApi(this);
    pages = PagesApi(this);
    renoteMute = RenoteMuteApi(this);
    reversi = ReversiApi(this);
    roles = RolesApi(this);
    users = UsersApi(this);
    miAuth = MiAuth(this);
  }

  /// Creates a client from a host or origin.
  ///
  /// A bare host such as `misskey.io` is treated as HTTPS. Set
  /// [allowInsecureHttp] only for local development.
  factory MisskeyClient.fromHost(
    String host, {
    String? accessToken,
    TokenProvider? tokenProvider,
    String? userAgent,
    MisskeyAuthMode authMode = MisskeyAuthMode.bearer,
    bool allowInsecureHttp = false,
    Dio? dio,
  }) {
    if (accessToken != null && tokenProvider != null) {
      throw ArgumentError(
        'Provide either accessToken or tokenProvider, not both.',
      );
    }
    return MisskeyClient(
      config: MisskeyClientConfig(
        baseUri: _parseHost(host, allowInsecureHttp),
        userAgent: userAgent,
        authMode: authMode,
        allowInsecureHttp: allowInsecureHttp,
      ),
      tokenProvider: accessToken == null ? tokenProvider : () => accessToken,
      dio: dio,
    );
  }

  final MisskeyClientConfig _config;
  final TokenProvider? _tokenProvider;
  final Uri _baseUri;
  final Dio _dio;

  late final AccountApi account;
  late final AnnouncementsApi announcements;
  late final AntennasApi antennas;
  late final AppApi app;
  late final AuthApi auth;
  late final BlockingApi blocking;
  late final BubbleGameApi bubbleGame;
  late final ChannelsApi channels;
  late final ChartsApi charts;
  late final ChatApi chat;
  late final ClipsApi clips;
  late final DriveApi drive;
  late final EmojiApi emoji;
  late final FederationApi federation;
  late final FlashApi flash;
  late final FollowingApi following;
  late final GalleryApi gallery;
  late final HashtagsApi hashtags;
  late final InviteApi invite;
  late final MetaApi meta;
  late final MuteApi mute;
  late final NonProductiveApi nonProductive;
  late final NotesApi notes;
  late final NotificationsApi notifications;
  late final PagesApi pages;
  late final RenoteMuteApi renoteMute;
  late final ReversiApi reversi;
  late final RolesApi roles;
  late final UsersApi users;
  late final MiAuth miAuth;
  MisskeyRawClient? _raw;
  MisskeyStreamingClient? _streaming;

  /// The complete generated API, including admin endpoints.
  MisskeyRawClient get raw => _raw ??= MisskeyRawClient(this);

  MisskeyStreamingClient get streaming => _streaming ??= MisskeyStreamingClient(
    baseUri: _baseUri,
    tokenProvider: _tokenProvider,
    authMode: _config.authMode,
    allowInsecureHttp: _config.allowInsecureHttp,
  );

  /// The instance origin, without a trailing path.
  Uri get baseUri => _baseUri;

  Future<String?> _resolveToken({required bool requiresAuth}) async {
    if (_config.authMode == MisskeyAuthMode.none) {
      if (requiresAuth) {
        throw MisskeyAuthenticationException(
          'Authentication required.',
          code: 'NO_TOKEN',
        );
      }
      return null;
    }

    final provider = _tokenProvider;
    String? token;
    if (provider != null) {
      try {
        token = await provider();
      } catch (error) {
        throw MisskeyAuthenticationException(
          'Failed to obtain an access token.',
          code: 'TOKEN_UNAVAILABLE',
          cause: error,
        );
      }
    }

    if (token == null || token.isEmpty) {
      if (requiresAuth) {
        throw MisskeyAuthenticationException(
          'Authentication required.',
          code: 'NO_TOKEN',
        );
      }
      return null;
    }
    return token;
  }

  /// Sends [endpoint] and parses its response with [parser].
  Future<T> postParsed<T>(
    String endpoint, {
    JsonMap? body,
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    bool requiresAuth = false,
    required T Function(Object? data) parser,
    CancelToken? cancelToken,
  }) async {
    final response = await _send(
      endpoint,
      body: body,
      httpMethod: httpMethod,
      requiresAuth: requiresAuth,
      cancelToken: cancelToken,
    );
    try {
      return parser(response.data);
    } on MisskeyApiException {
      rethrow;
    } catch (error) {
      throw MisskeyApiException(
        'Failed to parse $endpoint response.',
        uri: response.requestOptions.uri,
        statusCode: response.statusCode,
        raw: response.data,
        cause: error,
      );
    }
  }

  /// Sends [endpoint] and parses a JSON object response with [parser].
  Future<T> postModel<T>(
    String endpoint, {
    JsonMap? body,
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    bool requiresAuth = false,
    required T Function(JsonMap json) parser,
    CancelToken? cancelToken,
  }) {
    return postParsed<T>(
      endpoint,
      body: body,
      httpMethod: httpMethod,
      requiresAuth: requiresAuth,
      cancelToken: cancelToken,
      parser: (data) {
        if (data is! Map) {
          throw FormatException('Expected a JSON object from $endpoint.');
        }
        return parser(Map<String, dynamic>.from(data));
      },
    );
  }

  /// Sends [endpoint] and returns a JSON object response.
  Future<Map<String, dynamic>> postMap(
    String endpoint, {
    JsonMap? body,
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    bool requiresAuth = false,
    CancelToken? cancelToken,
  }) {
    return postModel<Map<String, dynamic>>(
      endpoint,
      body: body,
      httpMethod: httpMethod,
      requiresAuth: requiresAuth,
      cancelToken: cancelToken,
      parser: (json) => json,
    );
  }

  /// Sends [endpoint] and parses a nullable JSON object response.
  Future<T?> postNullableModel<T>(
    String endpoint, {
    JsonMap? body,
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    bool requiresAuth = false,
    required T Function(JsonMap json) parser,
    CancelToken? cancelToken,
  }) {
    return postParsed<T?>(
      endpoint,
      body: body,
      httpMethod: httpMethod,
      requiresAuth: requiresAuth,
      cancelToken: cancelToken,
      parser: (data) {
        if (data == null) return null;
        if (data is! Map) {
          throw FormatException('Expected a JSON object from $endpoint.');
        }
        return parser(Map<String, dynamic>.from(data));
      },
    );
  }

  /// Sends a multipart request and parses a JSON object response.
  Future<T> postMultipartModel<T>(
    String endpoint, {
    required FormData body,
    required T Function(JsonMap json) parser,
    bool requiresAuth = false,
    CancelToken? cancelToken,
  }) async {
    final uri = _endpointUri(endpoint);
    final headers = <String, dynamic>{};
    final token = await _resolveToken(requiresAuth: requiresAuth);
    if (token != null) {
      switch (_config.authMode) {
        case MisskeyAuthMode.bearer:
          headers['Authorization'] = 'Bearer $token';
        case MisskeyAuthMode.body:
          body.fields.add(MapEntry('i', token));
        case MisskeyAuthMode.none:
          break;
      }
    }
    try {
      final response = await _dio.postUri<dynamic>(
        uri,
        data: body,
        options: Options(headers: headers.isEmpty ? null : headers),
        cancelToken: cancelToken,
      );
      final data = response.data;
      if (data is! Map) {
        throw MisskeyApiException(
          'Expected a JSON object from $endpoint.',
          uri: uri,
          statusCode: response.statusCode,
          raw: data,
        );
      }
      try {
        return parser(Map<String, dynamic>.from(data));
      } catch (error) {
        throw MisskeyApiException(
          'Failed to parse $endpoint response.',
          uri: uri,
          statusCode: response.statusCode,
          raw: data,
          cause: error,
        );
      }
    } on MisskeyApiException {
      rethrow;
    } on DioException catch (error) {
      throw _mapDioException(error);
    }
  }

  /// Sends [endpoint] and parses a JSON array response.
  Future<List<T>> postList<T>(
    String endpoint, {
    JsonMap? body,
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    bool requiresAuth = false,
    required T Function(Map<String, dynamic> json) itemParser,
    CancelToken? cancelToken,
  }) {
    return postParsed<List<T>>(
      endpoint,
      body: body,
      httpMethod: httpMethod,
      requiresAuth: requiresAuth,
      cancelToken: cancelToken,
      parser: (data) {
        if (data is! List) {
          throw FormatException('Expected a JSON array from $endpoint.');
        }
        return data.map((item) {
          if (item is! Map) {
            throw FormatException(
              'Expected a JSON object item from $endpoint.',
            );
          }
          return itemParser(Map<String, dynamic>.from(item));
        }).toList();
      },
    );
  }

  /// Sends [endpoint] and discards the response body.
  Future<void> postVoid(
    String endpoint, {
    JsonMap? body,
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    bool requiresAuth = false,
    CancelToken? cancelToken,
  }) async {
    await _send(
      endpoint,
      body: body,
      httpMethod: httpMethod,
      requiresAuth: requiresAuth,
      cancelToken: cancelToken,
    );
  }

  Future<Response<dynamic>> _send(
    String endpoint, {
    JsonMap? body,
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    bool requiresAuth = false,
    CancelToken? cancelToken,
  }) async {
    final uri = _endpointUri(endpoint);
    final payload = <String, dynamic>{...?body};
    final headers = <String, dynamic>{};
    final token = await _resolveToken(requiresAuth: requiresAuth);

    if (token != null) {
      switch (_config.authMode) {
        case MisskeyAuthMode.bearer:
          headers['Authorization'] = 'Bearer $token';
        case MisskeyAuthMode.body:
          payload['i'] = token;
        case MisskeyAuthMode.none:
          break;
      }
    }

    try {
      final options = Options(headers: headers.isEmpty ? null : headers);
      return await (httpMethod == MisskeyHttpMethod.get
          ? _dio.getUri<dynamic>(
              uri,
              data: payload,
              options: options,
              cancelToken: cancelToken,
            )
          : _dio.postUri<dynamic>(
              uri,
              data: payload,
              options: options,
              cancelToken: cancelToken,
            ));
    } on DioException catch (error) {
      throw _mapDioException(error);
    }
  }

  Uri _endpointUri(String endpoint) {
    final trimmed = endpoint.startsWith('/') ? endpoint.substring(1) : endpoint;
    if (trimmed.isEmpty) {
      throw ArgumentError.value(endpoint, 'endpoint', 'Must not be empty.');
    }
    return _baseUri.resolve('/api/$trimmed');
  }

  /// Closes the underlying HTTP client and any streaming connection.
  void close({bool force = false}) {
    _dio.close(force: force);
    final streaming = _streaming;
    if (streaming != null) {
      unawaited(streaming.close());
    }
  }

  static MisskeyApiException _mapDioException(DioException error) {
    final data = error.response?.data;
    String? code;
    String? id;
    String? message;

    if (data is Map) {
      final envelope = data['error'];
      if (envelope is Map) {
        final envelopeCode = envelope['code'];
        if (envelopeCode is String) {
          code = envelopeCode;
        }
        final envelopeId = envelope['id'];
        if (envelopeId is String) {
          id = envelopeId;
        }
        final envelopeMessage = envelope['message'];
        if (envelopeMessage is String && envelopeMessage.isNotEmpty) {
          message = envelopeMessage;
        }
      }
    }

    final statusCode = error.response?.statusCode;
    final resolvedMessage =
        message ?? error.message ?? 'Misskey request failed.';
    if (statusCode == 401) {
      return MisskeyAuthenticationException(
        resolvedMessage,
        uri: error.requestOptions.uri,
        statusCode: statusCode,
        code: code,
        id: id,
        raw: data,
        cause: error,
      );
    }
    return MisskeyApiException(
      resolvedMessage,
      uri: error.requestOptions.uri,
      statusCode: statusCode,
      code: code,
      id: id,
      raw: data,
      cause: error,
    );
  }

  static Uri _parseHost(String host, bool allowInsecureHttp) {
    final trimmed = host.trim();
    if (trimmed.isEmpty) {
      throw ArgumentError.value(host, 'host', 'Must not be empty.');
    }
    final uri = trimmed.contains('://')
        ? Uri.parse(trimmed)
        : Uri.parse('https://$trimmed');
    return _normalizeBaseUri(uri, allowInsecureHttp);
  }

  static Uri _normalizeBaseUri(Uri uri, bool allowInsecureHttp) {
    final isHttps = uri.scheme == 'https';
    final isAllowedHttp = allowInsecureHttp && uri.scheme == 'http';
    if (!uri.hasScheme || (!isHttps && !isAllowedHttp)) {
      throw ArgumentError.value(
        uri,
        'baseUri',
        'Must use HTTPS. Set allowInsecureHttp to true only for local '
            'development.',
      );
    }
    if (uri.host.isEmpty) {
      throw ArgumentError.value(uri, 'baseUri', 'Must include a host.');
    }
    if (uri.hasQuery || uri.hasFragment) {
      throw ArgumentError.value(
        uri,
        'baseUri',
        'Must not include a query or fragment.',
      );
    }
    return uri.replace(path: '', query: null, fragment: null);
  }
}
