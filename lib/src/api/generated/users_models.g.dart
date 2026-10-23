// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UsersEmailAddressAvailableRequest _$UsersEmailAddressAvailableRequestFromJson(
  Map<String, dynamic> json,
) => UsersEmailAddressAvailableRequest(
  emailAddress: json['emailAddress'] as String,
);

Map<String, dynamic> _$UsersEmailAddressAvailableRequestToJson(
  UsersEmailAddressAvailableRequest instance,
) => <String, dynamic>{'emailAddress': instance.emailAddress};

UsersEmailAddressAvailableResponse _$UsersEmailAddressAvailableResponseFromJson(
  Map<String, dynamic> json,
) => UsersEmailAddressAvailableResponse(
  available: json['available'] as bool,
  reason: json['reason'] as String?,
);

Map<String, dynamic> _$UsersEmailAddressAvailableResponseToJson(
  UsersEmailAddressAvailableResponse instance,
) => <String, dynamic>{
  'available': instance.available,
  'reason': instance.reason,
};

UsersGetAvatarDecorationsResponseItem
_$UsersGetAvatarDecorationsResponseItemFromJson(Map<String, dynamic> json) =>
    UsersGetAvatarDecorationsResponseItem(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      url: json['url'] as String,
      roleIdsThatCanBeUsedThisDecoration:
          (json['roleIdsThatCanBeUsedThisDecoration'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
      category: json['category'] as String?,
    );

Map<String, dynamic> _$UsersGetAvatarDecorationsResponseItemToJson(
  UsersGetAvatarDecorationsResponseItem instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'url': instance.url,
  'roleIdsThatCanBeUsedThisDecoration':
      instance.roleIdsThatCanBeUsedThisDecoration,
  'category': ?instance.category,
};

UsersRetentionResponseItem _$UsersRetentionResponseItemFromJson(
  Map<String, dynamic> json,
) => UsersRetentionResponseItem(
  createdAt: DateTime.parse(json['createdAt'] as String),
  users: json['users'] as num,
  data: Map<String, num>.from(json['data'] as Map),
);

Map<String, dynamic> _$UsersRetentionResponseItemToJson(
  UsersRetentionResponseItem instance,
) => <String, dynamic>{
  'createdAt': instance.createdAt.toIso8601String(),
  'users': instance.users,
  'data': instance.data,
};

UsersUsernameAvailableRequest _$UsersUsernameAvailableRequestFromJson(
  Map<String, dynamic> json,
) => UsersUsernameAvailableRequest(username: json['username'] as String);

Map<String, dynamic> _$UsersUsernameAvailableRequestToJson(
  UsersUsernameAvailableRequest instance,
) => <String, dynamic>{'username': instance.username};

UsersUsernameAvailableResponse _$UsersUsernameAvailableResponseFromJson(
  Map<String, dynamic> json,
) => UsersUsernameAvailableResponse(available: json['available'] as bool);

Map<String, dynamic> _$UsersUsernameAvailableResponseToJson(
  UsersUsernameAvailableResponse instance,
) => <String, dynamic>{'available': instance.available};

UsersGetRequest _$UsersGetRequestFromJson(Map<String, dynamic> json) =>
    UsersGetRequest(
      limit: (json['limit'] as num?)?.toInt() ?? 10,
      offset: (json['offset'] as num?)?.toInt() ?? 0,
      sort: $enumDecodeNullable(_$UsersGetRequestSortEnumMap, json['sort']),
      state:
          $enumDecodeNullable(_$UsersGetRequestStateEnumMap, json['state']) ??
          UsersGetRequestState.all,
      origin:
          $enumDecodeNullable(_$UsersGetRequestOriginEnumMap, json['origin']) ??
          UsersGetRequestOrigin.local,
      hostname: json['hostname'] as String?,
    );

Map<String, dynamic> _$UsersGetRequestToJson(UsersGetRequest instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'offset': instance.offset,
      'sort': ?_$UsersGetRequestSortEnumMap[instance.sort],
      'state': _$UsersGetRequestStateEnumMap[instance.state]!,
      'origin': _$UsersGetRequestOriginEnumMap[instance.origin]!,
      'hostname': ?instance.hostname,
    };

const _$UsersGetRequestSortEnumMap = {
  UsersGetRequestSort.plusfollower: '+follower',
  UsersGetRequestSort.minusfollower: '-follower',
  UsersGetRequestSort.pluscreatedAt: '+createdAt',
  UsersGetRequestSort.minuscreatedAt: '-createdAt',
  UsersGetRequestSort.plusupdatedAt: '+updatedAt',
  UsersGetRequestSort.minusupdatedAt: '-updatedAt',
};

const _$UsersGetRequestStateEnumMap = {
  UsersGetRequestState.all: 'all',
  UsersGetRequestState.alive: 'alive',
};

const _$UsersGetRequestOriginEnumMap = {
  UsersGetRequestOrigin.combined: 'combined',
  UsersGetRequestOrigin.local: 'local',
  UsersGetRequestOrigin.remote: 'remote',
};

UsersAchievementsRequest _$UsersAchievementsRequestFromJson(
  Map<String, dynamic> json,
) => UsersAchievementsRequest(userId: json['userId'] as String);

Map<String, dynamic> _$UsersAchievementsRequestToJson(
  UsersAchievementsRequest instance,
) => <String, dynamic>{'userId': instance.userId};

UsersClipsRequest _$UsersClipsRequestFromJson(Map<String, dynamic> json) =>
    UsersClipsRequest(
      userId: json['userId'] as String,
      limit: (json['limit'] as num?)?.toInt() ?? 10,
      sinceId: json['sinceId'] as String?,
      untilId: json['untilId'] as String?,
      sinceDate: (json['sinceDate'] as num?)?.toInt(),
      untilDate: (json['untilDate'] as num?)?.toInt(),
    );

Map<String, dynamic> _$UsersClipsRequestToJson(UsersClipsRequest instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'limit': instance.limit,
      'sinceId': ?instance.sinceId,
      'untilId': ?instance.untilId,
      'sinceDate': ?instance.sinceDate,
      'untilDate': ?instance.untilDate,
    };

UsersFeaturedNotesRequest _$UsersFeaturedNotesRequestFromJson(
  Map<String, dynamic> json,
) => UsersFeaturedNotesRequest(
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  untilId: json['untilId'] as String?,
  userId: json['userId'] as String,
);

Map<String, dynamic> _$UsersFeaturedNotesRequestToJson(
  UsersFeaturedNotesRequest instance,
) => <String, dynamic>{
  'limit': instance.limit,
  'untilId': ?instance.untilId,
  'userId': instance.userId,
};

UsersFlashsRequest _$UsersFlashsRequestFromJson(Map<String, dynamic> json) =>
    UsersFlashsRequest(
      userId: json['userId'] as String,
      limit: (json['limit'] as num?)?.toInt() ?? 10,
      sinceId: json['sinceId'] as String?,
      untilId: json['untilId'] as String?,
      sinceDate: (json['sinceDate'] as num?)?.toInt(),
      untilDate: (json['untilDate'] as num?)?.toInt(),
    );

Map<String, dynamic> _$UsersFlashsRequestToJson(UsersFlashsRequest instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'limit': instance.limit,
      'sinceId': ?instance.sinceId,
      'untilId': ?instance.untilId,
      'sinceDate': ?instance.sinceDate,
      'untilDate': ?instance.untilDate,
    };

UsersFollowersRequestByUserId _$UsersFollowersRequestByUserIdFromJson(
  Map<String, dynamic> json,
) => UsersFollowersRequestByUserId(
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  userId: json['userId'] as String,
);

Map<String, dynamic> _$UsersFollowersRequestByUserIdToJson(
  UsersFollowersRequestByUserId instance,
) => <String, dynamic>{
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
  'limit': instance.limit,
  'userId': instance.userId,
};

UsersFollowersRequestByUsername _$UsersFollowersRequestByUsernameFromJson(
  Map<String, dynamic> json,
) => UsersFollowersRequestByUsername(
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  username: json['username'] as String,
  host: json['host'] as String?,
);

Map<String, dynamic> _$UsersFollowersRequestByUsernameToJson(
  UsersFollowersRequestByUsername instance,
) => <String, dynamic>{
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
  'limit': instance.limit,
  'username': instance.username,
  'host': instance.host,
};

UsersFollowingRequestByUserId _$UsersFollowingRequestByUserIdFromJson(
  Map<String, dynamic> json,
) => UsersFollowingRequestByUserId(
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  birthday: json['birthday'] as String?,
  userId: json['userId'] as String,
);

Map<String, dynamic> _$UsersFollowingRequestByUserIdToJson(
  UsersFollowingRequestByUserId instance,
) => <String, dynamic>{
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
  'limit': instance.limit,
  'birthday': ?instance.birthday,
  'userId': instance.userId,
};

UsersFollowingRequestByUsername _$UsersFollowingRequestByUsernameFromJson(
  Map<String, dynamic> json,
) => UsersFollowingRequestByUsername(
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  birthday: json['birthday'] as String?,
  username: json['username'] as String,
  host: json['host'] as String?,
);

Map<String, dynamic> _$UsersFollowingRequestByUsernameToJson(
  UsersFollowingRequestByUsername instance,
) => <String, dynamic>{
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
  'limit': instance.limit,
  'birthday': ?instance.birthday,
  'username': instance.username,
  'host': instance.host,
};

UsersGalleryPostsRequest _$UsersGalleryPostsRequestFromJson(
  Map<String, dynamic> json,
) => UsersGalleryPostsRequest(
  userId: json['userId'] as String,
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
);

Map<String, dynamic> _$UsersGalleryPostsRequestToJson(
  UsersGalleryPostsRequest instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'limit': instance.limit,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
};

UsersGetFollowingUsersByBirthdayRequest
_$UsersGetFollowingUsersByBirthdayRequestFromJson(Map<String, dynamic> json) =>
    UsersGetFollowingUsersByBirthdayRequest(
      limit: (json['limit'] as num?)?.toInt() ?? 10,
      offset: (json['offset'] as num?)?.toInt() ?? 0,
      birthday: json['birthday'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$UsersGetFollowingUsersByBirthdayRequestToJson(
  UsersGetFollowingUsersByBirthdayRequest instance,
) => <String, dynamic>{
  'limit': instance.limit,
  'offset': instance.offset,
  'birthday': instance.birthday,
};

UsersGetFollowingUsersByBirthdayResponseItem
_$UsersGetFollowingUsersByBirthdayResponseItemFromJson(
  Map<String, dynamic> json,
) => UsersGetFollowingUsersByBirthdayResponseItem(
  id: json['id'] as String,
  birthday: json['birthday'] as String,
  user: UserLite.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$UsersGetFollowingUsersByBirthdayResponseItemToJson(
  UsersGetFollowingUsersByBirthdayResponseItem instance,
) => <String, dynamic>{
  'id': instance.id,
  'birthday': instance.birthday,
  'user': instance.user.toJson(),
};

UsersGetFrequentlyRepliedUsersRequest
_$UsersGetFrequentlyRepliedUsersRequestFromJson(Map<String, dynamic> json) =>
    UsersGetFrequentlyRepliedUsersRequest(
      userId: json['userId'] as String,
      limit: (json['limit'] as num?)?.toInt() ?? 10,
    );

Map<String, dynamic> _$UsersGetFrequentlyRepliedUsersRequestToJson(
  UsersGetFrequentlyRepliedUsersRequest instance,
) => <String, dynamic>{'userId': instance.userId, 'limit': instance.limit};

UsersGetFrequentlyRepliedUsersResponseItem
_$UsersGetFrequentlyRepliedUsersResponseItemFromJson(
  Map<String, dynamic> json,
) => UsersGetFrequentlyRepliedUsersResponseItem(
  user: UserDetailed.fromJson(json['user'] as Map<String, dynamic>),
  weight: json['weight'] as num,
);

Map<String, dynamic> _$UsersGetFrequentlyRepliedUsersResponseItemToJson(
  UsersGetFrequentlyRepliedUsersResponseItem instance,
) => <String, dynamic>{
  'user': instance.user.toJson(),
  'weight': instance.weight,
};

UsersListsCreateRequest _$UsersListsCreateRequestFromJson(
  Map<String, dynamic> json,
) => UsersListsCreateRequest(name: json['name'] as String);

Map<String, dynamic> _$UsersListsCreateRequestToJson(
  UsersListsCreateRequest instance,
) => <String, dynamic>{'name': instance.name};

UsersListsCreateFromPublicRequest _$UsersListsCreateFromPublicRequestFromJson(
  Map<String, dynamic> json,
) => UsersListsCreateFromPublicRequest(
  name: json['name'] as String,
  listId: json['listId'] as String,
);

Map<String, dynamic> _$UsersListsCreateFromPublicRequestToJson(
  UsersListsCreateFromPublicRequest instance,
) => <String, dynamic>{'name': instance.name, 'listId': instance.listId};

UsersListsDeleteRequest _$UsersListsDeleteRequestFromJson(
  Map<String, dynamic> json,
) => UsersListsDeleteRequest(listId: json['listId'] as String);

Map<String, dynamic> _$UsersListsDeleteRequestToJson(
  UsersListsDeleteRequest instance,
) => <String, dynamic>{'listId': instance.listId};

UsersListsFavoriteRequest _$UsersListsFavoriteRequestFromJson(
  Map<String, dynamic> json,
) => UsersListsFavoriteRequest(listId: json['listId'] as String);

Map<String, dynamic> _$UsersListsFavoriteRequestToJson(
  UsersListsFavoriteRequest instance,
) => <String, dynamic>{'listId': instance.listId};

UsersListsGetMembershipsRequest _$UsersListsGetMembershipsRequestFromJson(
  Map<String, dynamic> json,
) => UsersListsGetMembershipsRequest(
  listId: json['listId'] as String,
  forPublic: json['forPublic'] as bool? ?? false,
  limit: (json['limit'] as num?)?.toInt() ?? 30,
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
);

Map<String, dynamic> _$UsersListsGetMembershipsRequestToJson(
  UsersListsGetMembershipsRequest instance,
) => <String, dynamic>{
  'listId': instance.listId,
  'forPublic': instance.forPublic,
  'limit': instance.limit,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
};

UsersListsGetMembershipsResponseItem
_$UsersListsGetMembershipsResponseItemFromJson(Map<String, dynamic> json) =>
    UsersListsGetMembershipsResponseItem(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      userId: json['userId'] as String,
      user: UserLite.fromJson(json['user'] as Map<String, dynamic>),
      withReplies: json['withReplies'] as bool,
    );

Map<String, dynamic> _$UsersListsGetMembershipsResponseItemToJson(
  UsersListsGetMembershipsResponseItem instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'userId': instance.userId,
  'user': instance.user.toJson(),
  'withReplies': instance.withReplies,
};

UsersListsListRequest _$UsersListsListRequestFromJson(
  Map<String, dynamic> json,
) => UsersListsListRequest(userId: json['userId'] as String?);

Map<String, dynamic> _$UsersListsListRequestToJson(
  UsersListsListRequest instance,
) => <String, dynamic>{'userId': ?instance.userId};

UsersListsPullRequest _$UsersListsPullRequestFromJson(
  Map<String, dynamic> json,
) => UsersListsPullRequest(
  listId: json['listId'] as String,
  userId: json['userId'] as String,
);

Map<String, dynamic> _$UsersListsPullRequestToJson(
  UsersListsPullRequest instance,
) => <String, dynamic>{'listId': instance.listId, 'userId': instance.userId};

UsersListsPushRequest _$UsersListsPushRequestFromJson(
  Map<String, dynamic> json,
) => UsersListsPushRequest(
  listId: json['listId'] as String,
  userId: json['userId'] as String,
);

Map<String, dynamic> _$UsersListsPushRequestToJson(
  UsersListsPushRequest instance,
) => <String, dynamic>{'listId': instance.listId, 'userId': instance.userId};

UsersListsShowRequest _$UsersListsShowRequestFromJson(
  Map<String, dynamic> json,
) => UsersListsShowRequest(
  listId: json['listId'] as String,
  forPublic: json['forPublic'] as bool? ?? false,
);

Map<String, dynamic> _$UsersListsShowRequestToJson(
  UsersListsShowRequest instance,
) => <String, dynamic>{
  'listId': instance.listId,
  'forPublic': instance.forPublic,
};

UsersListsShowResponse _$UsersListsShowResponseFromJson(
  Map<String, dynamic> json,
) => UsersListsShowResponse(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  name: json['name'] as String,
  userIds: (json['userIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  isPublic: json['isPublic'] as bool,
  likedCount: json['likedCount'] as num?,
  isLiked: json['isLiked'] as bool?,
);

Map<String, dynamic> _$UsersListsShowResponseToJson(
  UsersListsShowResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'name': instance.name,
  'userIds': ?instance.userIds,
  'isPublic': instance.isPublic,
  'likedCount': ?instance.likedCount,
  'isLiked': ?instance.isLiked,
};

UsersListsUnfavoriteRequest _$UsersListsUnfavoriteRequestFromJson(
  Map<String, dynamic> json,
) => UsersListsUnfavoriteRequest(listId: json['listId'] as String);

Map<String, dynamic> _$UsersListsUnfavoriteRequestToJson(
  UsersListsUnfavoriteRequest instance,
) => <String, dynamic>{'listId': instance.listId};

UsersListsUpdateRequest _$UsersListsUpdateRequestFromJson(
  Map<String, dynamic> json,
) => UsersListsUpdateRequest(
  listId: json['listId'] as String,
  name: json['name'] as String?,
  isPublic: json['isPublic'] as bool?,
);

Map<String, dynamic> _$UsersListsUpdateRequestToJson(
  UsersListsUpdateRequest instance,
) => <String, dynamic>{
  'listId': instance.listId,
  'name': ?instance.name,
  'isPublic': ?instance.isPublic,
};

UsersListsUpdateMembershipRequest _$UsersListsUpdateMembershipRequestFromJson(
  Map<String, dynamic> json,
) => UsersListsUpdateMembershipRequest(
  listId: json['listId'] as String,
  userId: json['userId'] as String,
  withReplies: json['withReplies'] as bool?,
);

Map<String, dynamic> _$UsersListsUpdateMembershipRequestToJson(
  UsersListsUpdateMembershipRequest instance,
) => <String, dynamic>{
  'listId': instance.listId,
  'userId': instance.userId,
  'withReplies': ?instance.withReplies,
};

UsersNotesRequest _$UsersNotesRequestFromJson(Map<String, dynamic> json) =>
    UsersNotesRequest(
      userId: json['userId'] as String,
      withReplies: json['withReplies'] as bool? ?? false,
      withRenotes: json['withRenotes'] as bool? ?? true,
      withChannelNotes: json['withChannelNotes'] as bool? ?? false,
      limit: (json['limit'] as num?)?.toInt() ?? 10,
      sinceId: json['sinceId'] as String?,
      untilId: json['untilId'] as String?,
      sinceDate: (json['sinceDate'] as num?)?.toInt(),
      untilDate: (json['untilDate'] as num?)?.toInt(),
      allowPartial: json['allowPartial'] as bool? ?? false,
      withFiles: json['withFiles'] as bool? ?? false,
    );

Map<String, dynamic> _$UsersNotesRequestToJson(UsersNotesRequest instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'withReplies': instance.withReplies,
      'withRenotes': instance.withRenotes,
      'withChannelNotes': instance.withChannelNotes,
      'limit': instance.limit,
      'sinceId': ?instance.sinceId,
      'untilId': ?instance.untilId,
      'sinceDate': ?instance.sinceDate,
      'untilDate': ?instance.untilDate,
      'allowPartial': instance.allowPartial,
      'withFiles': instance.withFiles,
    };

UsersPagesRequest _$UsersPagesRequestFromJson(Map<String, dynamic> json) =>
    UsersPagesRequest(
      userId: json['userId'] as String,
      limit: (json['limit'] as num?)?.toInt() ?? 10,
      sinceId: json['sinceId'] as String?,
      untilId: json['untilId'] as String?,
      sinceDate: (json['sinceDate'] as num?)?.toInt(),
      untilDate: (json['untilDate'] as num?)?.toInt(),
    );

Map<String, dynamic> _$UsersPagesRequestToJson(UsersPagesRequest instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'limit': instance.limit,
      'sinceId': ?instance.sinceId,
      'untilId': ?instance.untilId,
      'sinceDate': ?instance.sinceDate,
      'untilDate': ?instance.untilDate,
    };

UsersReactionsRequest _$UsersReactionsRequestFromJson(
  Map<String, dynamic> json,
) => UsersReactionsRequest(
  userId: json['userId'] as String,
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
);

Map<String, dynamic> _$UsersReactionsRequestToJson(
  UsersReactionsRequest instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'limit': instance.limit,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
};

UsersRecommendationRequest _$UsersRecommendationRequestFromJson(
  Map<String, dynamic> json,
) => UsersRecommendationRequest(
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  offset: (json['offset'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$UsersRecommendationRequestToJson(
  UsersRecommendationRequest instance,
) => <String, dynamic>{'limit': instance.limit, 'offset': instance.offset};

UsersRelationRequest _$UsersRelationRequestFromJson(
  Map<String, dynamic> json,
) => UsersRelationRequest(userId: json['userId'] as Map<String, dynamic>?);

Map<String, dynamic> _$UsersRelationRequestToJson(
  UsersRelationRequest instance,
) => <String, dynamic>{'userId': instance.userId};

UsersRelationResponseObject _$UsersRelationResponseObjectFromJson(
  Map<String, dynamic> json,
) => UsersRelationResponseObject(
  id: json['id'] as String,
  isFollowing: json['isFollowing'] as bool,
  hasPendingFollowRequestFromYou:
      json['hasPendingFollowRequestFromYou'] as bool,
  hasPendingFollowRequestToYou: json['hasPendingFollowRequestToYou'] as bool,
  isFollowed: json['isFollowed'] as bool,
  isBlocking: json['isBlocking'] as bool,
  isBlocked: json['isBlocked'] as bool,
  isMuted: json['isMuted'] as bool,
  isRenoteMuted: json['isRenoteMuted'] as bool,
);

Map<String, dynamic> _$UsersRelationResponseObjectToJson(
  UsersRelationResponseObject instance,
) => <String, dynamic>{
  'id': instance.id,
  'isFollowing': instance.isFollowing,
  'hasPendingFollowRequestFromYou': instance.hasPendingFollowRequestFromYou,
  'hasPendingFollowRequestToYou': instance.hasPendingFollowRequestToYou,
  'isFollowed': instance.isFollowed,
  'isBlocking': instance.isBlocking,
  'isBlocked': instance.isBlocked,
  'isMuted': instance.isMuted,
  'isRenoteMuted': instance.isRenoteMuted,
};

UsersRelationResponseListItem _$UsersRelationResponseListItemFromJson(
  Map<String, dynamic> json,
) => UsersRelationResponseListItem(
  id: json['id'] as String,
  isFollowing: json['isFollowing'] as bool,
  hasPendingFollowRequestFromYou:
      json['hasPendingFollowRequestFromYou'] as bool,
  hasPendingFollowRequestToYou: json['hasPendingFollowRequestToYou'] as bool,
  isFollowed: json['isFollowed'] as bool,
  isBlocking: json['isBlocking'] as bool,
  isBlocked: json['isBlocked'] as bool,
  isMuted: json['isMuted'] as bool,
  isRenoteMuted: json['isRenoteMuted'] as bool,
);

Map<String, dynamic> _$UsersRelationResponseListItemToJson(
  UsersRelationResponseListItem instance,
) => <String, dynamic>{
  'id': instance.id,
  'isFollowing': instance.isFollowing,
  'hasPendingFollowRequestFromYou': instance.hasPendingFollowRequestFromYou,
  'hasPendingFollowRequestToYou': instance.hasPendingFollowRequestToYou,
  'isFollowed': instance.isFollowed,
  'isBlocking': instance.isBlocking,
  'isBlocked': instance.isBlocked,
  'isMuted': instance.isMuted,
  'isRenoteMuted': instance.isRenoteMuted,
};

UsersRelationResponseListItemsItem _$UsersRelationResponseListItemsItemFromJson(
  Map<String, dynamic> json,
) => UsersRelationResponseListItemsItem(
  id: json['id'] as String,
  isFollowing: json['isFollowing'] as bool,
  hasPendingFollowRequestFromYou:
      json['hasPendingFollowRequestFromYou'] as bool,
  hasPendingFollowRequestToYou: json['hasPendingFollowRequestToYou'] as bool,
  isFollowed: json['isFollowed'] as bool,
  isBlocking: json['isBlocking'] as bool,
  isBlocked: json['isBlocked'] as bool,
  isMuted: json['isMuted'] as bool,
  isRenoteMuted: json['isRenoteMuted'] as bool,
);

Map<String, dynamic> _$UsersRelationResponseListItemsItemToJson(
  UsersRelationResponseListItemsItem instance,
) => <String, dynamic>{
  'id': instance.id,
  'isFollowing': instance.isFollowing,
  'hasPendingFollowRequestFromYou': instance.hasPendingFollowRequestFromYou,
  'hasPendingFollowRequestToYou': instance.hasPendingFollowRequestToYou,
  'isFollowed': instance.isFollowed,
  'isBlocking': instance.isBlocking,
  'isBlocked': instance.isBlocked,
  'isMuted': instance.isMuted,
  'isRenoteMuted': instance.isRenoteMuted,
};

UsersRelationResponseList _$UsersRelationResponseListFromJson(
  Map<String, dynamic> json,
) => UsersRelationResponseList(
  items: (json['items'] as List<dynamic>)
      .map(
        (e) =>
            UsersRelationResponseListItem.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$UsersRelationResponseListToJson(
  UsersRelationResponseList instance,
) => <String, dynamic>{'items': instance.items.map((e) => e.toJson()).toList()};

UsersReportAbuseRequest _$UsersReportAbuseRequestFromJson(
  Map<String, dynamic> json,
) => UsersReportAbuseRequest(
  userId: json['userId'] as String,
  comment: json['comment'] as String,
);

Map<String, dynamic> _$UsersReportAbuseRequestToJson(
  UsersReportAbuseRequest instance,
) => <String, dynamic>{'userId': instance.userId, 'comment': instance.comment};

UsersSearchRequest _$UsersSearchRequestFromJson(Map<String, dynamic> json) =>
    UsersSearchRequest(
      query: json['query'] as String,
      offset: (json['offset'] as num?)?.toInt() ?? 0,
      limit: (json['limit'] as num?)?.toInt() ?? 10,
      origin:
          $enumDecodeNullable(
            _$UsersSearchRequestOriginEnumMap,
            json['origin'],
          ) ??
          UsersSearchRequestOrigin.combined,
      detail: json['detail'] as bool? ?? true,
    );

Map<String, dynamic> _$UsersSearchRequestToJson(UsersSearchRequest instance) =>
    <String, dynamic>{
      'query': instance.query,
      'offset': instance.offset,
      'limit': instance.limit,
      'origin': _$UsersSearchRequestOriginEnumMap[instance.origin]!,
      'detail': instance.detail,
    };

const _$UsersSearchRequestOriginEnumMap = {
  UsersSearchRequestOrigin.local: 'local',
  UsersSearchRequestOrigin.remote: 'remote',
  UsersSearchRequestOrigin.combined: 'combined',
};

UsersSearchByUsernameAndHostRequestByUsername
_$UsersSearchByUsernameAndHostRequestByUsernameFromJson(
  Map<String, dynamic> json,
) => UsersSearchByUsernameAndHostRequestByUsername(
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  detail: json['detail'] as bool? ?? true,
  username: json['username'] as String?,
);

Map<String, dynamic> _$UsersSearchByUsernameAndHostRequestByUsernameToJson(
  UsersSearchByUsernameAndHostRequestByUsername instance,
) => <String, dynamic>{
  'limit': instance.limit,
  'detail': instance.detail,
  'username': instance.username,
};

UsersSearchByUsernameAndHostRequestByHost
_$UsersSearchByUsernameAndHostRequestByHostFromJson(
  Map<String, dynamic> json,
) => UsersSearchByUsernameAndHostRequestByHost(
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  detail: json['detail'] as bool? ?? true,
  host: json['host'] as String?,
);

Map<String, dynamic> _$UsersSearchByUsernameAndHostRequestByHostToJson(
  UsersSearchByUsernameAndHostRequestByHost instance,
) => <String, dynamic>{
  'limit': instance.limit,
  'detail': instance.detail,
  'host': instance.host,
};

UsersShowValueRequestByUserId _$UsersShowValueRequestByUserIdFromJson(
  Map<String, dynamic> json,
) => UsersShowValueRequestByUserId(
  host: json['host'] as String?,
  userId: json['userId'] as String,
);

Map<String, dynamic> _$UsersShowValueRequestByUserIdToJson(
  UsersShowValueRequestByUserId instance,
) => <String, dynamic>{'host': ?instance.host, 'userId': instance.userId};

UsersShowValueRequestByUserIds _$UsersShowValueRequestByUserIdsFromJson(
  Map<String, dynamic> json,
) => UsersShowValueRequestByUserIds(
  host: json['host'] as String?,
  userIds: (json['userIds'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$UsersShowValueRequestByUserIdsToJson(
  UsersShowValueRequestByUserIds instance,
) => <String, dynamic>{'host': ?instance.host, 'userIds': instance.userIds};

UsersShowValueRequestByUsername _$UsersShowValueRequestByUsernameFromJson(
  Map<String, dynamic> json,
) => UsersShowValueRequestByUsername(
  host: json['host'] as String?,
  username: json['username'] as String,
);

Map<String, dynamic> _$UsersShowValueRequestByUsernameToJson(
  UsersShowValueRequestByUsername instance,
) => <String, dynamic>{'host': ?instance.host, 'username': instance.username};

UsersShowValueResponseUserDetailed _$UsersShowValueResponseUserDetailedFromJson(
  Map<String, dynamic> json,
) => UsersShowValueResponseUserDetailed(
  value: UserDetailed.fromJson(json['value'] as Map<String, dynamic>),
);

Map<String, dynamic> _$UsersShowValueResponseUserDetailedToJson(
  UsersShowValueResponseUserDetailed instance,
) => <String, dynamic>{'value': instance.value.toJson()};

UsersShowValueResponseList _$UsersShowValueResponseListFromJson(
  Map<String, dynamic> json,
) => UsersShowValueResponseList(
  items: (json['items'] as List<dynamic>)
      .map((e) => UserDetailed.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$UsersShowValueResponseListToJson(
  UsersShowValueResponseList instance,
) => <String, dynamic>{'items': instance.items.map((e) => e.toJson()).toList()};

UsersUpdateMemoRequest _$UsersUpdateMemoRequestFromJson(
  Map<String, dynamic> json,
) => UsersUpdateMemoRequest(
  userId: json['userId'] as String,
  memo: json['memo'] as String?,
);

Map<String, dynamic> _$UsersUpdateMemoRequestToJson(
  UsersUpdateMemoRequest instance,
) => <String, dynamic>{'userId': instance.userId, 'memo': instance.memo};
