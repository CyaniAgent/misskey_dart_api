// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/generated/generated.dart';
import '../../models/json.dart';

part 'following_models.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FollowingCreateRequest {
  const FollowingCreateRequest({required this.userId, this.withReplies});
  final String userId;
  final bool? withReplies;

  factory FollowingCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$FollowingCreateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FollowingCreateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FollowingDeleteRequest {
  const FollowingDeleteRequest({required this.userId});
  final String userId;

  factory FollowingDeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$FollowingDeleteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FollowingDeleteRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FollowingInvalidateRequest {
  const FollowingInvalidateRequest({required this.userId});
  final String userId;

  factory FollowingInvalidateRequest.fromJson(Map<String, dynamic> json) =>
      _$FollowingInvalidateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FollowingInvalidateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FollowingListRequest {
  const FollowingListRequest({
    this.notification = false,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    this.limit = 10,
  });
  final bool notification;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final int limit;

  factory FollowingListRequest.fromJson(Map<String, dynamic> json) =>
      _$FollowingListRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FollowingListRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FollowingRequestsAcceptRequest {
  const FollowingRequestsAcceptRequest({required this.userId});
  final String userId;

  factory FollowingRequestsAcceptRequest.fromJson(Map<String, dynamic> json) =>
      _$FollowingRequestsAcceptRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FollowingRequestsAcceptRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FollowingRequestsCancelRequest {
  const FollowingRequestsCancelRequest({required this.userId});
  final String userId;

  factory FollowingRequestsCancelRequest.fromJson(Map<String, dynamic> json) =>
      _$FollowingRequestsCancelRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FollowingRequestsCancelRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FollowingRequestsListRequest {
  const FollowingRequestsListRequest({
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    this.limit = 10,
  });
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final int limit;

  factory FollowingRequestsListRequest.fromJson(Map<String, dynamic> json) =>
      _$FollowingRequestsListRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FollowingRequestsListRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FollowingRequestsListResponseItem {
  const FollowingRequestsListResponseItem({
    required this.id,
    required this.follower,
    required this.followee,
  });
  final String id;
  final UserLite follower;
  final UserLite followee;

  factory FollowingRequestsListResponseItem.fromJson(
    Map<String, dynamic> json,
  ) => _$FollowingRequestsListResponseItemFromJson(json);

  Map<String, dynamic> toJson() =>
      _$FollowingRequestsListResponseItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FollowingRequestsRejectRequest {
  const FollowingRequestsRejectRequest({required this.userId});
  final String userId;

  factory FollowingRequestsRejectRequest.fromJson(Map<String, dynamic> json) =>
      _$FollowingRequestsRejectRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FollowingRequestsRejectRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FollowingRequestsSentRequest {
  const FollowingRequestsSentRequest({
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    this.limit = 10,
  });
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final int limit;

  factory FollowingRequestsSentRequest.fromJson(Map<String, dynamic> json) =>
      _$FollowingRequestsSentRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FollowingRequestsSentRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FollowingRequestsSentResponseItem {
  const FollowingRequestsSentResponseItem({
    required this.id,
    required this.follower,
    required this.followee,
  });
  final String id;
  final UserLite follower;
  final UserLite followee;

  factory FollowingRequestsSentResponseItem.fromJson(
    Map<String, dynamic> json,
  ) => _$FollowingRequestsSentResponseItemFromJson(json);

  Map<String, dynamic> toJson() =>
      _$FollowingRequestsSentResponseItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FollowingUpdateRequest {
  const FollowingUpdateRequest({
    required this.userId,
    this.notify,
    this.withReplies,
  });
  final String userId;
  final UserNotify? notify;
  final bool? withReplies;

  factory FollowingUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$FollowingUpdateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FollowingUpdateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FollowingUpdateAllRequest {
  const FollowingUpdateAllRequest({this.notify, this.withReplies});
  final UserNotify? notify;
  final bool? withReplies;

  factory FollowingUpdateAllRequest.fromJson(Map<String, dynamic> json) =>
      _$FollowingUpdateAllRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FollowingUpdateAllRequestToJson(this);
}
