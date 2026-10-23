// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../config.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'meta_models.dart';

/// Raw generated endpoints for the `meta` API group.
class RawMetaApi {
  /// Creates a raw `meta` API facade.
  RawMetaApi(this.client);

  /// The shared client used for transport and authentication.
  final MisskeyClient client;

  /// endpoint
  ///
  /// Calls POST /api/endpoint.
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

  /// endpoints
  ///
  /// Calls POST /api/endpoints.
  Future<List<String>> endpoints({CancelToken? cancelToken}) {
    return client.postParsed<List<String>>(
      'endpoints',
      requiresAuth: false,
      parser: (data) => (data as List).cast<String>(),
      cancelToken: cancelToken,
    );
  }

  /// fetch-external-resources
  ///
  /// Calls POST /api/fetch-external-resources.
  ///
  /// Authentication required.
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

  /// fetch-rss
  ///
  /// Calls POST /api/fetch-rss.
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

  /// get-online-users-count
  ///
  /// Calls POST /api/get-online-users-count.
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

  /// ping
  ///
  /// Calls POST /api/ping.
  Future<MetaPingResponse> ping({CancelToken? cancelToken}) {
    return client.postModel<MetaPingResponse>(
      'ping',
      requiresAuth: false,
      parser: MetaPingResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// server-info
  ///
  /// Calls POST /api/server-info.
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

  /// stats
  ///
  /// Calls POST /api/stats.
  Future<MetaStatsResponse> stats({CancelToken? cancelToken}) {
    return client.postModel<MetaStatsResponse>(
      'stats',
      requiresAuth: false,
      parser: MetaStatsResponse.fromJson,
      cancelToken: cancelToken,
    );
  }
}
