// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../config.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'users_models.dart';

class RawUsersApi {
  RawUsersApi(this.client);

  final MisskeyClient client;

  Future<UsersEmailAddressAvailableResponse> emailAddressAvailable(
    UsersEmailAddressAvailableRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<UsersEmailAddressAvailableResponse>(
      'email-address/available',
      body: request.toJson(),
      requiresAuth: false,
      parser: UsersEmailAddressAvailableResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<UsersGetAvatarDecorationsResponseItem>> getAvatarDecorations({
    CancelToken? cancelToken,
  }) {
    return client.postList<UsersGetAvatarDecorationsResponseItem>(
      'get-avatar-decorations',
      requiresAuth: false,
      itemParser: UsersGetAvatarDecorationsResponseItem.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<UserDetailed>> pinnedUsers({CancelToken? cancelToken}) {
    return client.postList<UserDetailed>(
      'pinned-users',
      requiresAuth: false,
      itemParser: UserDetailed.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<UsersRetentionResponseItem>> retention({
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) {
    return client.postList<UsersRetentionResponseItem>(
      'retention',
      httpMethod: httpMethod,
      requiresAuth: false,
      itemParser: UsersRetentionResponseItem.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<UsersUsernameAvailableResponse> usernameAvailable(
    UsersUsernameAvailableRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<UsersUsernameAvailableResponse>(
      'username/available',
      body: request.toJson(),
      requiresAuth: false,
      parser: UsersUsernameAvailableResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<UserDetailed>> get(
    UsersGetRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<UserDetailed>(
      'users',
      body: request.toJson(),
      requiresAuth: false,
      itemParser: UserDetailed.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<Achievement>> achievements(
    UsersAchievementsRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Achievement>(
      'users/achievements',
      body: request.toJson(),
      requiresAuth: false,
      itemParser: Achievement.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<Clip>> clips(
    UsersClipsRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Clip>(
      'users/clips',
      body: request.toJson(),
      requiresAuth: false,
      itemParser: Clip.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<Note>> featuredNotes(
    UsersFeaturedNotesRequest request, {
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) {
    return client.postList<Note>(
      'users/featured-notes',
      body: request.toJson(),
      httpMethod: httpMethod,
      requiresAuth: false,
      itemParser: Note.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<Flash>> flashs(
    UsersFlashsRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Flash>(
      'users/flashs',
      body: request.toJson(),
      requiresAuth: false,
      itemParser: Flash.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<Following>> followers(
    UsersFollowersRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Following>(
      'users/followers',
      body: request.toJson(),
      requiresAuth: false,
      itemParser: Following.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<Following>> following(
    UsersFollowingRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Following>(
      'users/following',
      body: request.toJson(),
      requiresAuth: false,
      itemParser: Following.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<GalleryPost>> galleryPosts(
    UsersGalleryPostsRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<GalleryPost>(
      'users/gallery/posts',
      body: request.toJson(),
      requiresAuth: false,
      itemParser: GalleryPost.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<UsersGetFollowingUsersByBirthdayResponseItem>>
  getFollowingUsersByBirthday(
    UsersGetFollowingUsersByBirthdayRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<UsersGetFollowingUsersByBirthdayResponseItem>(
      'users/get-following-users-by-birthday',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: UsersGetFollowingUsersByBirthdayResponseItem.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<UsersGetFrequentlyRepliedUsersResponseItem>>
  getFrequentlyRepliedUsers(
    UsersGetFrequentlyRepliedUsersRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<UsersGetFrequentlyRepliedUsersResponseItem>(
      'users/get-frequently-replied-users',
      body: request.toJson(),
      requiresAuth: false,
      itemParser: UsersGetFrequentlyRepliedUsersResponseItem.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<UserList> listsCreate(
    UsersListsCreateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<UserList>(
      'users/lists/create',
      body: request.toJson(),
      requiresAuth: true,
      parser: UserList.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<UserList> listsCreateFromPublic(
    UsersListsCreateFromPublicRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<UserList>(
      'users/lists/create-from-public',
      body: request.toJson(),
      requiresAuth: true,
      parser: UserList.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<void> listsDelete(
    UsersListsDeleteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'users/lists/delete',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  Future<void> listsFavorite(
    UsersListsFavoriteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'users/lists/favorite',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  Future<List<UsersListsGetMembershipsResponseItem>> listsGetMemberships(
    UsersListsGetMembershipsRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<UsersListsGetMembershipsResponseItem>(
      'users/lists/get-memberships',
      body: request.toJson(),
      requiresAuth: false,
      itemParser: UsersListsGetMembershipsResponseItem.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<UserList>> listsList(
    UsersListsListRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<UserList>(
      'users/lists/list',
      body: request.toJson(),
      requiresAuth: false,
      itemParser: UserList.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<void> listsPull(
    UsersListsPullRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'users/lists/pull',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  Future<void> listsPush(
    UsersListsPushRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'users/lists/push',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  Future<UsersListsShowResponse> listsShow(
    UsersListsShowRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<UsersListsShowResponse>(
      'users/lists/show',
      body: request.toJson(),
      requiresAuth: false,
      parser: UsersListsShowResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<void> listsUnfavorite(
    UsersListsUnfavoriteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'users/lists/unfavorite',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  Future<UserList> listsUpdate(
    UsersListsUpdateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<UserList>(
      'users/lists/update',
      body: request.toJson(),
      requiresAuth: true,
      parser: UserList.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<void> listsUpdateMembership(
    UsersListsUpdateMembershipRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'users/lists/update-membership',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  Future<List<Note>> notes(
    UsersNotesRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Note>(
      'users/notes',
      body: request.toJson(),
      requiresAuth: false,
      itemParser: Note.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<Page>> pages(
    UsersPagesRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Page>(
      'users/pages',
      body: request.toJson(),
      requiresAuth: false,
      itemParser: Page.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<NoteReactionWithNote>> reactions(
    UsersReactionsRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<NoteReactionWithNote>(
      'users/reactions',
      body: request.toJson(),
      requiresAuth: false,
      itemParser: NoteReactionWithNote.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<UserDetailed>> recommendation(
    UsersRecommendationRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<UserDetailed>(
      'users/recommendation',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: UserDetailed.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<UsersRelationResponse> relation(
    UsersRelationRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postParsed<UsersRelationResponse>(
      'users/relation',
      body: request.toJson(),
      requiresAuth: true,
      parser: UsersRelationResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<void> reportAbuse(
    UsersReportAbuseRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'users/report-abuse',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  Future<List<User>> search(
    UsersSearchRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<User>(
      'users/search',
      body: request.toJson(),
      requiresAuth: false,
      itemParser: User.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<User>> searchByUsernameAndHost(
    UsersSearchByUsernameAndHostRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<User>(
      'users/search-by-username-and-host',
      body: request.toJson(),
      requiresAuth: false,
      itemParser: User.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<UsersShowValueResponse> showValue(
    UsersShowValueRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postParsed<UsersShowValueResponse>(
      'users/show',
      body: request.toJson(),
      requiresAuth: false,
      parser: UsersShowValueResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<void> updateMemo(
    UsersUpdateMemoRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'users/update-memo',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }
}
