// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../config.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'meta_models.dart';

class RawMetaApi {
  RawMetaApi(this.client);

  final MisskeyClient client;

  Future<MetaEndpointResponse?> endpoint(
    MetaEndpointRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postNullableModel<MetaEndpointResponse>(
      'endpoint',
      body: request.toJson(),
      requiresAuth: false,
      parser: MetaEndpointResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<String>> endpoints({CancelToken? cancelToken}) {
    return client.postParsed<List<String>>(
      'endpoints',
      requiresAuth: false,
      parser: (data) => (data as List).cast<String>(),
      cancelToken: cancelToken,
    );
  }

  Future<MetaFetchExternalResourcesResponse> fetchExternalResources(
    MetaFetchExternalResourcesRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<MetaFetchExternalResourcesResponse>(
      'fetch-external-resources',
      body: request.toJson(),
      requiresAuth: true,
      parser: MetaFetchExternalResourcesResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<MetaFetchRssResponse> fetchRss(
    MetaFetchRssRequest request, {
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) {
    return client.postModel<MetaFetchRssResponse>(
      'fetch-rss',
      body: request.toJson(),
      httpMethod: httpMethod,
      requiresAuth: false,
      parser: MetaFetchRssResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<MetaGetOnlineUsersCountResponse> getOnlineUsersCount({
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) {
    return client.postModel<MetaGetOnlineUsersCountResponse>(
      'get-online-users-count',
      httpMethod: httpMethod,
      requiresAuth: false,
      parser: MetaGetOnlineUsersCountResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<MetaPingResponse> ping({CancelToken? cancelToken}) {
    return client.postModel<MetaPingResponse>(
      'ping',
      requiresAuth: false,
      parser: MetaPingResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<MetaServerInfoResponse> serverInfo({
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) {
    return client.postModel<MetaServerInfoResponse>(
      'server-info',
      httpMethod: httpMethod,
      requiresAuth: false,
      parser: MetaServerInfoResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<MetaStatsResponse> stats({CancelToken? cancelToken}) {
    return client.postModel<MetaStatsResponse>(
      'stats',
      requiresAuth: false,
      parser: MetaStatsResponse.fromJson,
      cancelToken: cancelToken,
    );
  }
}
