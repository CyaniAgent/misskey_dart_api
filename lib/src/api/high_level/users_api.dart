// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../config.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import '../../pagination/cursor_page.dart';
import '../generated/users_models.dart';

/// High-level endpoints for the `users` API group.
class UsersApi {
  /// Creates a high-level `users` API facade.
  UsersApi(this.client);

  /// The shared client used for transport and authentication.
  final MisskeyClient client;

  /// email-address/available
  ///
  /// Calls POST /api/email-address/available.
  Future<UsersEmailAddressAvailableResponse> emailAddressAvailable({
    required String emailAddress,
    CancelToken? cancelToken,
  }) async {
    return client.raw.users.emailAddressAvailable(
      UsersEmailAddressAvailableRequest(emailAddress: emailAddress),
      cancelToken: cancelToken,
    );
  }

  /// get-avatar-decorations
  ///
  /// Calls POST /api/get-avatar-decorations.
  Future<List<UsersGetAvatarDecorationsResponseItem>> getAvatarDecorations({
    CancelToken? cancelToken,
  }) async {
    return client.raw.users.getAvatarDecorations(cancelToken: cancelToken);
  }

  /// pinned-users
  ///
  /// Calls POST /api/pinned-users.
  Future<List<UserDetailed>> pinnedUsers({CancelToken? cancelToken}) async {
    return client.raw.users.pinnedUsers(cancelToken: cancelToken);
  }

  /// retention
  ///
  /// Calls POST /api/retention.
  Future<List<UsersRetentionResponseItem>> retention({
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) async {
    return client.raw.users.retention(
      httpMethod: httpMethod,
      cancelToken: cancelToken,
    );
  }

  /// username/available
  ///
  /// Calls POST /api/username/available.
  Future<UsersUsernameAvailableResponse> usernameAvailable({
    required String username,
    CancelToken? cancelToken,
  }) async {
    return client.raw.users.usernameAvailable(
      UsersUsernameAvailableRequest(username: username),
      cancelToken: cancelToken,
    );
  }

  /// users
  ///
  /// Calls POST /api/users.
  Future<List<UserDetailed>> get({
    int limit = 10,
    int offset = 0,
    UsersGetRequestSort? sort,
    UsersGetRequestState state = UsersGetRequestState.all,
    UsersGetRequestOrigin origin = UsersGetRequestOrigin.local,
    String? hostname,
    CancelToken? cancelToken,
  }) async {
    return client.raw.users.get(
      UsersGetRequest(
        limit: limit,
        offset: offset,
        sort: sort,
        state: state,
        origin: origin,
        hostname: hostname,
      ),
      cancelToken: cancelToken,
    );
  }

  /// users/achievements
  ///
  /// Calls POST /api/users/achievements.
  Future<List<Achievement>> achievements({
    required String userId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.users.achievements(
      UsersAchievementsRequest(userId: userId),
      cancelToken: cancelToken,
    );
  }

  /// users/clips
  ///
  /// Calls POST /api/users/clips.
  Future<List<Clip>> clips({
    required String userId,
    int limit = 10,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    CancelToken? cancelToken,
  }) async {
    return client.raw.users.clips(
      UsersClipsRequest(
        userId: userId,
        limit: limit,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [clips].
  Future<CursorPage<Clip>> clipsPage({
    int limit = 20,
    String? untilId,
    required String userId,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<Clip>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => clips(
        limit: pageLimit,
        untilId: cursor,
        userId: userId,
        cancelToken: cancelToken,
      ),
    );
  }

  /// users/featured-notes
  ///
  /// Calls POST /api/users/featured-notes.
  Future<List<Note>> featuredNotes({
    int limit = 10,
    String? untilId,
    required String userId,
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) async {
    return client.raw.users.featuredNotes(
      UsersFeaturedNotesRequest(limit: limit, untilId: untilId, userId: userId),
      httpMethod: httpMethod,
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [featuredNotes].
  Future<CursorPage<Note>> featuredNotesPage({
    int limit = 20,
    String? untilId,
    required String userId,
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<Note>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => featuredNotes(
        limit: pageLimit,
        untilId: cursor,
        userId: userId,
        httpMethod: httpMethod,
        cancelToken: cancelToken,
      ),
    );
  }

  /// users/flashs
  ///
  /// Calls POST /api/users/flashs.
  Future<List<Flash>> flashs({
    required String userId,
    int limit = 10,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    CancelToken? cancelToken,
  }) async {
    return client.raw.users.flashs(
      UsersFlashsRequest(
        userId: userId,
        limit: limit,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [flashs].
  Future<CursorPage<Flash>> flashsPage({
    int limit = 20,
    String? untilId,
    required String userId,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<Flash>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => flashs(
        limit: pageLimit,
        untilId: cursor,
        userId: userId,
        cancelToken: cancelToken,
      ),
    );
  }

  /// users/followers
  ///
  /// Calls POST /api/users/followers.
  Future<List<Following>> followersByUserId({
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    int limit = 10,
    required String userId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.users.followers(
      UsersFollowersRequestByUserId(
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
        limit: limit,
        userId: userId,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [followersByUserId].
  Future<CursorPage<Following>> followersByUserIdPage({
    int limit = 20,
    String? untilId,
    required String userId,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<Following>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => followersByUserId(
        limit: pageLimit,
        untilId: cursor,
        userId: userId,
        cancelToken: cancelToken,
      ),
    );
  }

  /// users/followers
  ///
  /// Calls POST /api/users/followers.
  Future<List<Following>> followersByUsername({
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    int limit = 10,
    required String username,
    required String? host,
    CancelToken? cancelToken,
  }) async {
    return client.raw.users.followers(
      UsersFollowersRequestByUsername(
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
        limit: limit,
        username: username,
        host: host,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [followersByUsername].
  Future<CursorPage<Following>> followersByUsernamePage({
    int limit = 20,
    String? untilId,
    required String username,
    required String? host,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<Following>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => followersByUsername(
        limit: pageLimit,
        untilId: cursor,
        username: username,
        host: host,
        cancelToken: cancelToken,
      ),
    );
  }

  /// users/following
  ///
  /// Calls POST /api/users/following.
  Future<List<Following>> followingByUserId({
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    int limit = 10,
    String? birthday,
    required String userId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.users.following(
      UsersFollowingRequestByUserId(
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
        limit: limit,
        birthday: birthday,
        userId: userId,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [followingByUserId].
  Future<CursorPage<Following>> followingByUserIdPage({
    int limit = 20,
    String? untilId,
    String? birthday,
    required String userId,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<Following>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => followingByUserId(
        limit: pageLimit,
        untilId: cursor,
        birthday: birthday,
        userId: userId,
        cancelToken: cancelToken,
      ),
    );
  }

  /// users/following
  ///
  /// Calls POST /api/users/following.
  Future<List<Following>> followingByUsername({
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    int limit = 10,
    String? birthday,
    required String username,
    required String? host,
    CancelToken? cancelToken,
  }) async {
    return client.raw.users.following(
      UsersFollowingRequestByUsername(
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
        limit: limit,
        birthday: birthday,
        username: username,
        host: host,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [followingByUsername].
  Future<CursorPage<Following>> followingByUsernamePage({
    int limit = 20,
    String? untilId,
    String? birthday,
    required String username,
    required String? host,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<Following>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => followingByUsername(
        limit: pageLimit,
        untilId: cursor,
        birthday: birthday,
        username: username,
        host: host,
        cancelToken: cancelToken,
      ),
    );
  }

  /// users/gallery/posts
  ///
  /// Calls POST /api/users/gallery/posts.
  Future<List<GalleryPost>> galleryPosts({
    required String userId,
    int limit = 10,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    CancelToken? cancelToken,
  }) async {
    return client.raw.users.galleryPosts(
      UsersGalleryPostsRequest(
        userId: userId,
        limit: limit,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [galleryPosts].
  Future<CursorPage<GalleryPost>> galleryPostsPage({
    int limit = 20,
    String? untilId,
    required String userId,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<GalleryPost>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => galleryPosts(
        limit: pageLimit,
        untilId: cursor,
        userId: userId,
        cancelToken: cancelToken,
      ),
    );
  }

  /// users/get-following-users-by-birthday
  ///
  /// Calls POST /api/users/get-following-users-by-birthday.
  ///
  /// Authentication required.
  Future<List<UsersGetFollowingUsersByBirthdayResponseItem>>
  getFollowingUsersByBirthday({
    int limit = 10,
    int offset = 0,
    required JsonMap? birthday,
    CancelToken? cancelToken,
  }) async {
    return client.raw.users.getFollowingUsersByBirthday(
      UsersGetFollowingUsersByBirthdayRequest(
        limit: limit,
        offset: offset,
        birthday: birthday,
      ),
      cancelToken: cancelToken,
    );
  }

  /// users/get-frequently-replied-users
  ///
  /// Calls POST /api/users/get-frequently-replied-users.
  Future<List<UsersGetFrequentlyRepliedUsersResponseItem>>
  getFrequentlyRepliedUsers({
    required String userId,
    int limit = 10,
    CancelToken? cancelToken,
  }) async {
    return client.raw.users.getFrequentlyRepliedUsers(
      UsersGetFrequentlyRepliedUsersRequest(userId: userId, limit: limit),
      cancelToken: cancelToken,
    );
  }

  /// users/lists/create
  ///
  /// Calls POST /api/users/lists/create.
  ///
  /// Authentication required.
  Future<UserList> listsCreate({
    required String name,
    CancelToken? cancelToken,
  }) async {
    return client.raw.users.listsCreate(
      UsersListsCreateRequest(name: name),
      cancelToken: cancelToken,
    );
  }

  /// users/lists/create-from-public
  ///
  /// Calls POST /api/users/lists/create-from-public.
  ///
  /// Authentication required.
  Future<UserList> listsCreateFromPublic({
    required String name,
    required String listId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.users.listsCreateFromPublic(
      UsersListsCreateFromPublicRequest(name: name, listId: listId),
      cancelToken: cancelToken,
    );
  }

  /// users/lists/delete
  ///
  /// Calls POST /api/users/lists/delete.
  ///
  /// Authentication required.
  Future<void> listsDelete({
    required String listId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.users.listsDelete(
      UsersListsDeleteRequest(listId: listId),
      cancelToken: cancelToken,
    );
  }

  /// users/lists/favorite
  ///
  /// Calls POST /api/users/lists/favorite.
  ///
  /// Authentication required.
  Future<void> listsFavorite({
    required String listId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.users.listsFavorite(
      UsersListsFavoriteRequest(listId: listId),
      cancelToken: cancelToken,
    );
  }

  /// users/lists/get-memberships
  ///
  /// Calls POST /api/users/lists/get-memberships.
  Future<List<UsersListsGetMembershipsResponseItem>> listsGetMemberships({
    required String listId,
    bool forPublic = false,
    int limit = 30,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    CancelToken? cancelToken,
  }) async {
    return client.raw.users.listsGetMemberships(
      UsersListsGetMembershipsRequest(
        listId: listId,
        forPublic: forPublic,
        limit: limit,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [listsGetMemberships].
  Future<CursorPage<UsersListsGetMembershipsResponseItem>>
  listsGetMembershipsPage({
    int limit = 20,
    String? untilId,
    required String listId,
    bool forPublic = false,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<UsersListsGetMembershipsResponseItem>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => listsGetMemberships(
        limit: pageLimit,
        untilId: cursor,
        listId: listId,
        forPublic: forPublic,
        cancelToken: cancelToken,
      ),
    );
  }

  /// users/lists/list
  ///
  /// Calls POST /api/users/lists/list.
  Future<List<UserList>> listsList({
    String? userId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.users.listsList(
      UsersListsListRequest(userId: userId),
      cancelToken: cancelToken,
    );
  }

  /// users/lists/pull
  ///
  /// Calls POST /api/users/lists/pull.
  ///
  /// Authentication required.
  Future<void> listsPull({
    required String listId,
    required String userId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.users.listsPull(
      UsersListsPullRequest(listId: listId, userId: userId),
      cancelToken: cancelToken,
    );
  }

  /// users/lists/push
  ///
  /// Calls POST /api/users/lists/push.
  ///
  /// Authentication required.
  Future<void> listsPush({
    required String listId,
    required String userId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.users.listsPush(
      UsersListsPushRequest(listId: listId, userId: userId),
      cancelToken: cancelToken,
    );
  }

  /// users/lists/show
  ///
  /// Calls POST /api/users/lists/show.
  Future<UsersListsShowResponse> listsShow({
    required String listId,
    bool forPublic = false,
    CancelToken? cancelToken,
  }) async {
    return client.raw.users.listsShow(
      UsersListsShowRequest(listId: listId, forPublic: forPublic),
      cancelToken: cancelToken,
    );
  }

  /// users/lists/unfavorite
  ///
  /// Calls POST /api/users/lists/unfavorite.
  ///
  /// Authentication required.
  Future<void> listsUnfavorite({
    required String listId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.users.listsUnfavorite(
      UsersListsUnfavoriteRequest(listId: listId),
      cancelToken: cancelToken,
    );
  }

  /// users/lists/update
  ///
  /// Calls POST /api/users/lists/update.
  ///
  /// Authentication required.
  Future<UserList> listsUpdate({
    required String listId,
    String? name,
    bool? isPublic,
    CancelToken? cancelToken,
  }) async {
    return client.raw.users.listsUpdate(
      UsersListsUpdateRequest(listId: listId, name: name, isPublic: isPublic),
      cancelToken: cancelToken,
    );
  }

  /// users/lists/update-membership
  ///
  /// Calls POST /api/users/lists/update-membership.
  ///
  /// Authentication required.
  Future<void> listsUpdateMembership({
    required String listId,
    required String userId,
    bool? withReplies,
    CancelToken? cancelToken,
  }) async {
    return client.raw.users.listsUpdateMembership(
      UsersListsUpdateMembershipRequest(
        listId: listId,
        userId: userId,
        withReplies: withReplies,
      ),
      cancelToken: cancelToken,
    );
  }

  /// users/notes
  ///
  /// Calls POST /api/users/notes.
  Future<List<Note>> notes({
    required String userId,
    bool withReplies = false,
    bool withRenotes = true,
    bool withChannelNotes = false,
    int limit = 10,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    bool allowPartial = false,
    bool withFiles = false,
    CancelToken? cancelToken,
  }) async {
    return client.raw.users.notes(
      UsersNotesRequest(
        userId: userId,
        withReplies: withReplies,
        withRenotes: withRenotes,
        withChannelNotes: withChannelNotes,
        limit: limit,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
        allowPartial: allowPartial,
        withFiles: withFiles,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [notes].
  Future<CursorPage<Note>> notesPage({
    int limit = 20,
    String? untilId,
    required String userId,
    bool withReplies = false,
    bool withRenotes = true,
    bool withChannelNotes = false,
    bool allowPartial = false,
    bool withFiles = false,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<Note>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => notes(
        limit: pageLimit,
        untilId: cursor,
        userId: userId,
        withReplies: withReplies,
        withRenotes: withRenotes,
        withChannelNotes: withChannelNotes,
        allowPartial: allowPartial,
        withFiles: withFiles,
        cancelToken: cancelToken,
      ),
    );
  }

  /// users/pages
  ///
  /// Calls POST /api/users/pages.
  Future<List<Page>> pages({
    required String userId,
    int limit = 10,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    CancelToken? cancelToken,
  }) async {
    return client.raw.users.pages(
      UsersPagesRequest(
        userId: userId,
        limit: limit,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [pages].
  Future<CursorPage<Page>> pagesPage({
    int limit = 20,
    String? untilId,
    required String userId,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<Page>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => pages(
        limit: pageLimit,
        untilId: cursor,
        userId: userId,
        cancelToken: cancelToken,
      ),
    );
  }

  /// users/reactions
  ///
  /// Calls POST /api/users/reactions.
  Future<List<NoteReactionWithNote>> reactions({
    required String userId,
    int limit = 10,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    CancelToken? cancelToken,
  }) async {
    return client.raw.users.reactions(
      UsersReactionsRequest(
        userId: userId,
        limit: limit,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [reactions].
  Future<CursorPage<NoteReactionWithNote>> reactionsPage({
    int limit = 20,
    String? untilId,
    required String userId,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<NoteReactionWithNote>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => reactions(
        limit: pageLimit,
        untilId: cursor,
        userId: userId,
        cancelToken: cancelToken,
      ),
    );
  }

  /// users/recommendation
  ///
  /// Calls POST /api/users/recommendation.
  ///
  /// Authentication required.
  Future<List<UserDetailed>> recommendation({
    int limit = 10,
    int offset = 0,
    CancelToken? cancelToken,
  }) async {
    return client.raw.users.recommendation(
      UsersRecommendationRequest(limit: limit, offset: offset),
      cancelToken: cancelToken,
    );
  }

  /// users/relation
  ///
  /// Calls POST /api/users/relation.
  ///
  /// Authentication required.
  Future<UsersRelationResponse> relation({
    required JsonMap? userId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.users.relation(
      UsersRelationRequest(userId: userId),
      cancelToken: cancelToken,
    );
  }

  /// users/report-abuse
  ///
  /// Calls POST /api/users/report-abuse.
  ///
  /// Authentication required.
  Future<void> reportAbuse({
    required String userId,
    required String comment,
    CancelToken? cancelToken,
  }) async {
    return client.raw.users.reportAbuse(
      UsersReportAbuseRequest(userId: userId, comment: comment),
      cancelToken: cancelToken,
    );
  }

  /// users/search
  ///
  /// Calls POST /api/users/search.
  Future<List<User>> search({
    required String query,
    int offset = 0,
    int limit = 10,
    UsersSearchRequestOrigin origin = UsersSearchRequestOrigin.combined,
    bool detail = true,
    CancelToken? cancelToken,
  }) async {
    return client.raw.users.search(
      UsersSearchRequest(
        query: query,
        offset: offset,
        limit: limit,
        origin: origin,
        detail: detail,
      ),
      cancelToken: cancelToken,
    );
  }

  /// users/search-by-username-and-host
  ///
  /// Calls POST /api/users/search-by-username-and-host.
  Future<List<User>> searchByUsername({
    int limit = 10,
    bool detail = true,
    required String? username,
    CancelToken? cancelToken,
  }) async {
    return client.raw.users.searchByUsernameAndHost(
      UsersSearchByUsernameAndHostRequestByUsername(
        limit: limit,
        detail: detail,
        username: username,
      ),
      cancelToken: cancelToken,
    );
  }

  /// users/search-by-username-and-host
  ///
  /// Calls POST /api/users/search-by-username-and-host.
  Future<List<User>> searchByHost({
    int limit = 10,
    bool detail = true,
    required String? host,
    CancelToken? cancelToken,
  }) async {
    return client.raw.users.searchByUsernameAndHost(
      UsersSearchByUsernameAndHostRequestByHost(
        limit: limit,
        detail: detail,
        host: host,
      ),
      cancelToken: cancelToken,
    );
  }

  /// users/show
  ///
  /// Calls POST /api/users/show.
  Future<UserDetailed> showByUserId({
    String? host,
    required String userId,
    CancelToken? cancelToken,
  }) async {
    final response = await client.raw.users.showValue(
      UsersShowValueRequestByUserId(host: host, userId: userId),
      cancelToken: cancelToken,
    );
    return (response as UsersShowValueResponseUserDetailed).value;
  }

  /// users/show
  ///
  /// Calls POST /api/users/show.
  Future<List<UserDetailed>> showByUserIds({
    String? host,
    required List<String> userIds,
    CancelToken? cancelToken,
  }) async {
    final response = await client.raw.users.showValue(
      UsersShowValueRequestByUserIds(host: host, userIds: userIds),
      cancelToken: cancelToken,
    );
    return (response as UsersShowValueResponseList).items;
  }

  /// users/show
  ///
  /// Calls POST /api/users/show.
  Future<UserDetailed> showByUsername({
    String? host,
    required String username,
    CancelToken? cancelToken,
  }) async {
    final response = await client.raw.users.showValue(
      UsersShowValueRequestByUsername(host: host, username: username),
      cancelToken: cancelToken,
    );
    return (response as UsersShowValueResponseUserDetailed).value;
  }

  /// users/update-memo
  ///
  /// Calls POST /api/users/update-memo.
  ///
  /// Authentication required.
  Future<void> updateMemo({
    required String userId,
    required String? memo,
    CancelToken? cancelToken,
  }) async {
    return client.raw.users.updateMemo(
      UsersUpdateMemoRequest(userId: userId, memo: memo),
      cancelToken: cancelToken,
    );
  }
}
