// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/generated/generated.dart';
import '../../models/json.dart';

part 'users_models.g.dart';

enum UsersGetRequestSort {
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

enum UsersGetRequestState { all, alive }

enum UsersGetRequestOrigin { combined, local, remote }

enum UsersSearchRequestOrigin { local, remote, combined }

sealed class UsersFollowersRequest {
  const UsersFollowersRequest();

  Map<String, dynamic> toJson();
}

sealed class UsersFollowingRequest {
  const UsersFollowingRequest();

  Map<String, dynamic> toJson();
}

sealed class UsersRelationResponse {
  const UsersRelationResponse();

  factory UsersRelationResponse.fromJson(Object? data) {
    if (data is List) {
      return UsersRelationResponseList(
        items: data
            .map(
              (e) => UsersRelationResponseListItem.fromJson(
                Map<String, dynamic>.from(e as Map),
              ),
            )
            .toList(),
      );
    }
    final map = Map<String, dynamic>.from(data as Map);
    return UsersRelationResponseObject.fromJson(map);
  }

  Map<String, dynamic> toJson();
}

sealed class UsersSearchByUsernameAndHostRequest {
  const UsersSearchByUsernameAndHostRequest();

  Map<String, dynamic> toJson();
}

sealed class UsersShowValueRequest {
  const UsersShowValueRequest();

  Map<String, dynamic> toJson();
}

sealed class UsersShowValueResponse {
  const UsersShowValueResponse();

  factory UsersShowValueResponse.fromJson(Object? data) {
    if (data is List) {
      return UsersShowValueResponseList(
        items: data
            .map(
              (e) => UserDetailed.fromJson(Map<String, dynamic>.from(e as Map)),
            )
            .toList(),
      );
    }
    final map = Map<String, dynamic>.from(data as Map);
    return UsersShowValueResponseUserDetailed(
      value: UserDetailed.fromJson(map),
    );
  }

  Map<String, dynamic> toJson();
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersEmailAddressAvailableRequest {
  const UsersEmailAddressAvailableRequest({required this.emailAddress});
  final String emailAddress;

  factory UsersEmailAddressAvailableRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$UsersEmailAddressAvailableRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$UsersEmailAddressAvailableRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersEmailAddressAvailableResponse {
  const UsersEmailAddressAvailableResponse({
    required this.available,
    @JsonKey(name: 'reason', includeIfNull: true) required this.reason,
  });
  final bool available;
  final String? reason;

  factory UsersEmailAddressAvailableResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$UsersEmailAddressAvailableResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$UsersEmailAddressAvailableResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersGetAvatarDecorationsResponseItem {
  const UsersGetAvatarDecorationsResponseItem({
    required this.id,
    required this.name,
    required this.description,
    required this.url,
    required this.roleIdsThatCanBeUsedThisDecoration,
    this.category,
  });
  final String id;
  final String name;
  final String description;
  final String url;
  final List<String> roleIdsThatCanBeUsedThisDecoration;
  final String? category;

  factory UsersGetAvatarDecorationsResponseItem.fromJson(
    Map<String, dynamic> json,
  ) => _$UsersGetAvatarDecorationsResponseItemFromJson(json);

  Map<String, dynamic> toJson() =>
      _$UsersGetAvatarDecorationsResponseItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersRetentionResponseItem {
  const UsersRetentionResponseItem({
    required this.createdAt,
    required this.users,
    required this.data,
  });
  final DateTime createdAt;
  final num users;
  final Map<String, num> data;

  factory UsersRetentionResponseItem.fromJson(Map<String, dynamic> json) =>
      _$UsersRetentionResponseItemFromJson(json);

  Map<String, dynamic> toJson() => _$UsersRetentionResponseItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersUsernameAvailableRequest {
  const UsersUsernameAvailableRequest({required this.username});
  final String username;

  factory UsersUsernameAvailableRequest.fromJson(Map<String, dynamic> json) =>
      _$UsersUsernameAvailableRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UsersUsernameAvailableRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersUsernameAvailableResponse {
  const UsersUsernameAvailableResponse({required this.available});
  final bool available;

  factory UsersUsernameAvailableResponse.fromJson(Map<String, dynamic> json) =>
      _$UsersUsernameAvailableResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UsersUsernameAvailableResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersGetRequest {
  const UsersGetRequest({
    this.limit = 10,
    this.offset = 0,
    this.sort,
    this.state = UsersGetRequestState.all,
    this.origin = UsersGetRequestOrigin.local,
    this.hostname,
  });
  final int limit;
  final int offset;
  final UsersGetRequestSort? sort;
  final UsersGetRequestState state;
  final UsersGetRequestOrigin origin;
  final String? hostname;

  factory UsersGetRequest.fromJson(Map<String, dynamic> json) =>
      _$UsersGetRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UsersGetRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersAchievementsRequest {
  const UsersAchievementsRequest({required this.userId});
  final String userId;

  factory UsersAchievementsRequest.fromJson(Map<String, dynamic> json) =>
      _$UsersAchievementsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UsersAchievementsRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersClipsRequest {
  const UsersClipsRequest({
    required this.userId,
    this.limit = 10,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
  });
  final String userId;
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;

  factory UsersClipsRequest.fromJson(Map<String, dynamic> json) =>
      _$UsersClipsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UsersClipsRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersFeaturedNotesRequest {
  const UsersFeaturedNotesRequest({
    this.limit = 10,
    this.untilId,
    required this.userId,
  });
  final int limit;
  final String? untilId;
  final String userId;

  factory UsersFeaturedNotesRequest.fromJson(Map<String, dynamic> json) =>
      _$UsersFeaturedNotesRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UsersFeaturedNotesRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersFlashsRequest {
  const UsersFlashsRequest({
    required this.userId,
    this.limit = 10,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
  });
  final String userId;
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;

  factory UsersFlashsRequest.fromJson(Map<String, dynamic> json) =>
      _$UsersFlashsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UsersFlashsRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersFollowersRequestByUserId extends UsersFollowersRequest {
  const UsersFollowersRequestByUserId({
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    this.limit = 10,
    required this.userId,
  }) : super();
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final int limit;
  final String userId;

  factory UsersFollowersRequestByUserId.fromJson(Map<String, dynamic> json) =>
      _$UsersFollowersRequestByUserIdFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UsersFollowersRequestByUserIdToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersFollowersRequestByUsername extends UsersFollowersRequest {
  const UsersFollowersRequestByUsername({
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    this.limit = 10,
    required this.username,
    @JsonKey(name: 'host', includeIfNull: true) required this.host,
  }) : super();
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final int limit;
  final String username;
  final String? host;

  factory UsersFollowersRequestByUsername.fromJson(Map<String, dynamic> json) =>
      _$UsersFollowersRequestByUsernameFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$UsersFollowersRequestByUsernameToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersFollowingRequestByUserId extends UsersFollowingRequest {
  const UsersFollowingRequestByUserId({
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    this.limit = 10,
    this.birthday,
    required this.userId,
  }) : super();
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final int limit;
  final String? birthday;
  final String userId;

  factory UsersFollowingRequestByUserId.fromJson(Map<String, dynamic> json) =>
      _$UsersFollowingRequestByUserIdFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UsersFollowingRequestByUserIdToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersFollowingRequestByUsername extends UsersFollowingRequest {
  const UsersFollowingRequestByUsername({
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    this.limit = 10,
    this.birthday,
    required this.username,
    @JsonKey(name: 'host', includeIfNull: true) required this.host,
  }) : super();
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final int limit;
  final String? birthday;
  final String username;
  final String? host;

  factory UsersFollowingRequestByUsername.fromJson(Map<String, dynamic> json) =>
      _$UsersFollowingRequestByUsernameFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$UsersFollowingRequestByUsernameToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersGalleryPostsRequest {
  const UsersGalleryPostsRequest({
    required this.userId,
    this.limit = 10,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
  });
  final String userId;
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;

  factory UsersGalleryPostsRequest.fromJson(Map<String, dynamic> json) =>
      _$UsersGalleryPostsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UsersGalleryPostsRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersGetFollowingUsersByBirthdayRequest {
  const UsersGetFollowingUsersByBirthdayRequest({
    this.limit = 10,
    this.offset = 0,
    @JsonKey(name: 'birthday', includeIfNull: true) required this.birthday,
  });
  final int limit;
  final int offset;
  final JsonMap? birthday;

  factory UsersGetFollowingUsersByBirthdayRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$UsersGetFollowingUsersByBirthdayRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$UsersGetFollowingUsersByBirthdayRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersGetFollowingUsersByBirthdayResponseItem {
  const UsersGetFollowingUsersByBirthdayResponseItem({
    required this.id,
    required this.birthday,
    required this.user,
  });
  final String id;
  final String birthday;
  final UserLite user;

  factory UsersGetFollowingUsersByBirthdayResponseItem.fromJson(
    Map<String, dynamic> json,
  ) => _$UsersGetFollowingUsersByBirthdayResponseItemFromJson(json);

  Map<String, dynamic> toJson() =>
      _$UsersGetFollowingUsersByBirthdayResponseItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersGetFrequentlyRepliedUsersRequest {
  const UsersGetFrequentlyRepliedUsersRequest({
    required this.userId,
    this.limit = 10,
  });
  final String userId;
  final int limit;

  factory UsersGetFrequentlyRepliedUsersRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$UsersGetFrequentlyRepliedUsersRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$UsersGetFrequentlyRepliedUsersRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersGetFrequentlyRepliedUsersResponseItem {
  const UsersGetFrequentlyRepliedUsersResponseItem({
    required this.user,
    required this.weight,
  });
  final UserDetailed user;
  final num weight;

  factory UsersGetFrequentlyRepliedUsersResponseItem.fromJson(
    Map<String, dynamic> json,
  ) => _$UsersGetFrequentlyRepliedUsersResponseItemFromJson(json);

  Map<String, dynamic> toJson() =>
      _$UsersGetFrequentlyRepliedUsersResponseItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersListsCreateRequest {
  const UsersListsCreateRequest({required this.name});
  final String name;

  factory UsersListsCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$UsersListsCreateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UsersListsCreateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersListsCreateFromPublicRequest {
  const UsersListsCreateFromPublicRequest({
    required this.name,
    required this.listId,
  });
  final String name;
  final String listId;

  factory UsersListsCreateFromPublicRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$UsersListsCreateFromPublicRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$UsersListsCreateFromPublicRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersListsDeleteRequest {
  const UsersListsDeleteRequest({required this.listId});
  final String listId;

  factory UsersListsDeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$UsersListsDeleteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UsersListsDeleteRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersListsFavoriteRequest {
  const UsersListsFavoriteRequest({required this.listId});
  final String listId;

  factory UsersListsFavoriteRequest.fromJson(Map<String, dynamic> json) =>
      _$UsersListsFavoriteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UsersListsFavoriteRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersListsGetMembershipsRequest {
  const UsersListsGetMembershipsRequest({
    required this.listId,
    this.forPublic = false,
    this.limit = 30,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
  });
  final String listId;
  final bool forPublic;
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;

  factory UsersListsGetMembershipsRequest.fromJson(Map<String, dynamic> json) =>
      _$UsersListsGetMembershipsRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$UsersListsGetMembershipsRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersListsGetMembershipsResponseItem {
  const UsersListsGetMembershipsResponseItem({
    required this.id,
    required this.createdAt,
    required this.userId,
    required this.user,
    required this.withReplies,
  });
  final String id;
  final DateTime createdAt;
  final String userId;
  final UserLite user;
  final bool withReplies;

  factory UsersListsGetMembershipsResponseItem.fromJson(
    Map<String, dynamic> json,
  ) => _$UsersListsGetMembershipsResponseItemFromJson(json);

  Map<String, dynamic> toJson() =>
      _$UsersListsGetMembershipsResponseItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersListsListRequest {
  const UsersListsListRequest({this.userId});
  final String? userId;

  factory UsersListsListRequest.fromJson(Map<String, dynamic> json) =>
      _$UsersListsListRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UsersListsListRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersListsPullRequest {
  const UsersListsPullRequest({required this.listId, required this.userId});
  final String listId;
  final String userId;

  factory UsersListsPullRequest.fromJson(Map<String, dynamic> json) =>
      _$UsersListsPullRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UsersListsPullRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersListsPushRequest {
  const UsersListsPushRequest({required this.listId, required this.userId});
  final String listId;
  final String userId;

  factory UsersListsPushRequest.fromJson(Map<String, dynamic> json) =>
      _$UsersListsPushRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UsersListsPushRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersListsShowRequest {
  const UsersListsShowRequest({required this.listId, this.forPublic = false});
  final String listId;
  final bool forPublic;

  factory UsersListsShowRequest.fromJson(Map<String, dynamic> json) =>
      _$UsersListsShowRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UsersListsShowRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersListsShowResponse {
  const UsersListsShowResponse({
    required this.id,
    required this.createdAt,
    required this.name,
    this.userIds,
    required this.isPublic,
    this.likedCount,
    this.isLiked,
  });
  final String id;
  final DateTime createdAt;
  final String name;
  final List<String>? userIds;
  final bool isPublic;
  final num? likedCount;
  final bool? isLiked;

  factory UsersListsShowResponse.fromJson(Map<String, dynamic> json) =>
      _$UsersListsShowResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UsersListsShowResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersListsUnfavoriteRequest {
  const UsersListsUnfavoriteRequest({required this.listId});
  final String listId;

  factory UsersListsUnfavoriteRequest.fromJson(Map<String, dynamic> json) =>
      _$UsersListsUnfavoriteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UsersListsUnfavoriteRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersListsUpdateRequest {
  const UsersListsUpdateRequest({
    required this.listId,
    this.name,
    this.isPublic,
  });
  final String listId;
  final String? name;
  final bool? isPublic;

  factory UsersListsUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$UsersListsUpdateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UsersListsUpdateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersListsUpdateMembershipRequest {
  const UsersListsUpdateMembershipRequest({
    required this.listId,
    required this.userId,
    this.withReplies,
  });
  final String listId;
  final String userId;
  final bool? withReplies;

  factory UsersListsUpdateMembershipRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$UsersListsUpdateMembershipRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$UsersListsUpdateMembershipRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersNotesRequest {
  const UsersNotesRequest({
    required this.userId,
    this.withReplies = false,
    this.withRenotes = true,
    this.withChannelNotes = false,
    this.limit = 10,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    this.allowPartial = false,
    this.withFiles = false,
  });
  final String userId;
  final bool withReplies;
  final bool withRenotes;
  final bool withChannelNotes;
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final bool allowPartial;
  final bool withFiles;

  factory UsersNotesRequest.fromJson(Map<String, dynamic> json) =>
      _$UsersNotesRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UsersNotesRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersPagesRequest {
  const UsersPagesRequest({
    required this.userId,
    this.limit = 10,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
  });
  final String userId;
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;

  factory UsersPagesRequest.fromJson(Map<String, dynamic> json) =>
      _$UsersPagesRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UsersPagesRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersReactionsRequest {
  const UsersReactionsRequest({
    required this.userId,
    this.limit = 10,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
  });
  final String userId;
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;

  factory UsersReactionsRequest.fromJson(Map<String, dynamic> json) =>
      _$UsersReactionsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UsersReactionsRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersRecommendationRequest {
  const UsersRecommendationRequest({this.limit = 10, this.offset = 0});
  final int limit;
  final int offset;

  factory UsersRecommendationRequest.fromJson(Map<String, dynamic> json) =>
      _$UsersRecommendationRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UsersRecommendationRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersRelationRequest {
  const UsersRelationRequest({
    @JsonKey(name: 'userId', includeIfNull: true) required this.userId,
  });
  final JsonMap? userId;

  factory UsersRelationRequest.fromJson(Map<String, dynamic> json) =>
      _$UsersRelationRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UsersRelationRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersRelationResponseObject extends UsersRelationResponse {
  const UsersRelationResponseObject({
    required this.id,
    required this.isFollowing,
    required this.hasPendingFollowRequestFromYou,
    required this.hasPendingFollowRequestToYou,
    required this.isFollowed,
    required this.isBlocking,
    required this.isBlocked,
    required this.isMuted,
    required this.isRenoteMuted,
  }) : super();
  final String id;
  final bool isFollowing;
  final bool hasPendingFollowRequestFromYou;
  final bool hasPendingFollowRequestToYou;
  final bool isFollowed;
  final bool isBlocking;
  final bool isBlocked;
  final bool isMuted;
  final bool isRenoteMuted;

  factory UsersRelationResponseObject.fromJson(Map<String, dynamic> json) =>
      _$UsersRelationResponseObjectFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UsersRelationResponseObjectToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersRelationResponseListItem {
  const UsersRelationResponseListItem({
    required this.id,
    required this.isFollowing,
    required this.hasPendingFollowRequestFromYou,
    required this.hasPendingFollowRequestToYou,
    required this.isFollowed,
    required this.isBlocking,
    required this.isBlocked,
    required this.isMuted,
    required this.isRenoteMuted,
  });
  final String id;
  final bool isFollowing;
  final bool hasPendingFollowRequestFromYou;
  final bool hasPendingFollowRequestToYou;
  final bool isFollowed;
  final bool isBlocking;
  final bool isBlocked;
  final bool isMuted;
  final bool isRenoteMuted;

  factory UsersRelationResponseListItem.fromJson(Map<String, dynamic> json) =>
      _$UsersRelationResponseListItemFromJson(json);

  Map<String, dynamic> toJson() => _$UsersRelationResponseListItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersRelationResponseListItemsItem {
  const UsersRelationResponseListItemsItem({
    required this.id,
    required this.isFollowing,
    required this.hasPendingFollowRequestFromYou,
    required this.hasPendingFollowRequestToYou,
    required this.isFollowed,
    required this.isBlocking,
    required this.isBlocked,
    required this.isMuted,
    required this.isRenoteMuted,
  });
  final String id;
  final bool isFollowing;
  final bool hasPendingFollowRequestFromYou;
  final bool hasPendingFollowRequestToYou;
  final bool isFollowed;
  final bool isBlocking;
  final bool isBlocked;
  final bool isMuted;
  final bool isRenoteMuted;

  factory UsersRelationResponseListItemsItem.fromJson(
    Map<String, dynamic> json,
  ) => _$UsersRelationResponseListItemsItemFromJson(json);

  Map<String, dynamic> toJson() =>
      _$UsersRelationResponseListItemsItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersRelationResponseList extends UsersRelationResponse {
  const UsersRelationResponseList({required this.items}) : super();
  final List<UsersRelationResponseListItem> items;

  factory UsersRelationResponseList.fromJson(Map<String, dynamic> json) =>
      _$UsersRelationResponseListFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UsersRelationResponseListToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersReportAbuseRequest {
  const UsersReportAbuseRequest({required this.userId, required this.comment});
  final String userId;
  final String comment;

  factory UsersReportAbuseRequest.fromJson(Map<String, dynamic> json) =>
      _$UsersReportAbuseRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UsersReportAbuseRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersSearchRequest {
  const UsersSearchRequest({
    required this.query,
    this.offset = 0,
    this.limit = 10,
    this.origin = UsersSearchRequestOrigin.combined,
    this.detail = true,
  });
  final String query;
  final int offset;
  final int limit;
  final UsersSearchRequestOrigin origin;
  final bool detail;

  factory UsersSearchRequest.fromJson(Map<String, dynamic> json) =>
      _$UsersSearchRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UsersSearchRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersSearchByUsernameAndHostRequestByUsername
    extends UsersSearchByUsernameAndHostRequest {
  const UsersSearchByUsernameAndHostRequestByUsername({
    this.limit = 10,
    this.detail = true,
    @JsonKey(name: 'username', includeIfNull: true) required this.username,
  }) : super();
  final int limit;
  final bool detail;
  final String? username;

  factory UsersSearchByUsernameAndHostRequestByUsername.fromJson(
    Map<String, dynamic> json,
  ) => _$UsersSearchByUsernameAndHostRequestByUsernameFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$UsersSearchByUsernameAndHostRequestByUsernameToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersSearchByUsernameAndHostRequestByHost
    extends UsersSearchByUsernameAndHostRequest {
  const UsersSearchByUsernameAndHostRequestByHost({
    this.limit = 10,
    this.detail = true,
    @JsonKey(name: 'host', includeIfNull: true) required this.host,
  }) : super();
  final int limit;
  final bool detail;
  final String? host;

  factory UsersSearchByUsernameAndHostRequestByHost.fromJson(
    Map<String, dynamic> json,
  ) => _$UsersSearchByUsernameAndHostRequestByHostFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$UsersSearchByUsernameAndHostRequestByHostToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersShowValueRequestByUserId extends UsersShowValueRequest {
  const UsersShowValueRequestByUserId({this.host, required this.userId})
    : super();
  final String? host;
  final String userId;

  factory UsersShowValueRequestByUserId.fromJson(Map<String, dynamic> json) =>
      _$UsersShowValueRequestByUserIdFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UsersShowValueRequestByUserIdToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersShowValueRequestByUserIds extends UsersShowValueRequest {
  const UsersShowValueRequestByUserIds({this.host, required this.userIds})
    : super();
  final String? host;
  final List<String> userIds;

  factory UsersShowValueRequestByUserIds.fromJson(Map<String, dynamic> json) =>
      _$UsersShowValueRequestByUserIdsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UsersShowValueRequestByUserIdsToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersShowValueRequestByUsername extends UsersShowValueRequest {
  const UsersShowValueRequestByUsername({this.host, required this.username})
    : super();
  final String? host;
  final String username;

  factory UsersShowValueRequestByUsername.fromJson(Map<String, dynamic> json) =>
      _$UsersShowValueRequestByUsernameFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$UsersShowValueRequestByUsernameToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersShowValueResponseUserDetailed extends UsersShowValueResponse {
  const UsersShowValueResponseUserDetailed({required this.value}) : super();
  final UserDetailed value;

  factory UsersShowValueResponseUserDetailed.fromJson(
    Map<String, dynamic> json,
  ) => _$UsersShowValueResponseUserDetailedFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$UsersShowValueResponseUserDetailedToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersShowValueResponseList extends UsersShowValueResponse {
  const UsersShowValueResponseList({required this.items}) : super();
  final List<UserDetailed> items;

  factory UsersShowValueResponseList.fromJson(Map<String, dynamic> json) =>
      _$UsersShowValueResponseListFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UsersShowValueResponseListToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UsersUpdateMemoRequest {
  const UsersUpdateMemoRequest({
    required this.userId,
    @JsonKey(name: 'memo', includeIfNull: true) required this.memo,
  });
  final String userId;
  final String? memo;

  factory UsersUpdateMemoRequest.fromJson(Map<String, dynamic> json) =>
      _$UsersUpdateMemoRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UsersUpdateMemoRequestToJson(this);
}
