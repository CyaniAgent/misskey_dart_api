// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MetaEndpointRequest _$MetaEndpointRequestFromJson(Map<String, dynamic> json) =>
    MetaEndpointRequest(endpoint: json['endpoint'] as String);

Map<String, dynamic> _$MetaEndpointRequestToJson(
  MetaEndpointRequest instance,
) => <String, dynamic>{'endpoint': instance.endpoint};

MetaEndpointResponseParamsItem _$MetaEndpointResponseParamsItemFromJson(
  Map<String, dynamic> json,
) => MetaEndpointResponseParamsItem(
  name: json['name'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$MetaEndpointResponseParamsItemToJson(
  MetaEndpointResponseParamsItem instance,
) => <String, dynamic>{'name': instance.name, 'type': instance.type};

MetaEndpointResponse _$MetaEndpointResponseFromJson(
  Map<String, dynamic> json,
) => MetaEndpointResponse(
  params: (json['params'] as List<dynamic>)
      .map(
        (e) =>
            MetaEndpointResponseParamsItem.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$MetaEndpointResponseToJson(
  MetaEndpointResponse instance,
) => <String, dynamic>{
  'params': instance.params.map((e) => e.toJson()).toList(),
};

MetaFetchExternalResourcesRequest _$MetaFetchExternalResourcesRequestFromJson(
  Map<String, dynamic> json,
) => MetaFetchExternalResourcesRequest(
  url: json['url'] as String,
  hash: json['hash'] as String,
);

Map<String, dynamic> _$MetaFetchExternalResourcesRequestToJson(
  MetaFetchExternalResourcesRequest instance,
) => <String, dynamic>{'url': instance.url, 'hash': instance.hash};

MetaFetchExternalResourcesResponse _$MetaFetchExternalResourcesResponseFromJson(
  Map<String, dynamic> json,
) => MetaFetchExternalResourcesResponse(
  type: json['type'] as String,
  data: json['data'] as String,
);

Map<String, dynamic> _$MetaFetchExternalResourcesResponseToJson(
  MetaFetchExternalResourcesResponse instance,
) => <String, dynamic>{'type': instance.type, 'data': instance.data};

MetaFetchRssRequest _$MetaFetchRssRequestFromJson(Map<String, dynamic> json) =>
    MetaFetchRssRequest(url: json['url'] as String);

Map<String, dynamic> _$MetaFetchRssRequestToJson(
  MetaFetchRssRequest instance,
) => <String, dynamic>{'url': instance.url};

MetaFetchRssResponseImage _$MetaFetchRssResponseImageFromJson(
  Map<String, dynamic> json,
) => MetaFetchRssResponseImage(
  link: json['link'] as String?,
  url: json['url'] as String,
  title: json['title'] as String?,
);

Map<String, dynamic> _$MetaFetchRssResponseImageToJson(
  MetaFetchRssResponseImage instance,
) => <String, dynamic>{
  'link': ?instance.link,
  'url': instance.url,
  'title': ?instance.title,
};

MetaFetchRssResponsePaginationLinks
_$MetaFetchRssResponsePaginationLinksFromJson(Map<String, dynamic> json) =>
    MetaFetchRssResponsePaginationLinks(
      self: json['self'] as String?,
      first: json['first'] as String?,
      next: json['next'] as String?,
      last: json['last'] as String?,
      prev: json['prev'] as String?,
    );

Map<String, dynamic> _$MetaFetchRssResponsePaginationLinksToJson(
  MetaFetchRssResponsePaginationLinks instance,
) => <String, dynamic>{
  'self': ?instance.self,
  'first': ?instance.first,
  'next': ?instance.next,
  'last': ?instance.last,
  'prev': ?instance.prev,
};

MetaFetchRssResponseItemsItemEnclosure
_$MetaFetchRssResponseItemsItemEnclosureFromJson(Map<String, dynamic> json) =>
    MetaFetchRssResponseItemsItemEnclosure(
      url: json['url'] as String,
      length: json['length'] as num?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$MetaFetchRssResponseItemsItemEnclosureToJson(
  MetaFetchRssResponseItemsItemEnclosure instance,
) => <String, dynamic>{
  'url': instance.url,
  'length': ?instance.length,
  'type': ?instance.type,
};

MetaFetchRssResponseItemsItem _$MetaFetchRssResponseItemsItemFromJson(
  Map<String, dynamic> json,
) => MetaFetchRssResponseItemsItem(
  link: json['link'] as String?,
  guid: json['guid'] as String?,
  title: json['title'] as String?,
  pubDate: json['pubDate'] as String?,
  creator: json['creator'] as String?,
  summary: json['summary'] as String?,
  content: json['content'] as String?,
  isoDate: json['isoDate'] as String?,
  categories: (json['categories'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  contentSnippet: json['contentSnippet'] as String?,
  enclosure: json['enclosure'] == null
      ? null
      : MetaFetchRssResponseItemsItemEnclosure.fromJson(
          json['enclosure'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$MetaFetchRssResponseItemsItemToJson(
  MetaFetchRssResponseItemsItem instance,
) => <String, dynamic>{
  'link': ?instance.link,
  'guid': ?instance.guid,
  'title': ?instance.title,
  'pubDate': ?instance.pubDate,
  'creator': ?instance.creator,
  'summary': ?instance.summary,
  'content': ?instance.content,
  'isoDate': ?instance.isoDate,
  'categories': ?instance.categories,
  'contentSnippet': ?instance.contentSnippet,
  'enclosure': ?instance.enclosure?.toJson(),
};

MetaFetchRssResponseItunesOwner _$MetaFetchRssResponseItunesOwnerFromJson(
  Map<String, dynamic> json,
) => MetaFetchRssResponseItunesOwner(
  name: json['name'] as String?,
  email: json['email'] as String?,
);

Map<String, dynamic> _$MetaFetchRssResponseItunesOwnerToJson(
  MetaFetchRssResponseItunesOwner instance,
) => <String, dynamic>{'name': ?instance.name, 'email': ?instance.email};

MetaFetchRssResponseItunes _$MetaFetchRssResponseItunesFromJson(
  Map<String, dynamic> json,
) => MetaFetchRssResponseItunes(
  image: json['image'] as String?,
  owner: json['owner'] == null
      ? null
      : MetaFetchRssResponseItunesOwner.fromJson(
          json['owner'] as Map<String, dynamic>,
        ),
  author: json['author'] as String?,
  summary: json['summary'] as String?,
  explicit: json['explicit'] as String?,
  categories: (json['categories'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  keywords: (json['keywords'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$MetaFetchRssResponseItunesToJson(
  MetaFetchRssResponseItunes instance,
) => <String, dynamic>{
  'image': ?instance.image,
  'owner': ?instance.owner?.toJson(),
  'author': ?instance.author,
  'summary': ?instance.summary,
  'explicit': ?instance.explicit,
  'categories': ?instance.categories,
  'keywords': ?instance.keywords,
};

MetaFetchRssResponse _$MetaFetchRssResponseFromJson(
  Map<String, dynamic> json,
) => MetaFetchRssResponse(
  image: json['image'] == null
      ? null
      : MetaFetchRssResponseImage.fromJson(
          json['image'] as Map<String, dynamic>,
        ),
  paginationLinks: json['paginationLinks'] == null
      ? null
      : MetaFetchRssResponsePaginationLinks.fromJson(
          json['paginationLinks'] as Map<String, dynamic>,
        ),
  link: json['link'] as String?,
  title: json['title'] as String?,
  items: (json['items'] as List<dynamic>)
      .map(
        (e) =>
            MetaFetchRssResponseItemsItem.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  feedUrl: json['feedUrl'] as String?,
  description: json['description'] as String?,
  itunes: json['itunes'] == null
      ? null
      : MetaFetchRssResponseItunes.fromJson(
          json['itunes'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$MetaFetchRssResponseToJson(
  MetaFetchRssResponse instance,
) => <String, dynamic>{
  'image': ?instance.image?.toJson(),
  'paginationLinks': ?instance.paginationLinks?.toJson(),
  'link': ?instance.link,
  'title': ?instance.title,
  'items': instance.items.map((e) => e.toJson()).toList(),
  'feedUrl': ?instance.feedUrl,
  'description': ?instance.description,
  'itunes': ?instance.itunes?.toJson(),
};

MetaGetOnlineUsersCountResponse _$MetaGetOnlineUsersCountResponseFromJson(
  Map<String, dynamic> json,
) => MetaGetOnlineUsersCountResponse(count: json['count'] as num);

Map<String, dynamic> _$MetaGetOnlineUsersCountResponseToJson(
  MetaGetOnlineUsersCountResponse instance,
) => <String, dynamic>{'count': instance.count};

MetaPingResponse _$MetaPingResponseFromJson(Map<String, dynamic> json) =>
    MetaPingResponse(pong: json['pong'] as num);

Map<String, dynamic> _$MetaPingResponseToJson(MetaPingResponse instance) =>
    <String, dynamic>{'pong': instance.pong};

MetaServerInfoResponseCpu _$MetaServerInfoResponseCpuFromJson(
  Map<String, dynamic> json,
) => MetaServerInfoResponseCpu(
  model: json['model'] as String,
  cores: json['cores'] as num,
);

Map<String, dynamic> _$MetaServerInfoResponseCpuToJson(
  MetaServerInfoResponseCpu instance,
) => <String, dynamic>{'model': instance.model, 'cores': instance.cores};

MetaServerInfoResponseMem _$MetaServerInfoResponseMemFromJson(
  Map<String, dynamic> json,
) => MetaServerInfoResponseMem(total: json['total'] as num);

Map<String, dynamic> _$MetaServerInfoResponseMemToJson(
  MetaServerInfoResponseMem instance,
) => <String, dynamic>{'total': instance.total};

MetaServerInfoResponseFs _$MetaServerInfoResponseFsFromJson(
  Map<String, dynamic> json,
) => MetaServerInfoResponseFs(
  total: json['total'] as num,
  used: json['used'] as num,
);

Map<String, dynamic> _$MetaServerInfoResponseFsToJson(
  MetaServerInfoResponseFs instance,
) => <String, dynamic>{'total': instance.total, 'used': instance.used};

MetaServerInfoResponse _$MetaServerInfoResponseFromJson(
  Map<String, dynamic> json,
) => MetaServerInfoResponse(
  machine: json['machine'] as String,
  cpu: MetaServerInfoResponseCpu.fromJson(json['cpu'] as Map<String, dynamic>),
  mem: MetaServerInfoResponseMem.fromJson(json['mem'] as Map<String, dynamic>),
  fs: MetaServerInfoResponseFs.fromJson(json['fs'] as Map<String, dynamic>),
);

Map<String, dynamic> _$MetaServerInfoResponseToJson(
  MetaServerInfoResponse instance,
) => <String, dynamic>{
  'machine': instance.machine,
  'cpu': instance.cpu.toJson(),
  'mem': instance.mem.toJson(),
  'fs': instance.fs.toJson(),
};

MetaStatsResponse _$MetaStatsResponseFromJson(Map<String, dynamic> json) =>
    MetaStatsResponse(
      notesCount: json['notesCount'] as num,
      originalNotesCount: json['originalNotesCount'] as num,
      usersCount: json['usersCount'] as num,
      originalUsersCount: json['originalUsersCount'] as num,
      reactionsCount: json['reactionsCount'] as num,
      instances: json['instances'] as num,
      driveUsageLocal: json['driveUsageLocal'] as num,
      driveUsageRemote: json['driveUsageRemote'] as num,
    );

Map<String, dynamic> _$MetaStatsResponseToJson(MetaStatsResponse instance) =>
    <String, dynamic>{
      'notesCount': instance.notesCount,
      'originalNotesCount': instance.originalNotesCount,
      'usersCount': instance.usersCount,
      'originalUsersCount': instance.originalUsersCount,
      'reactionsCount': instance.reactionsCount,
      'instances': instance.instances,
      'driveUsageLocal': instance.driveUsageLocal,
      'driveUsageRemote': instance.driveUsageRemote,
    };
