// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/generated/generated.dart';
import '../../models/json.dart';

part 'federation_models.g.dart';

enum FederationApShowResponseUserType { User }

enum FederationApShowResponseNoteType { Note }

enum FederationInstancesRequestSort {
  @JsonValue('+pubSub')
  pluspubSub,
  @JsonValue('-pubSub')
  minuspubSub,
  @JsonValue('+notes')
  plusnotes,
  @JsonValue('-notes')
  minusnotes,
  @JsonValue('+users')
  plususers,
  @JsonValue('-users')
  minususers,
  @JsonValue('+following')
  plusfollowing,
  @JsonValue('-following')
  minusfollowing,
  @JsonValue('+followers')
  plusfollowers,
  @JsonValue('-followers')
  minusfollowers,
  @JsonValue('+firstRetrievedAt')
  plusfirstRetrievedAt,
  @JsonValue('-firstRetrievedAt')
  minusfirstRetrievedAt,
  @JsonValue('+latestRequestReceivedAt')
  pluslatestRequestReceivedAt,
  @JsonValue('-latestRequestReceivedAt')
  minuslatestRequestReceivedAt,
}

sealed class FederationApShowResponse {
  const FederationApShowResponse();

  factory FederationApShowResponse.fromJson(Map<String, dynamic> data) {
    final map = data;
    switch (map['type']) {
      case 'User':
        return FederationApShowResponseUser.fromJson(map);
      case 'Note':
        return FederationApShowResponseNote.fromJson(map);
      default:
        throw FormatException(
          'Unknown FederationApShowResponse type: ${map['type']}',
        );
    }
  }

  Map<String, dynamic> toJson();
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FederationApGetRequest {
  const FederationApGetRequest({required this.uri});
  final String uri;

  factory FederationApGetRequest.fromJson(Map<String, dynamic> json) =>
      _$FederationApGetRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FederationApGetRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FederationApShowRequest {
  const FederationApShowRequest({required this.uri});
  final String uri;

  factory FederationApShowRequest.fromJson(Map<String, dynamic> json) =>
      _$FederationApShowRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FederationApShowRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FederationApShowResponseUser extends FederationApShowResponse {
  const FederationApShowResponseUser({required this.type, required this.object})
    : super();
  final FederationApShowResponseUserType type;
  final UserDetailedNotMe object;

  factory FederationApShowResponseUser.fromJson(Map<String, dynamic> json) =>
      _$FederationApShowResponseUserFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FederationApShowResponseUserToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FederationApShowResponseNote extends FederationApShowResponse {
  const FederationApShowResponseNote({required this.type, required this.object})
    : super();
  final FederationApShowResponseNoteType type;
  final Note object;

  factory FederationApShowResponseNote.fromJson(Map<String, dynamic> json) =>
      _$FederationApShowResponseNoteFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FederationApShowResponseNoteToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FederationFollowersRequest {
  const FederationFollowersRequest({
    required this.host,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    this.limit = 10,
  });
  final String host;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final int limit;

  factory FederationFollowersRequest.fromJson(Map<String, dynamic> json) =>
      _$FederationFollowersRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FederationFollowersRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FederationFollowingRequest {
  const FederationFollowingRequest({
    required this.host,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    this.limit = 10,
  });
  final String host;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final int limit;

  factory FederationFollowingRequest.fromJson(Map<String, dynamic> json) =>
      _$FederationFollowingRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FederationFollowingRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FederationInstancesRequest {
  const FederationInstancesRequest({
    this.host,
    this.blocked,
    this.notResponding,
    this.suspended,
    this.silenced,
    this.federating,
    this.subscribing,
    this.publishing,
    this.limit = 30,
    this.offset = 0,
    this.sort,
  });
  final String? host;
  final bool? blocked;
  final bool? notResponding;
  final bool? suspended;
  final bool? silenced;
  final bool? federating;
  final bool? subscribing;
  final bool? publishing;
  final int limit;
  final int offset;
  final FederationInstancesRequestSort? sort;

  factory FederationInstancesRequest.fromJson(Map<String, dynamic> json) =>
      _$FederationInstancesRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FederationInstancesRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FederationShowInstanceRequest {
  const FederationShowInstanceRequest({required this.host});
  final String host;

  factory FederationShowInstanceRequest.fromJson(Map<String, dynamic> json) =>
      _$FederationShowInstanceRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FederationShowInstanceRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FederationStatsRequest {
  const FederationStatsRequest({this.limit = 10});
  final int limit;

  factory FederationStatsRequest.fromJson(Map<String, dynamic> json) =>
      _$FederationStatsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FederationStatsRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FederationStatsResponse {
  const FederationStatsResponse({
    required this.topSubInstances,
    required this.otherFollowersCount,
    required this.topPubInstances,
    required this.otherFollowingCount,
  });
  final List<FederationInstance> topSubInstances;
  final num otherFollowersCount;
  final List<FederationInstance> topPubInstances;
  final num otherFollowingCount;

  factory FederationStatsResponse.fromJson(Map<String, dynamic> json) =>
      _$FederationStatsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$FederationStatsResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FederationUpdateRemoteUserRequest {
  const FederationUpdateRemoteUserRequest({required this.userId});
  final String userId;

  factory FederationUpdateRemoteUserRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$FederationUpdateRemoteUserRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$FederationUpdateRemoteUserRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FederationUsersRequest {
  const FederationUsersRequest({
    required this.host,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    this.limit = 10,
  });
  final String host;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final int limit;

  factory FederationUsersRequest.fromJson(Map<String, dynamic> json) =>
      _$FederationUsersRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FederationUsersRequestToJson(this);
}
