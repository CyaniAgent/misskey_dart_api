// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/generated/generated.dart';
import '../../models/json.dart';

part 'hashtags_models.g.dart';

enum HashtagsListRequestSort {
  @JsonValue('+mentionedUsers')
  plusmentionedUsers,
  @JsonValue('-mentionedUsers')
  minusmentionedUsers,
  @JsonValue('+mentionedLocalUsers')
  plusmentionedLocalUsers,
  @JsonValue('-mentionedLocalUsers')
  minusmentionedLocalUsers,
  @JsonValue('+mentionedRemoteUsers')
  plusmentionedRemoteUsers,
  @JsonValue('-mentionedRemoteUsers')
  minusmentionedRemoteUsers,
  @JsonValue('+attachedUsers')
  plusattachedUsers,
  @JsonValue('-attachedUsers')
  minusattachedUsers,
  @JsonValue('+attachedLocalUsers')
  plusattachedLocalUsers,
  @JsonValue('-attachedLocalUsers')
  minusattachedLocalUsers,
  @JsonValue('+attachedRemoteUsers')
  plusattachedRemoteUsers,
  @JsonValue('-attachedRemoteUsers')
  minusattachedRemoteUsers,
}

enum HashtagsUsersRequestSort {
  @JsonValue('+follower')
  plusfollower,
  @JsonValue('-follower')
  minusfollower,
  @JsonValue('+createdAt')
  pluscreatedAt,
  @JsonValue('-createdAt')
  minuscreatedAt,
  @JsonValue('+updatedAt')
  plusupdatedAt,
  @JsonValue('-updatedAt')
  minusupdatedAt,
}

enum HashtagsUsersRequestState { all, alive }

enum HashtagsUsersRequestOrigin { combined, local, remote }

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class HashtagsListRequest {
  const HashtagsListRequest({
    this.limit = 10,
    this.attachedToUserOnly = false,
    this.attachedToLocalUserOnly = false,
    this.attachedToRemoteUserOnly = false,
    required this.sort,
  });
  final int limit;
  final bool attachedToUserOnly;
  final bool attachedToLocalUserOnly;
  final bool attachedToRemoteUserOnly;
  final HashtagsListRequestSort sort;

  factory HashtagsListRequest.fromJson(Map<String, dynamic> json) =>
      _$HashtagsListRequestFromJson(json);

  Map<String, dynamic> toJson() => _$HashtagsListRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class HashtagsSearchRequest {
  const HashtagsSearchRequest({
    this.limit = 10,
    required this.query,
    this.offset = 0,
  });
  final int limit;
  final String query;
  final int offset;

  factory HashtagsSearchRequest.fromJson(Map<String, dynamic> json) =>
      _$HashtagsSearchRequestFromJson(json);

  Map<String, dynamic> toJson() => _$HashtagsSearchRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class HashtagsShowValueRequest {
  const HashtagsShowValueRequest({required this.tag});
  final String tag;

  factory HashtagsShowValueRequest.fromJson(Map<String, dynamic> json) =>
      _$HashtagsShowValueRequestFromJson(json);

  Map<String, dynamic> toJson() => _$HashtagsShowValueRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class HashtagsTrendResponseItem {
  const HashtagsTrendResponseItem({
    required this.tag,
    required this.chart,
    required this.usersCount,
  });
  final String tag;
  final List<num> chart;
  final num usersCount;

  factory HashtagsTrendResponseItem.fromJson(Map<String, dynamic> json) =>
      _$HashtagsTrendResponseItemFromJson(json);

  Map<String, dynamic> toJson() => _$HashtagsTrendResponseItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class HashtagsUsersRequest {
  const HashtagsUsersRequest({
    required this.tag,
    this.limit = 10,
    this.offset = 0,
    required this.sort,
    this.state = HashtagsUsersRequestState.all,
    this.origin = HashtagsUsersRequestOrigin.local,
  });
  final String tag;
  final int limit;
  final int offset;
  final HashtagsUsersRequestSort sort;
  final HashtagsUsersRequestState state;
  final HashtagsUsersRequestOrigin origin;

  factory HashtagsUsersRequest.fromJson(Map<String, dynamic> json) =>
      _$HashtagsUsersRequestFromJson(json);

  Map<String, dynamic> toJson() => _$HashtagsUsersRequestToJson(this);
}
