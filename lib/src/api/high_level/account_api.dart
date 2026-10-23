// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import '../../pagination/cursor_page.dart';
import '../generated/account_models.dart';

class AccountApi {
  AccountApi(this.client);

  final MisskeyClient client;

  /// i/2fa/done
  ///
  /// Calls POST /api/i/2fa/done.
  ///
  /// Authentication required.
  Future<AccountTwoFactorDoneResponse> twoFactorDone({
    required String token,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.twoFactorDone(
      AccountTwoFactorDoneRequest(token: token),
      cancelToken: cancelToken,
    );
  }

  /// i/2fa/key-done
  ///
  /// Calls POST /api/i/2fa/key-done.
  ///
  /// Authentication required.
  Future<AccountTwoFactorKeyDoneResponse> twoFactorKeyDone({
    required String password,
    String? token,
    required String name,
    required JsonMap credential,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.twoFactorKeyDone(
      AccountTwoFactorKeyDoneRequest(
        password: password,
        token: token,
        name: name,
        credential: credential,
      ),
      cancelToken: cancelToken,
    );
  }

  /// i/2fa/password-less
  ///
  /// Calls POST /api/i/2fa/password-less.
  ///
  /// Authentication required.
  Future<void> twoFactorPasswordLess({
    required bool value,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.twoFactorPasswordLess(
      AccountTwoFactorPasswordLessRequest(value: value),
      cancelToken: cancelToken,
    );
  }

  /// i/2fa/register
  ///
  /// Calls POST /api/i/2fa/register.
  ///
  /// Authentication required.
  Future<AccountTwoFactorRegisterResponse> twoFactorRegister({
    required String password,
    String? token,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.twoFactorRegister(
      AccountTwoFactorRegisterRequest(password: password, token: token),
      cancelToken: cancelToken,
    );
  }

  /// i/2fa/register-key
  ///
  /// Calls POST /api/i/2fa/register-key.
  ///
  /// Authentication required.
  Future<JsonMap> twoFactorRegisterKey({
    required String password,
    String? token,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.twoFactorRegisterKey(
      AccountTwoFactorRegisterKeyRequest(password: password, token: token),
      cancelToken: cancelToken,
    );
  }

  /// i/2fa/remove-key
  ///
  /// Calls POST /api/i/2fa/remove-key.
  ///
  /// Authentication required.
  Future<void> twoFactorRemoveKey({
    required String password,
    String? token,
    required String credentialId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.twoFactorRemoveKey(
      AccountTwoFactorRemoveKeyRequest(
        password: password,
        token: token,
        credentialId: credentialId,
      ),
      cancelToken: cancelToken,
    );
  }

  /// i/2fa/unregister
  ///
  /// Calls POST /api/i/2fa/unregister.
  ///
  /// Authentication required.
  Future<void> twoFactorUnregister({
    required String password,
    String? token,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.twoFactorUnregister(
      AccountTwoFactorUnregisterRequest(password: password, token: token),
      cancelToken: cancelToken,
    );
  }

  /// i/2fa/update-key
  ///
  /// Calls POST /api/i/2fa/update-key.
  ///
  /// Authentication required.
  Future<void> twoFactorUpdateKey({
    required String name,
    required String credentialId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.twoFactorUpdateKey(
      AccountTwoFactorUpdateKeyRequest(name: name, credentialId: credentialId),
      cancelToken: cancelToken,
    );
  }

  /// i/apps
  ///
  /// Calls POST /api/i/apps.
  ///
  /// Authentication required.
  Future<List<AccountAppsResponseItem>> apps({
    AccountAppsRequestSort? sort,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.apps(
      AccountAppsRequest(sort: sort),
      cancelToken: cancelToken,
    );
  }

  /// i/authorized-apps
  ///
  /// Calls POST /api/i/authorized-apps.
  ///
  /// Authentication required.
  Future<List<AccountAuthorizedAppsResponseItem>> authorizedApps({
    int limit = 10,
    int offset = 0,
    AccountAuthorizedAppsRequestSort sort =
        AccountAuthorizedAppsRequestSort.desc,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.authorizedApps(
      AccountAuthorizedAppsRequest(limit: limit, offset: offset, sort: sort),
      cancelToken: cancelToken,
    );
  }

  /// i/change-password
  ///
  /// Calls POST /api/i/change-password.
  ///
  /// Authentication required.
  Future<void> changePassword({
    required String currentPassword,
    required String newPassword,
    String? token,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.changePassword(
      AccountChangePasswordRequest(
        currentPassword: currentPassword,
        newPassword: newPassword,
        token: token,
      ),
      cancelToken: cancelToken,
    );
  }

  /// i/claim-achievement
  ///
  /// Calls POST /api/i/claim-achievement.
  ///
  /// Authentication required.
  Future<void> claimAchievement({
    required AccountClaimAchievementRequestName name,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.claimAchievement(
      AccountClaimAchievementRequest(name: name),
      cancelToken: cancelToken,
    );
  }

  /// i/delete-account
  ///
  /// Calls POST /api/i/delete-account.
  ///
  /// Authentication required.
  Future<void> deleteAccount({
    required String password,
    String? token,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.deleteAccount(
      AccountDeleteAccountRequest(password: password, token: token),
      cancelToken: cancelToken,
    );
  }

  /// i/export-antennas
  ///
  /// Calls POST /api/i/export-antennas.
  ///
  /// Authentication required.
  Future<void> exportAntennas({CancelToken? cancelToken}) async {
    return client.raw.account.exportAntennas(cancelToken: cancelToken);
  }

  /// i/export-blocking
  ///
  /// Calls POST /api/i/export-blocking.
  ///
  /// Authentication required.
  Future<void> exportBlocking({CancelToken? cancelToken}) async {
    return client.raw.account.exportBlocking(cancelToken: cancelToken);
  }

  /// i/export-clips
  ///
  /// Calls POST /api/i/export-clips.
  ///
  /// Authentication required.
  Future<void> exportClips({CancelToken? cancelToken}) async {
    return client.raw.account.exportClips(cancelToken: cancelToken);
  }

  /// i/export-favorites
  ///
  /// Calls POST /api/i/export-favorites.
  ///
  /// Authentication required.
  Future<void> exportFavorites({CancelToken? cancelToken}) async {
    return client.raw.account.exportFavorites(cancelToken: cancelToken);
  }

  /// i/export-following
  ///
  /// Calls POST /api/i/export-following.
  ///
  /// Authentication required.
  Future<void> exportFollowing({
    bool excludeMuting = false,
    bool excludeInactive = false,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.exportFollowing(
      AccountExportFollowingRequest(
        excludeMuting: excludeMuting,
        excludeInactive: excludeInactive,
      ),
      cancelToken: cancelToken,
    );
  }

  /// i/export-mute
  ///
  /// Calls POST /api/i/export-mute.
  ///
  /// Authentication required.
  Future<void> exportMute({CancelToken? cancelToken}) async {
    return client.raw.account.exportMute(cancelToken: cancelToken);
  }

  /// i/export-notes
  ///
  /// Calls POST /api/i/export-notes.
  ///
  /// Authentication required.
  Future<void> exportNotes({CancelToken? cancelToken}) async {
    return client.raw.account.exportNotes(cancelToken: cancelToken);
  }

  /// i/export-user-lists
  ///
  /// Calls POST /api/i/export-user-lists.
  ///
  /// Authentication required.
  Future<void> exportUserLists({CancelToken? cancelToken}) async {
    return client.raw.account.exportUserLists(cancelToken: cancelToken);
  }

  /// i/favorites
  ///
  /// Calls POST /api/i/favorites.
  ///
  /// Authentication required.
  Future<List<NoteFavorite>> favorites({
    int limit = 10,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.favorites(
      AccountFavoritesRequest(
        limit: limit,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [favorites].
  Future<CursorPage<NoteFavorite>> favoritesPage({
    int limit = 20,
    String? untilId,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<NoteFavorite>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => favorites(
        limit: pageLimit,
        untilId: cursor,
        cancelToken: cancelToken,
      ),
    );
  }

  /// i/gallery/likes
  ///
  /// Calls POST /api/i/gallery/likes.
  ///
  /// Authentication required.
  Future<List<AccountGalleryLikesResponseItem>> galleryLikes({
    int limit = 10,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.galleryLikes(
      AccountGalleryLikesRequest(
        limit: limit,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [galleryLikes].
  Future<CursorPage<AccountGalleryLikesResponseItem>> galleryLikesPage({
    int limit = 20,
    String? untilId,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<AccountGalleryLikesResponseItem>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => galleryLikes(
        limit: pageLimit,
        untilId: cursor,
        cancelToken: cancelToken,
      ),
    );
  }

  /// i/gallery/posts
  ///
  /// Calls POST /api/i/gallery/posts.
  ///
  /// Authentication required.
  Future<List<GalleryPost>> galleryPosts({
    int limit = 10,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.galleryPosts(
      AccountGalleryPostsRequest(
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
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<GalleryPost>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => galleryPosts(
        limit: pageLimit,
        untilId: cursor,
        cancelToken: cancelToken,
      ),
    );
  }

  /// i/import-antennas
  ///
  /// Calls POST /api/i/import-antennas.
  ///
  /// Authentication required.
  Future<void> importAntennas({
    required String fileId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.importAntennas(
      AccountImportAntennasRequest(fileId: fileId),
      cancelToken: cancelToken,
    );
  }

  /// i/import-blocking
  ///
  /// Calls POST /api/i/import-blocking.
  ///
  /// Authentication required.
  Future<void> importBlocking({
    required String fileId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.importBlocking(
      AccountImportBlockingRequest(fileId: fileId),
      cancelToken: cancelToken,
    );
  }

  /// i/import-following
  ///
  /// Calls POST /api/i/import-following.
  ///
  /// Authentication required.
  Future<void> importFollowing({
    required String fileId,
    bool? withReplies,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.importFollowing(
      AccountImportFollowingRequest(fileId: fileId, withReplies: withReplies),
      cancelToken: cancelToken,
    );
  }

  /// i/import-muting
  ///
  /// Calls POST /api/i/import-muting.
  ///
  /// Authentication required.
  Future<void> importMuting({
    required String fileId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.importMuting(
      AccountImportMutingRequest(fileId: fileId),
      cancelToken: cancelToken,
    );
  }

  /// i/import-user-lists
  ///
  /// Calls POST /api/i/import-user-lists.
  ///
  /// Authentication required.
  Future<void> importUserLists({
    required String fileId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.importUserLists(
      AccountImportUserListsRequest(fileId: fileId),
      cancelToken: cancelToken,
    );
  }

  /// i/move
  ///
  /// Calls POST /api/i/move.
  ///
  /// Authentication required.
  Future<JsonMap> move({
    required String moveToAccount,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.move(
      AccountMoveRequest(moveToAccount: moveToAccount),
      cancelToken: cancelToken,
    );
  }

  /// i/notifications
  ///
  /// Calls POST /api/i/notifications.
  ///
  /// Authentication required.
  Future<List<Notification>> notifications({
    int limit = 10,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    bool markAsRead = true,
    List<AccountNotificationsRequestIncludeTypesItem>? includeTypes,
    List<AccountNotificationsRequestExcludeTypesItem>? excludeTypes,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.notifications(
      AccountNotificationsRequest(
        limit: limit,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
        markAsRead: markAsRead,
        includeTypes: includeTypes,
        excludeTypes: excludeTypes,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [notifications].
  Future<CursorPage<Notification>> notificationsPage({
    int limit = 20,
    String? untilId,
    bool markAsRead = false,
    List<AccountNotificationsRequestIncludeTypesItem>? includeTypes,
    List<AccountNotificationsRequestExcludeTypesItem>? excludeTypes,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<Notification>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => notifications(
        limit: pageLimit,
        untilId: cursor,
        markAsRead: markAsRead,
        includeTypes: includeTypes,
        excludeTypes: excludeTypes,
        cancelToken: cancelToken,
      ),
    );
  }

  /// i/notifications-grouped
  ///
  /// Calls POST /api/i/notifications-grouped.
  ///
  /// Authentication required.
  Future<List<Notification>> notificationsGrouped({
    int limit = 10,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    bool markAsRead = true,
    List<AccountNotificationsGroupedRequestIncludeTypesItem>? includeTypes,
    List<AccountNotificationsGroupedRequestExcludeTypesItem>? excludeTypes,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.notificationsGrouped(
      AccountNotificationsGroupedRequest(
        limit: limit,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
        markAsRead: markAsRead,
        includeTypes: includeTypes,
        excludeTypes: excludeTypes,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [notificationsGrouped].
  Future<CursorPage<Notification>> notificationsGroupedPage({
    int limit = 20,
    String? untilId,
    bool markAsRead = false,
    List<AccountNotificationsGroupedRequestIncludeTypesItem>? includeTypes,
    List<AccountNotificationsGroupedRequestExcludeTypesItem>? excludeTypes,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<Notification>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => notificationsGrouped(
        limit: pageLimit,
        untilId: cursor,
        markAsRead: markAsRead,
        includeTypes: includeTypes,
        excludeTypes: excludeTypes,
        cancelToken: cancelToken,
      ),
    );
  }

  /// i/page-likes
  ///
  /// Calls POST /api/i/page-likes.
  ///
  /// Authentication required.
  Future<List<AccountPageLikesResponseItem>> pageLikes({
    int limit = 10,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.pageLikes(
      AccountPageLikesRequest(
        limit: limit,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [pageLikes].
  Future<CursorPage<AccountPageLikesResponseItem>> pageLikesPage({
    int limit = 20,
    String? untilId,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<AccountPageLikesResponseItem>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => pageLikes(
        limit: pageLimit,
        untilId: cursor,
        cancelToken: cancelToken,
      ),
    );
  }

  /// i/pages
  ///
  /// Calls POST /api/i/pages.
  ///
  /// Authentication required.
  Future<List<Page>> pages({
    int limit = 10,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.pages(
      AccountPagesRequest(
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
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<Page>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) =>
          pages(limit: pageLimit, untilId: cursor, cancelToken: cancelToken),
    );
  }

  /// i/pin
  ///
  /// Calls POST /api/i/pin.
  ///
  /// Authentication required.
  Future<MeDetailed> pin({
    required String noteId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.pin(
      AccountPinRequest(noteId: noteId),
      cancelToken: cancelToken,
    );
  }

  /// i/read-announcement
  ///
  /// Calls POST /api/i/read-announcement.
  ///
  /// Authentication required.
  Future<void> readAnnouncement({
    required String announcementId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.readAnnouncement(
      AccountReadAnnouncementRequest(announcementId: announcementId),
      cancelToken: cancelToken,
    );
  }

  /// i/regenerate-token
  ///
  /// Calls POST /api/i/regenerate-token.
  ///
  /// Authentication required.
  Future<void> regenerateToken({
    required String password,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.regenerateToken(
      AccountRegenerateTokenRequest(password: password),
      cancelToken: cancelToken,
    );
  }

  /// i/registry/get
  ///
  /// Calls POST /api/i/registry/get.
  ///
  /// Authentication required.
  Future<JsonMap> registryGet({
    required String key,
    required List<String> scope,
    String? domain,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.registryGet(
      AccountRegistryGetRequest(key: key, scope: scope, domain: domain),
      cancelToken: cancelToken,
    );
  }

  /// i/registry/get-all
  ///
  /// Calls POST /api/i/registry/get-all.
  ///
  /// Authentication required.
  Future<JsonMap> registryGetAll({
    required List<String> scope,
    String? domain,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.registryGetAll(
      AccountRegistryGetAllRequest(scope: scope, domain: domain),
      cancelToken: cancelToken,
    );
  }

  /// i/registry/get-detail
  ///
  /// Calls POST /api/i/registry/get-detail.
  ///
  /// Authentication required.
  Future<AccountRegistryGetDetailResponse> registryGetDetail({
    required String key,
    required List<String> scope,
    String? domain,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.registryGetDetail(
      AccountRegistryGetDetailRequest(key: key, scope: scope, domain: domain),
      cancelToken: cancelToken,
    );
  }

  /// i/registry/keys
  ///
  /// Calls POST /api/i/registry/keys.
  ///
  /// Authentication required.
  Future<List<String>> registryKeys({
    required List<String> scope,
    String? domain,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.registryKeys(
      AccountRegistryKeysRequest(scope: scope, domain: domain),
      cancelToken: cancelToken,
    );
  }

  /// i/registry/keys-with-type
  ///
  /// Calls POST /api/i/registry/keys-with-type.
  ///
  /// Authentication required.
  Future<JsonMap> registryKeysWithType({
    required List<String> scope,
    String? domain,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.registryKeysWithType(
      AccountRegistryKeysWithTypeRequest(scope: scope, domain: domain),
      cancelToken: cancelToken,
    );
  }

  /// i/registry/remove
  ///
  /// Calls POST /api/i/registry/remove.
  ///
  /// Authentication required.
  Future<void> registryRemove({
    required String key,
    required List<String> scope,
    String? domain,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.registryRemove(
      AccountRegistryRemoveRequest(key: key, scope: scope, domain: domain),
      cancelToken: cancelToken,
    );
  }

  /// i/registry/scopes-with-domain
  ///
  /// Calls POST /api/i/registry/scopes-with-domain.
  ///
  /// Authentication required.
  Future<List<AccountRegistryScopesWithDomainResponseItem>>
  registryScopesWithDomain({CancelToken? cancelToken}) async {
    return client.raw.account.registryScopesWithDomain(
      cancelToken: cancelToken,
    );
  }

  /// i/registry/set
  ///
  /// Calls POST /api/i/registry/set.
  ///
  /// Authentication required.
  Future<void> registrySet({
    required String key,
    required JsonMap value,
    required List<String> scope,
    String? domain,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.registrySet(
      AccountRegistrySetRequest(
        key: key,
        value: value,
        scope: scope,
        domain: domain,
      ),
      cancelToken: cancelToken,
    );
  }

  /// i/revoke-token
  ///
  /// Calls POST /api/i/revoke-token.
  Future<void> revokeTokenByTokenId({
    required String tokenId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.revokeToken(
      AccountRevokeTokenRequestByTokenId(tokenId: tokenId),
      cancelToken: cancelToken,
    );
  }

  /// i/revoke-token
  ///
  /// Calls POST /api/i/revoke-token.
  Future<void> revokeTokenByToken({
    required String? token,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.revokeToken(
      AccountRevokeTokenRequestByToken(token: token),
      cancelToken: cancelToken,
    );
  }

  /// i/signin-history
  ///
  /// Calls POST /api/i/signin-history.
  ///
  /// Authentication required.
  Future<List<Signin>> signinHistory({
    int limit = 10,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.signinHistory(
      AccountSigninHistoryRequest(
        limit: limit,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [signinHistory].
  Future<CursorPage<Signin>> signinHistoryPage({
    int limit = 20,
    String? untilId,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<Signin>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => signinHistory(
        limit: pageLimit,
        untilId: cursor,
        cancelToken: cancelToken,
      ),
    );
  }

  /// i/unpin
  ///
  /// Calls POST /api/i/unpin.
  ///
  /// Authentication required.
  Future<MeDetailed> unpin({
    required String noteId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.unpin(
      AccountUnpinRequest(noteId: noteId),
      cancelToken: cancelToken,
    );
  }

  /// i/update
  ///
  /// Calls POST /api/i/update.
  ///
  /// Authentication required.
  Future<MeDetailed> update({
    String? name,
    String? description,
    String? followedMessage,
    String? location,
    String? birthday,
    AccountUpdateRequestLang? lang,
    String? avatarId,
    List<AccountUpdateRequestAvatarDecorationsItem>? avatarDecorations,
    String? bannerId,
    List<AccountUpdateRequestFieldsItem>? fields,
    bool? isLocked,
    bool? isExplorable,
    bool? hideOnlineStatus,
    bool? publicReactions,
    bool? carefulBot,
    bool? autoAcceptFollowed,
    bool? noCrawle,
    bool? preventAiLearning,
    bool? requireSigninToViewContents,
    int? makeNotesFollowersOnlyBefore,
    int? makeNotesHiddenBefore,
    bool? isBot,
    bool? isCat,
    bool? injectFeaturedNote,
    bool? receiveAnnouncementEmail,
    bool? alwaysMarkNsfw,
    bool? autoSensitive,
    FollowingVisibility? followingVisibility,
    FollowingVisibility? followersVisibility,
    ChatScope? chatScope,
    String? pinnedPageId,
    List<JsonMap?>? mutedWords,
    List<JsonMap?>? hardMutedWords,
    List<String>? mutedInstances,
    AccountUpdateRequestNotificationRecieveConfig? notificationRecieveConfig,
    List<String>? emailNotificationTypes,
    List<String>? alsoKnownAs,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.update(
      AccountUpdateRequest(
        name: name,
        description: description,
        followedMessage: followedMessage,
        location: location,
        birthday: birthday,
        lang: lang,
        avatarId: avatarId,
        avatarDecorations: avatarDecorations,
        bannerId: bannerId,
        fields: fields,
        isLocked: isLocked,
        isExplorable: isExplorable,
        hideOnlineStatus: hideOnlineStatus,
        publicReactions: publicReactions,
        carefulBot: carefulBot,
        autoAcceptFollowed: autoAcceptFollowed,
        noCrawle: noCrawle,
        preventAiLearning: preventAiLearning,
        requireSigninToViewContents: requireSigninToViewContents,
        makeNotesFollowersOnlyBefore: makeNotesFollowersOnlyBefore,
        makeNotesHiddenBefore: makeNotesHiddenBefore,
        isBot: isBot,
        isCat: isCat,
        injectFeaturedNote: injectFeaturedNote,
        receiveAnnouncementEmail: receiveAnnouncementEmail,
        alwaysMarkNsfw: alwaysMarkNsfw,
        autoSensitive: autoSensitive,
        followingVisibility: followingVisibility,
        followersVisibility: followersVisibility,
        chatScope: chatScope,
        pinnedPageId: pinnedPageId,
        mutedWords: mutedWords,
        hardMutedWords: hardMutedWords,
        mutedInstances: mutedInstances,
        notificationRecieveConfig: notificationRecieveConfig,
        emailNotificationTypes: emailNotificationTypes,
        alsoKnownAs: alsoKnownAs,
      ),
      cancelToken: cancelToken,
    );
  }

  /// i/update-email
  ///
  /// Calls POST /api/i/update-email.
  ///
  /// Authentication required.
  Future<MeDetailed> updateEmail({
    required String password,
    String? email,
    String? token,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.updateEmail(
      AccountUpdateEmailRequest(password: password, email: email, token: token),
      cancelToken: cancelToken,
    );
  }

  /// i/webhooks/create
  ///
  /// Calls POST /api/i/webhooks/create.
  ///
  /// Authentication required.
  Future<AccountWebhooksCreateResponse> webhooksCreate({
    required String name,
    required String url,
    String secret = '',
    required List<AccountWebhooksCreateRequestOnItem> onValue,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.webhooksCreate(
      AccountWebhooksCreateRequest(
        name: name,
        url: url,
        secret: secret,
        onValue: onValue,
      ),
      cancelToken: cancelToken,
    );
  }

  /// i/webhooks/delete
  ///
  /// Calls POST /api/i/webhooks/delete.
  ///
  /// Authentication required.
  Future<void> webhooksDelete({
    required String webhookId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.webhooksDelete(
      AccountWebhooksDeleteRequest(webhookId: webhookId),
      cancelToken: cancelToken,
    );
  }

  /// i/webhooks/list
  ///
  /// Calls POST /api/i/webhooks/list.
  ///
  /// Authentication required.
  Future<List<UserWebhook>> webhooksList({CancelToken? cancelToken}) async {
    return client.raw.account.webhooksList(cancelToken: cancelToken);
  }

  /// i/webhooks/show
  ///
  /// Calls POST /api/i/webhooks/show.
  ///
  /// Authentication required.
  Future<UserWebhook> webhooksShow({
    required String webhookId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.webhooksShow(
      AccountWebhooksShowRequest(webhookId: webhookId),
      cancelToken: cancelToken,
    );
  }

  /// i/webhooks/test
  ///
  /// Calls POST /api/i/webhooks/test.
  ///
  /// Authentication required.
  Future<void> webhooksTest({
    required String webhookId,
    required AccountWebhooksTestRequestType type,
    AccountWebhooksTestRequestOverride? override,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.webhooksTest(
      AccountWebhooksTestRequest(
        webhookId: webhookId,
        type: type,
        override: override,
      ),
      cancelToken: cancelToken,
    );
  }

  /// i/webhooks/update
  ///
  /// Calls POST /api/i/webhooks/update.
  ///
  /// Authentication required.
  Future<void> webhooksUpdate({
    required String webhookId,
    String? name,
    String? url,
    String? secret,
    List<AccountWebhooksUpdateRequestOnItem>? onValue,
    bool? active,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.webhooksUpdate(
      AccountWebhooksUpdateRequest(
        webhookId: webhookId,
        name: name,
        url: url,
        secret: secret,
        onValue: onValue,
        active: active,
      ),
      cancelToken: cancelToken,
    );
  }

  /// my/apps
  ///
  /// Calls POST /api/my/apps.
  ///
  /// Authentication required.
  Future<List<App>> myApps({
    int limit = 10,
    int offset = 0,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.myApps(
      AccountMyAppsRequest(limit: limit, offset: offset),
      cancelToken: cancelToken,
    );
  }

  /// sw/register
  ///
  /// Calls POST /api/sw/register.
  ///
  /// Authentication required.
  Future<AccountSwRegisterResponse> swRegister({
    required String endpoint,
    required String auth,
    required String publickey,
    bool sendReadMessage = false,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.swRegister(
      AccountSwRegisterRequest(
        endpoint: endpoint,
        auth: auth,
        publickey: publickey,
        sendReadMessage: sendReadMessage,
      ),
      cancelToken: cancelToken,
    );
  }

  /// sw/show-registration
  ///
  /// Calls POST /api/sw/show-registration.
  ///
  /// Authentication required.
  Future<AccountSwShowRegistrationResponse?> swShowRegistration({
    required String endpoint,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.swShowRegistration(
      AccountSwShowRegistrationRequest(endpoint: endpoint),
      cancelToken: cancelToken,
    );
  }

  /// sw/unregister
  ///
  /// Calls POST /api/sw/unregister.
  Future<void> swUnregister({
    required String endpoint,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.swUnregister(
      AccountSwUnregisterRequest(endpoint: endpoint),
      cancelToken: cancelToken,
    );
  }

  /// sw/update-registration
  ///
  /// Calls POST /api/sw/update-registration.
  ///
  /// Authentication required.
  Future<AccountSwUpdateRegistrationResponse> swUpdateRegistration({
    required String endpoint,
    bool? sendReadMessage,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.swUpdateRegistration(
      AccountSwUpdateRegistrationRequest(
        endpoint: endpoint,
        sendReadMessage: sendReadMessage,
      ),
      cancelToken: cancelToken,
    );
  }

  /// verify-email
  ///
  /// Calls POST /api/verify-email.
  Future<void> verifyEmail({
    required String code,
    CancelToken? cancelToken,
  }) async {
    return client.raw.account.verifyEmail(
      AccountVerifyEmailRequest(code: code),
      cancelToken: cancelToken,
    );
  }
}
