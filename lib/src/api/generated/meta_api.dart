// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'meta_models.dart';

class MetaApi {
  MetaApi(this.client);

  final MisskeyClient client;

  Future<MetaEndpointResponse?> endpoint(
    MetaEndpointRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postNullableModel<MetaEndpointResponse>(
      'endpoint',
      body: request.toJson(),
      parser: MetaEndpointResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<String>> endpoints({CancelToken? cancelToken}) {
    return client.postParsed<List<String>>(
      'endpoints',
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
      parser: MetaFetchExternalResourcesResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<MetaFetchRssResponse> fetchRss(
    MetaFetchRssRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<MetaFetchRssResponse>(
      'fetch-rss',
      body: request.toJson(),
      parser: MetaFetchRssResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<MetaGetOnlineUsersCountResponse> getOnlineUsersCount({
    CancelToken? cancelToken,
  }) {
    return client.postModel<MetaGetOnlineUsersCountResponse>(
      'get-online-users-count',
      parser: MetaGetOnlineUsersCountResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<MetaPingResponse> ping({CancelToken? cancelToken}) {
    return client.postModel<MetaPingResponse>(
      'ping',
      parser: MetaPingResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<MetaServerInfoResponse> serverInfo({CancelToken? cancelToken}) {
    return client.postModel<MetaServerInfoResponse>(
      'server-info',
      parser: MetaServerInfoResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<MetaStatsResponse> stats({CancelToken? cancelToken}) {
    return client.postModel<MetaStatsResponse>(
      'stats',
      parser: MetaStatsResponse.fromJson,
      cancelToken: cancelToken,
    );
  }
}
