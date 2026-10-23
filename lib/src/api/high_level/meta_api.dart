// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../config.dart';
import '../generated/meta_models.dart';

class MetaApi {
  MetaApi(this.client);

  final MisskeyClient client;

  /// endpoint
  ///
  /// Calls POST /api/endpoint.
  Future<MetaEndpointResponse?> endpoint({
    required String endpoint,
    CancelToken? cancelToken,
  }) async {
    return client.raw.meta.endpoint(
      MetaEndpointRequest(endpoint: endpoint),
      cancelToken: cancelToken,
    );
  }

  /// endpoints
  ///
  /// Calls POST /api/endpoints.
  Future<List<String>> endpoints({CancelToken? cancelToken}) async {
    return client.raw.meta.endpoints(cancelToken: cancelToken);
  }

  /// fetch-external-resources
  ///
  /// Calls POST /api/fetch-external-resources.
  ///
  /// Authentication required.
  Future<MetaFetchExternalResourcesResponse> fetchExternalResources({
    required String url,
    required String hash,
    CancelToken? cancelToken,
  }) async {
    return client.raw.meta.fetchExternalResources(
      MetaFetchExternalResourcesRequest(url: url, hash: hash),
      cancelToken: cancelToken,
    );
  }

  /// fetch-rss
  ///
  /// Calls POST /api/fetch-rss.
  Future<MetaFetchRssResponse> fetchRss({
    required String url,
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) async {
    return client.raw.meta.fetchRss(
      MetaFetchRssRequest(url: url),
      httpMethod: httpMethod,
      cancelToken: cancelToken,
    );
  }

  /// get-online-users-count
  ///
  /// Calls POST /api/get-online-users-count.
  Future<MetaGetOnlineUsersCountResponse> getOnlineUsersCount({
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) async {
    return client.raw.meta.getOnlineUsersCount(
      httpMethod: httpMethod,
      cancelToken: cancelToken,
    );
  }

  /// ping
  ///
  /// Calls POST /api/ping.
  Future<MetaPingResponse> ping({CancelToken? cancelToken}) async {
    return client.raw.meta.ping(cancelToken: cancelToken);
  }

  /// server-info
  ///
  /// Calls POST /api/server-info.
  Future<MetaServerInfoResponse> serverInfo({
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) async {
    return client.raw.meta.serverInfo(
      httpMethod: httpMethod,
      cancelToken: cancelToken,
    );
  }

  /// stats
  ///
  /// Calls POST /api/stats.
  Future<MetaStatsResponse> stats({CancelToken? cancelToken}) async {
    return client.raw.meta.stats(cancelToken: cancelToken);
  }
}
