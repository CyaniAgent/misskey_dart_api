// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/generated/generated.dart';
import '../../models/json.dart';

part 'meta_models.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MetaEndpointRequest {
  const MetaEndpointRequest({required this.endpoint});
  final String endpoint;

  factory MetaEndpointRequest.fromJson(Map<String, dynamic> json) =>
      _$MetaEndpointRequestFromJson(json);

  Map<String, dynamic> toJson() => _$MetaEndpointRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MetaEndpointResponseParamsItem {
  const MetaEndpointResponseParamsItem({
    required this.name,
    required this.type,
  });
  final String name;
  final String type;

  factory MetaEndpointResponseParamsItem.fromJson(Map<String, dynamic> json) =>
      _$MetaEndpointResponseParamsItemFromJson(json);

  Map<String, dynamic> toJson() => _$MetaEndpointResponseParamsItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MetaEndpointResponse {
  const MetaEndpointResponse({required this.params});
  final List<MetaEndpointResponseParamsItem> params;

  factory MetaEndpointResponse.fromJson(Map<String, dynamic> json) =>
      _$MetaEndpointResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MetaEndpointResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MetaFetchExternalResourcesRequest {
  const MetaFetchExternalResourcesRequest({
    required this.url,
    required this.hash,
  });
  final String url;
  final String hash;

  factory MetaFetchExternalResourcesRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$MetaFetchExternalResourcesRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$MetaFetchExternalResourcesRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MetaFetchExternalResourcesResponse {
  const MetaFetchExternalResourcesResponse({
    required this.type,
    required this.data,
  });
  final String type;
  final String data;

  factory MetaFetchExternalResourcesResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$MetaFetchExternalResourcesResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$MetaFetchExternalResourcesResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MetaFetchRssRequest {
  const MetaFetchRssRequest({required this.url});
  final String url;

  factory MetaFetchRssRequest.fromJson(Map<String, dynamic> json) =>
      _$MetaFetchRssRequestFromJson(json);

  Map<String, dynamic> toJson() => _$MetaFetchRssRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MetaFetchRssResponseImage {
  const MetaFetchRssResponseImage({this.link, required this.url, this.title});
  final String? link;
  final String url;
  final String? title;

  factory MetaFetchRssResponseImage.fromJson(Map<String, dynamic> json) =>
      _$MetaFetchRssResponseImageFromJson(json);

  Map<String, dynamic> toJson() => _$MetaFetchRssResponseImageToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MetaFetchRssResponsePaginationLinks {
  const MetaFetchRssResponsePaginationLinks({
    this.self,
    this.first,
    this.next,
    this.last,
    this.prev,
  });
  final String? self;
  final String? first;
  final String? next;
  final String? last;
  final String? prev;

  factory MetaFetchRssResponsePaginationLinks.fromJson(
    Map<String, dynamic> json,
  ) => _$MetaFetchRssResponsePaginationLinksFromJson(json);

  Map<String, dynamic> toJson() =>
      _$MetaFetchRssResponsePaginationLinksToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MetaFetchRssResponseItemsItemEnclosure {
  const MetaFetchRssResponseItemsItemEnclosure({
    required this.url,
    this.length,
    this.type,
  });
  final String url;
  final num? length;
  final String? type;

  factory MetaFetchRssResponseItemsItemEnclosure.fromJson(
    Map<String, dynamic> json,
  ) => _$MetaFetchRssResponseItemsItemEnclosureFromJson(json);

  Map<String, dynamic> toJson() =>
      _$MetaFetchRssResponseItemsItemEnclosureToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MetaFetchRssResponseItemsItem {
  const MetaFetchRssResponseItemsItem({
    this.link,
    this.guid,
    this.title,
    this.pubDate,
    this.creator,
    this.summary,
    this.content,
    this.isoDate,
    this.categories,
    this.contentSnippet,
    this.enclosure,
  });
  final String? link;
  final String? guid;
  final String? title;
  final String? pubDate;
  final String? creator;
  final String? summary;
  final String? content;
  final String? isoDate;
  final List<String>? categories;
  final String? contentSnippet;
  final MetaFetchRssResponseItemsItemEnclosure? enclosure;

  factory MetaFetchRssResponseItemsItem.fromJson(Map<String, dynamic> json) =>
      _$MetaFetchRssResponseItemsItemFromJson(json);

  Map<String, dynamic> toJson() => _$MetaFetchRssResponseItemsItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MetaFetchRssResponseItunesOwner {
  const MetaFetchRssResponseItunesOwner({this.name, this.email});
  final String? name;
  final String? email;

  factory MetaFetchRssResponseItunesOwner.fromJson(Map<String, dynamic> json) =>
      _$MetaFetchRssResponseItunesOwnerFromJson(json);

  Map<String, dynamic> toJson() =>
      _$MetaFetchRssResponseItunesOwnerToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MetaFetchRssResponseItunes {
  const MetaFetchRssResponseItunes({
    this.image,
    this.owner,
    this.author,
    this.summary,
    this.explicit,
    this.categories,
    this.keywords,
  });
  final String? image;
  final MetaFetchRssResponseItunesOwner? owner;
  final String? author;
  final String? summary;
  final String? explicit;
  final List<String>? categories;
  final List<String>? keywords;

  factory MetaFetchRssResponseItunes.fromJson(Map<String, dynamic> json) =>
      _$MetaFetchRssResponseItunesFromJson(json);

  Map<String, dynamic> toJson() => _$MetaFetchRssResponseItunesToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MetaFetchRssResponse {
  const MetaFetchRssResponse({
    this.image,
    this.paginationLinks,
    this.link,
    this.title,
    required this.items,
    this.feedUrl,
    this.description,
    this.itunes,
  });
  final MetaFetchRssResponseImage? image;
  final MetaFetchRssResponsePaginationLinks? paginationLinks;
  final String? link;
  final String? title;
  final List<MetaFetchRssResponseItemsItem> items;
  final String? feedUrl;
  final String? description;
  final MetaFetchRssResponseItunes? itunes;

  factory MetaFetchRssResponse.fromJson(Map<String, dynamic> json) =>
      _$MetaFetchRssResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MetaFetchRssResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MetaGetOnlineUsersCountResponse {
  const MetaGetOnlineUsersCountResponse({required this.count});
  final num count;

  factory MetaGetOnlineUsersCountResponse.fromJson(Map<String, dynamic> json) =>
      _$MetaGetOnlineUsersCountResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$MetaGetOnlineUsersCountResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MetaPingResponse {
  const MetaPingResponse({required this.pong});
  final num pong;

  factory MetaPingResponse.fromJson(Map<String, dynamic> json) =>
      _$MetaPingResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MetaPingResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MetaServerInfoResponseCpu {
  const MetaServerInfoResponseCpu({required this.model, required this.cores});
  final String model;
  final num cores;

  factory MetaServerInfoResponseCpu.fromJson(Map<String, dynamic> json) =>
      _$MetaServerInfoResponseCpuFromJson(json);

  Map<String, dynamic> toJson() => _$MetaServerInfoResponseCpuToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MetaServerInfoResponseMem {
  const MetaServerInfoResponseMem({required this.total});
  final num total;

  factory MetaServerInfoResponseMem.fromJson(Map<String, dynamic> json) =>
      _$MetaServerInfoResponseMemFromJson(json);

  Map<String, dynamic> toJson() => _$MetaServerInfoResponseMemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MetaServerInfoResponseFs {
  const MetaServerInfoResponseFs({required this.total, required this.used});
  final num total;
  final num used;

  factory MetaServerInfoResponseFs.fromJson(Map<String, dynamic> json) =>
      _$MetaServerInfoResponseFsFromJson(json);

  Map<String, dynamic> toJson() => _$MetaServerInfoResponseFsToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MetaServerInfoResponse {
  const MetaServerInfoResponse({
    required this.machine,
    required this.cpu,
    required this.mem,
    required this.fs,
  });
  final String machine;
  final MetaServerInfoResponseCpu cpu;
  final MetaServerInfoResponseMem mem;
  final MetaServerInfoResponseFs fs;

  factory MetaServerInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$MetaServerInfoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MetaServerInfoResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MetaStatsResponse {
  const MetaStatsResponse({
    required this.notesCount,
    required this.originalNotesCount,
    required this.usersCount,
    required this.originalUsersCount,
    required this.reactionsCount,
    required this.instances,
    required this.driveUsageLocal,
    required this.driveUsageRemote,
  });
  final num notesCount;
  final num originalNotesCount;
  final num usersCount;
  final num originalUsersCount;
  final num reactionsCount;
  final num instances;
  final num driveUsageLocal;
  final num driveUsageRemote;

  factory MetaStatsResponse.fromJson(Map<String, dynamic> json) =>
      _$MetaStatsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MetaStatsResponseToJson(this);
}
