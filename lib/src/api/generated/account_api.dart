// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'account_models.dart';

class RawAccountApi {
  RawAccountApi(this.client);

  final MisskeyClient client;

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

  Future<void> exportAntennas({CancelToken? cancelToken}) {
    return client.postVoid(
      'i/export-antennas',
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  Future<void> exportBlocking({CancelToken? cancelToken}) {
    return client.postVoid(
      'i/export-blocking',
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  Future<void> exportClips({CancelToken? cancelToken}) {
    return client.postVoid(
      'i/export-clips',
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  Future<void> exportFavorites({CancelToken? cancelToken}) {
    return client.postVoid(
      'i/export-favorites',
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

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

  Future<void> exportMute({CancelToken? cancelToken}) {
    return client.postVoid(
      'i/export-mute',
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  Future<void> exportNotes({CancelToken? cancelToken}) {
    return client.postVoid(
      'i/export-notes',
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  Future<void> exportUserLists({CancelToken? cancelToken}) {
    return client.postVoid(
      'i/export-user-lists',
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

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

  Future<JsonMap> move(AccountMoveRequest request, {CancelToken? cancelToken}) {
    return client.postMap(
      'i/move',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

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

  Future<List<AccountRegistryScopesWithDomainResponseItem>>
  registryScopesWithDomain({CancelToken? cancelToken}) {
    return client.postList<AccountRegistryScopesWithDomainResponseItem>(
      'i/registry/scopes-with-domain',
      requiresAuth: true,
      itemParser: AccountRegistryScopesWithDomainResponseItem.fromJson,
      cancelToken: cancelToken,
    );
  }

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

  Future<List<UserWebhook>> webhooksList({CancelToken? cancelToken}) {
    return client.postList<UserWebhook>(
      'i/webhooks/list',
      requiresAuth: true,
      itemParser: UserWebhook.fromJson,
      cancelToken: cancelToken,
    );
  }

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
