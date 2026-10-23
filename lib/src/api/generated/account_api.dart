// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'account_models.dart';

/// Raw generated endpoints for the `account` API group.
class RawAccountApi {
  /// Creates a raw `account` API facade.
  RawAccountApi(this.client);

  /// The shared client used for transport and authentication.
  final MisskeyClient client;

  /// i/2fa/done
  ///
  /// Calls POST /api/i/2fa/done.
  ///
  /// Authentication required.
  Future<AccountTwoFactorDoneResponse> twoFactorDone(
    AccountTwoFactorDoneRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<AccountTwoFactorDoneResponse>(
      'i/2fa/done',
      body: request.toJson(),
      requiresAuth: true,
      parser: AccountTwoFactorDoneResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// i/2fa/key-done
  ///
  /// Calls POST /api/i/2fa/key-done.
  ///
  /// Authentication required.
  Future<AccountTwoFactorKeyDoneResponse> twoFactorKeyDone(
    AccountTwoFactorKeyDoneRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<AccountTwoFactorKeyDoneResponse>(
      'i/2fa/key-done',
      body: request.toJson(),
      requiresAuth: true,
      parser: AccountTwoFactorKeyDoneResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// i/2fa/password-less
  ///
  /// Calls POST /api/i/2fa/password-less.
  ///
  /// Authentication required.
  Future<void> twoFactorPasswordLess(
    AccountTwoFactorPasswordLessRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'i/2fa/password-less',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// i/2fa/register
  ///
  /// Calls POST /api/i/2fa/register.
  ///
  /// Authentication required.
  Future<AccountTwoFactorRegisterResponse> twoFactorRegister(
    AccountTwoFactorRegisterRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<AccountTwoFactorRegisterResponse>(
      'i/2fa/register',
      body: request.toJson(),
      requiresAuth: true,
      parser: AccountTwoFactorRegisterResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// i/2fa/register-key
  ///
  /// Calls POST /api/i/2fa/register-key.
  ///
  /// Authentication required.
  Future<JsonMap> twoFactorRegisterKey(
    AccountTwoFactorRegisterKeyRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postMap(
      'i/2fa/register-key',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// i/2fa/remove-key
  ///
  /// Calls POST /api/i/2fa/remove-key.
  ///
  /// Authentication required.
  Future<void> twoFactorRemoveKey(
    AccountTwoFactorRemoveKeyRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'i/2fa/remove-key',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// i/2fa/unregister
  ///
  /// Calls POST /api/i/2fa/unregister.
  ///
  /// Authentication required.
  Future<void> twoFactorUnregister(
    AccountTwoFactorUnregisterRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'i/2fa/unregister',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// i/2fa/update-key
  ///
  /// Calls POST /api/i/2fa/update-key.
  ///
  /// Authentication required.
  Future<void> twoFactorUpdateKey(
    AccountTwoFactorUpdateKeyRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'i/2fa/update-key',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// i/apps
  ///
  /// Calls POST /api/i/apps.
  ///
  /// Authentication required.
  Future<List<AccountAppsResponseItem>> apps(
    AccountAppsRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<AccountAppsResponseItem>(
      'i/apps',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: AccountAppsResponseItem.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// i/authorized-apps
  ///
  /// Calls POST /api/i/authorized-apps.
  ///
  /// Authentication required.
  Future<List<AccountAuthorizedAppsResponseItem>> authorizedApps(
    AccountAuthorizedAppsRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<AccountAuthorizedAppsResponseItem>(
      'i/authorized-apps',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: AccountAuthorizedAppsResponseItem.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// i/change-password
  ///
  /// Calls POST /api/i/change-password.
  ///
  /// Authentication required.
  Future<void> changePassword(
    AccountChangePasswordRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'i/change-password',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// i/claim-achievement
  ///
  /// Calls POST /api/i/claim-achievement.
  ///
  /// Authentication required.
  Future<void> claimAchievement(
    AccountClaimAchievementRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'i/claim-achievement',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// i/delete-account
  ///
  /// Calls POST /api/i/delete-account.
  ///
  /// Authentication required.
  Future<void> deleteAccount(
    AccountDeleteAccountRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'i/delete-account',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// i/export-antennas
  ///
  /// Calls POST /api/i/export-antennas.
  ///
  /// Authentication required.
  Future<void> exportAntennas({CancelToken? cancelToken}) {
    return client.postVoid(
      'i/export-antennas',
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// i/export-blocking
  ///
  /// Calls POST /api/i/export-blocking.
  ///
  /// Authentication required.
  Future<void> exportBlocking({CancelToken? cancelToken}) {
    return client.postVoid(
      'i/export-blocking',
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// i/export-clips
  ///
  /// Calls POST /api/i/export-clips.
  ///
  /// Authentication required.
  Future<void> exportClips({CancelToken? cancelToken}) {
    return client.postVoid(
      'i/export-clips',
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// i/export-favorites
  ///
  /// Calls POST /api/i/export-favorites.
  ///
  /// Authentication required.
  Future<void> exportFavorites({CancelToken? cancelToken}) {
    return client.postVoid(
      'i/export-favorites',
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// i/export-following
  ///
  /// Calls POST /api/i/export-following.
  ///
  /// Authentication required.
  Future<void> exportFollowing(
    AccountExportFollowingRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'i/export-following',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// i/export-mute
  ///
  /// Calls POST /api/i/export-mute.
  ///
  /// Authentication required.
  Future<void> exportMute({CancelToken? cancelToken}) {
    return client.postVoid(
      'i/export-mute',
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// i/export-notes
  ///
  /// Calls POST /api/i/export-notes.
  ///
  /// Authentication required.
  Future<void> exportNotes({CancelToken? cancelToken}) {
    return client.postVoid(
      'i/export-notes',
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// i/export-user-lists
  ///
  /// Calls POST /api/i/export-user-lists.
  ///
  /// Authentication required.
  Future<void> exportUserLists({CancelToken? cancelToken}) {
    return client.postVoid(
      'i/export-user-lists',
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// i/favorites
  ///
  /// Calls POST /api/i/favorites.
  ///
  /// Authentication required.
  Future<List<NoteFavorite>> favorites(
    AccountFavoritesRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<NoteFavorite>(
      'i/favorites',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: NoteFavorite.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// i/gallery/likes
  ///
  /// Calls POST /api/i/gallery/likes.
  ///
  /// Authentication required.
  Future<List<AccountGalleryLikesResponseItem>> galleryLikes(
    AccountGalleryLikesRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<AccountGalleryLikesResponseItem>(
      'i/gallery/likes',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: AccountGalleryLikesResponseItem.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// i/gallery/posts
  ///
  /// Calls POST /api/i/gallery/posts.
  ///
  /// Authentication required.
  Future<List<GalleryPost>> galleryPosts(
    AccountGalleryPostsRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<GalleryPost>(
      'i/gallery/posts',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: GalleryPost.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// i/import-antennas
  ///
  /// Calls POST /api/i/import-antennas.
  ///
  /// Authentication required.
  Future<void> importAntennas(
    AccountImportAntennasRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'i/import-antennas',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// i/import-blocking
  ///
  /// Calls POST /api/i/import-blocking.
  ///
  /// Authentication required.
  Future<void> importBlocking(
    AccountImportBlockingRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'i/import-blocking',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// i/import-following
  ///
  /// Calls POST /api/i/import-following.
  ///
  /// Authentication required.
  Future<void> importFollowing(
    AccountImportFollowingRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'i/import-following',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// i/import-muting
  ///
  /// Calls POST /api/i/import-muting.
  ///
  /// Authentication required.
  Future<void> importMuting(
    AccountImportMutingRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'i/import-muting',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// i/import-user-lists
  ///
  /// Calls POST /api/i/import-user-lists.
  ///
  /// Authentication required.
  Future<void> importUserLists(
    AccountImportUserListsRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'i/import-user-lists',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// i/move
  ///
  /// Calls POST /api/i/move.
  ///
  /// Authentication required.
  Future<JsonMap> move(AccountMoveRequest request, {CancelToken? cancelToken}) {
    return client.postMap(
      'i/move',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// i/notifications
  ///
  /// Calls POST /api/i/notifications.
  ///
  /// Authentication required.
  Future<List<Notification>> notifications(
    AccountNotificationsRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Notification>(
      'i/notifications',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: Notification.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// i/notifications-grouped
  ///
  /// Calls POST /api/i/notifications-grouped.
  ///
  /// Authentication required.
  Future<List<Notification>> notificationsGrouped(
    AccountNotificationsGroupedRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Notification>(
      'i/notifications-grouped',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: Notification.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// i/page-likes
  ///
  /// Calls POST /api/i/page-likes.
  ///
  /// Authentication required.
  Future<List<AccountPageLikesResponseItem>> pageLikes(
    AccountPageLikesRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<AccountPageLikesResponseItem>(
      'i/page-likes',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: AccountPageLikesResponseItem.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// i/pages
  ///
  /// Calls POST /api/i/pages.
  ///
  /// Authentication required.
  Future<List<Page>> pages(
    AccountPagesRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Page>(
      'i/pages',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: Page.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// i/pin
  ///
  /// Calls POST /api/i/pin.
  ///
  /// Authentication required.
  Future<MeDetailed> pin(
    AccountPinRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<MeDetailed>(
      'i/pin',
      body: request.toJson(),
      requiresAuth: true,
      parser: MeDetailed.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// i/read-announcement
  ///
  /// Calls POST /api/i/read-announcement.
  ///
  /// Authentication required.
  Future<void> readAnnouncement(
    AccountReadAnnouncementRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'i/read-announcement',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// i/regenerate-token
  ///
  /// Calls POST /api/i/regenerate-token.
  ///
  /// Authentication required.
  Future<void> regenerateToken(
    AccountRegenerateTokenRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'i/regenerate-token',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// i/registry/get
  ///
  /// Calls POST /api/i/registry/get.
  ///
  /// Authentication required.
  Future<JsonMap> registryGet(
    AccountRegistryGetRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postMap(
      'i/registry/get',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// i/registry/get-all
  ///
  /// Calls POST /api/i/registry/get-all.
  ///
  /// Authentication required.
  Future<JsonMap> registryGetAll(
    AccountRegistryGetAllRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postMap(
      'i/registry/get-all',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// i/registry/get-detail
  ///
  /// Calls POST /api/i/registry/get-detail.
  ///
  /// Authentication required.
  Future<AccountRegistryGetDetailResponse> registryGetDetail(
    AccountRegistryGetDetailRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<AccountRegistryGetDetailResponse>(
      'i/registry/get-detail',
      body: request.toJson(),
      requiresAuth: true,
      parser: AccountRegistryGetDetailResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// i/registry/keys
  ///
  /// Calls POST /api/i/registry/keys.
  ///
  /// Authentication required.
  Future<List<String>> registryKeys(
    AccountRegistryKeysRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postParsed<List<String>>(
      'i/registry/keys',
      body: request.toJson(),
      requiresAuth: true,
      parser: (data) => (data as List).cast<String>(),
      cancelToken: cancelToken,
    );
  }

  /// i/registry/keys-with-type
  ///
  /// Calls POST /api/i/registry/keys-with-type.
  ///
  /// Authentication required.
  Future<JsonMap> registryKeysWithType(
    AccountRegistryKeysWithTypeRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postMap(
      'i/registry/keys-with-type',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// i/registry/remove
  ///
  /// Calls POST /api/i/registry/remove.
  ///
  /// Authentication required.
  Future<void> registryRemove(
    AccountRegistryRemoveRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'i/registry/remove',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// i/registry/scopes-with-domain
  ///
  /// Calls POST /api/i/registry/scopes-with-domain.
  ///
  /// Authentication required.
  Future<List<AccountRegistryScopesWithDomainResponseItem>>
  registryScopesWithDomain({CancelToken? cancelToken}) {
    return client.postList<AccountRegistryScopesWithDomainResponseItem>(
      'i/registry/scopes-with-domain',
      requiresAuth: true,
      itemParser: AccountRegistryScopesWithDomainResponseItem.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// i/registry/set
  ///
  /// Calls POST /api/i/registry/set.
  ///
  /// Authentication required.
  Future<void> registrySet(
    AccountRegistrySetRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'i/registry/set',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// i/revoke-token
  ///
  /// Calls POST /api/i/revoke-token.
  Future<void> revokeToken(
    AccountRevokeTokenRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'i/revoke-token',
      body: request.toJson(),
      requiresAuth: false,
      cancelToken: cancelToken,
    );
  }

  /// i/signin-history
  ///
  /// Calls POST /api/i/signin-history.
  ///
  /// Authentication required.
  Future<List<Signin>> signinHistory(
    AccountSigninHistoryRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Signin>(
      'i/signin-history',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: Signin.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// i/unpin
  ///
  /// Calls POST /api/i/unpin.
  ///
  /// Authentication required.
  Future<MeDetailed> unpin(
    AccountUnpinRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<MeDetailed>(
      'i/unpin',
      body: request.toJson(),
      requiresAuth: true,
      parser: MeDetailed.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// i/update
  ///
  /// Calls POST /api/i/update.
  ///
  /// Authentication required.
  Future<MeDetailed> update(
    AccountUpdateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<MeDetailed>(
      'i/update',
      body: request.toJson(),
      requiresAuth: true,
      parser: MeDetailed.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// i/update-email
  ///
  /// Calls POST /api/i/update-email.
  ///
  /// Authentication required.
  Future<MeDetailed> updateEmail(
    AccountUpdateEmailRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<MeDetailed>(
      'i/update-email',
      body: request.toJson(),
      requiresAuth: true,
      parser: MeDetailed.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// i/webhooks/create
  ///
  /// Calls POST /api/i/webhooks/create.
  ///
  /// Authentication required.
  Future<AccountWebhooksCreateResponse> webhooksCreate(
    AccountWebhooksCreateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<AccountWebhooksCreateResponse>(
      'i/webhooks/create',
      body: request.toJson(),
      requiresAuth: true,
      parser: AccountWebhooksCreateResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// i/webhooks/delete
  ///
  /// Calls POST /api/i/webhooks/delete.
  ///
  /// Authentication required.
  Future<void> webhooksDelete(
    AccountWebhooksDeleteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'i/webhooks/delete',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// i/webhooks/list
  ///
  /// Calls POST /api/i/webhooks/list.
  ///
  /// Authentication required.
  Future<List<UserWebhook>> webhooksList({CancelToken? cancelToken}) {
    return client.postList<UserWebhook>(
      'i/webhooks/list',
      requiresAuth: true,
      itemParser: UserWebhook.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// i/webhooks/show
  ///
  /// Calls POST /api/i/webhooks/show.
  ///
  /// Authentication required.
  Future<UserWebhook> webhooksShow(
    AccountWebhooksShowRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<UserWebhook>(
      'i/webhooks/show',
      body: request.toJson(),
      requiresAuth: true,
      parser: UserWebhook.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// i/webhooks/test
  ///
  /// Calls POST /api/i/webhooks/test.
  ///
  /// Authentication required.
  Future<void> webhooksTest(
    AccountWebhooksTestRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'i/webhooks/test',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// i/webhooks/update
  ///
  /// Calls POST /api/i/webhooks/update.
  ///
  /// Authentication required.
  Future<void> webhooksUpdate(
    AccountWebhooksUpdateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'i/webhooks/update',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// my/apps
  ///
  /// Calls POST /api/my/apps.
  ///
  /// Authentication required.
  Future<List<App>> myApps(
    AccountMyAppsRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<App>(
      'my/apps',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: App.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// sw/register
  ///
  /// Calls POST /api/sw/register.
  ///
  /// Authentication required.
  Future<AccountSwRegisterResponse> swRegister(
    AccountSwRegisterRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<AccountSwRegisterResponse>(
      'sw/register',
      body: request.toJson(),
      requiresAuth: true,
      parser: AccountSwRegisterResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// sw/show-registration
  ///
  /// Calls POST /api/sw/show-registration.
  ///
  /// Authentication required.
  Future<AccountSwShowRegistrationResponse?> swShowRegistration(
    AccountSwShowRegistrationRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postNullableModel<AccountSwShowRegistrationResponse>(
      'sw/show-registration',
      body: request.toJson(),
      requiresAuth: true,
      parser: AccountSwShowRegistrationResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// sw/unregister
  ///
  /// Calls POST /api/sw/unregister.
  Future<void> swUnregister(
    AccountSwUnregisterRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'sw/unregister',
      body: request.toJson(),
      requiresAuth: false,
      cancelToken: cancelToken,
    );
  }

  /// sw/update-registration
  ///
  /// Calls POST /api/sw/update-registration.
  ///
  /// Authentication required.
  Future<AccountSwUpdateRegistrationResponse> swUpdateRegistration(
    AccountSwUpdateRegistrationRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<AccountSwUpdateRegistrationResponse>(
      'sw/update-registration',
      body: request.toJson(),
      requiresAuth: true,
      parser: AccountSwUpdateRegistrationResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// verify-email
  ///
  /// Calls POST /api/verify-email.
  Future<void> verifyEmail(
    AccountVerifyEmailRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'verify-email',
      body: request.toJson(),
      requiresAuth: false,
      cancelToken: cancelToken,
    );
  }
}
