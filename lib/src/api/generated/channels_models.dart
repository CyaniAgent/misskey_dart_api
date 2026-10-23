// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/generated/generated.dart';
import '../../models/json.dart';

part 'channels_models.g.dart';

enum ChannelsSearchRequestType { nameAndDescription, nameOnly }

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChannelsCreateRequest {
  const ChannelsCreateRequest({
    required this.name,
    this.description,
    this.bannerId,
    this.color,
    this.isSensitive,
    this.allowRenoteToExternal,
  });
  final String name;
  final String? description;
  final String? bannerId;
  final String? color;
  final bool? isSensitive;
  final bool? allowRenoteToExternal;

  factory ChannelsCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$ChannelsCreateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChannelsCreateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChannelsFavoriteRequest {
  const ChannelsFavoriteRequest({required this.channelId});
  final String channelId;

  factory ChannelsFavoriteRequest.fromJson(Map<String, dynamic> json) =>
      _$ChannelsFavoriteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChannelsFavoriteRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChannelsFollowRequest {
  const ChannelsFollowRequest({required this.channelId});
  final String channelId;

  factory ChannelsFollowRequest.fromJson(Map<String, dynamic> json) =>
      _$ChannelsFollowRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChannelsFollowRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChannelsFollowedRequest {
  const ChannelsFollowedRequest({
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    this.limit = 5,
  });
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final int limit;

  factory ChannelsFollowedRequest.fromJson(Map<String, dynamic> json) =>
      _$ChannelsFollowedRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChannelsFollowedRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChannelsMuteCreateRequest {
  const ChannelsMuteCreateRequest({required this.channelId, this.expiresAt});
  final String channelId;
  final int? expiresAt;

  factory ChannelsMuteCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$ChannelsMuteCreateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChannelsMuteCreateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChannelsMuteDeleteRequest {
  const ChannelsMuteDeleteRequest({required this.channelId});
  final String channelId;

  factory ChannelsMuteDeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$ChannelsMuteDeleteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChannelsMuteDeleteRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChannelsOwnedRequest {
  const ChannelsOwnedRequest({
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    this.limit = 5,
  });
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final int limit;

  factory ChannelsOwnedRequest.fromJson(Map<String, dynamic> json) =>
      _$ChannelsOwnedRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChannelsOwnedRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChannelsSearchRequest {
  const ChannelsSearchRequest({
    required this.query,
    this.type = ChannelsSearchRequestType.nameAndDescription,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    this.limit = 5,
  });
  final String query;
  final ChannelsSearchRequestType type;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final int limit;

  factory ChannelsSearchRequest.fromJson(Map<String, dynamic> json) =>
      _$ChannelsSearchRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChannelsSearchRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChannelsShowValueRequest {
  const ChannelsShowValueRequest({required this.channelId});
  final String channelId;

  factory ChannelsShowValueRequest.fromJson(Map<String, dynamic> json) =>
      _$ChannelsShowValueRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChannelsShowValueRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChannelsTimelineRequest {
  const ChannelsTimelineRequest({
    required this.channelId,
    this.limit = 10,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    this.allowPartial = false,
  });
  final String channelId;
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final bool allowPartial;

  factory ChannelsTimelineRequest.fromJson(Map<String, dynamic> json) =>
      _$ChannelsTimelineRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChannelsTimelineRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChannelsUnfavoriteRequest {
  const ChannelsUnfavoriteRequest({required this.channelId});
  final String channelId;

  factory ChannelsUnfavoriteRequest.fromJson(Map<String, dynamic> json) =>
      _$ChannelsUnfavoriteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChannelsUnfavoriteRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChannelsUnfollowRequest {
  const ChannelsUnfollowRequest({required this.channelId});
  final String channelId;

  factory ChannelsUnfollowRequest.fromJson(Map<String, dynamic> json) =>
      _$ChannelsUnfollowRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChannelsUnfollowRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChannelsUpdateRequest {
  const ChannelsUpdateRequest({
    required this.channelId,
    this.name,
    this.description,
    this.bannerId,
    this.isArchived,
    this.pinnedNoteIds,
    this.color,
    this.isSensitive,
    this.allowRenoteToExternal,
  });
  final String channelId;
  final String? name;
  final String? description;
  final String? bannerId;
  final bool? isArchived;
  final List<String>? pinnedNoteIds;
  final String? color;
  final bool? isSensitive;
  final bool? allowRenoteToExternal;

  factory ChannelsUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$ChannelsUpdateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChannelsUpdateRequestToJson(this);
}
