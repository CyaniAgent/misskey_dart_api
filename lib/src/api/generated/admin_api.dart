// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'admin_models.dart';

/// Raw generated endpoints for the `admin` API group.
class RawAdminApi {
  /// Creates a raw `admin` API facade.
  RawAdminApi(this.client);

  /// The shared client used for transport and authentication.
  final MisskeyClient client;

  /// admin/abuse-report/notification-recipient/create
  ///
  /// Calls POST /api/admin/abuse-report/notification-recipient/create.
  ///
  /// Authentication required.
  Future<AbuseReportNotificationRecipient>
  abuseReportNotificationRecipientCreate(
    AdminAbuseReportNotificationRecipientCreateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<AbuseReportNotificationRecipient>(
      'admin/abuse-report/notification-recipient/create',
      body: request.toJson(),
      requiresAuth: true,
      parser: AbuseReportNotificationRecipient.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// admin/abuse-report/notification-recipient/delete
  ///
  /// Calls POST /api/admin/abuse-report/notification-recipient/delete.
  ///
  /// Authentication required.
  Future<void> abuseReportNotificationRecipientDelete(
    AdminAbuseReportNotificationRecipientDeleteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/abuse-report/notification-recipient/delete',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/abuse-report/notification-recipient/list
  ///
  /// Calls POST /api/admin/abuse-report/notification-recipient/list.
  ///
  /// Authentication required.
  Future<List<AbuseReportNotificationRecipient>>
  abuseReportNotificationRecipientList(
    AdminAbuseReportNotificationRecipientListRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<AbuseReportNotificationRecipient>(
      'admin/abuse-report/notification-recipient/list',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: AbuseReportNotificationRecipient.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// admin/abuse-report/notification-recipient/show
  ///
  /// Calls POST /api/admin/abuse-report/notification-recipient/show.
  ///
  /// Authentication required.
  Future<AbuseReportNotificationRecipient> abuseReportNotificationRecipientShow(
    AdminAbuseReportNotificationRecipientShowRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<AbuseReportNotificationRecipient>(
      'admin/abuse-report/notification-recipient/show',
      body: request.toJson(),
      requiresAuth: true,
      parser: AbuseReportNotificationRecipient.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// admin/abuse-report/notification-recipient/update
  ///
  /// Calls POST /api/admin/abuse-report/notification-recipient/update.
  ///
  /// Authentication required.
  Future<AbuseReportNotificationRecipient>
  abuseReportNotificationRecipientUpdate(
    AdminAbuseReportNotificationRecipientUpdateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<AbuseReportNotificationRecipient>(
      'admin/abuse-report/notification-recipient/update',
      body: request.toJson(),
      requiresAuth: true,
      parser: AbuseReportNotificationRecipient.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// admin/abuse-user-reports
  ///
  /// Calls POST /api/admin/abuse-user-reports.
  ///
  /// Authentication required.
  Future<List<AdminAbuseUserReportsResponseItem>> abuseUserReports(
    AdminAbuseUserReportsRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<AdminAbuseUserReportsResponseItem>(
      'admin/abuse-user-reports',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: AdminAbuseUserReportsResponseItem.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// admin/accounts/create
  ///
  /// Calls POST /api/admin/accounts/create.
  Future<AdminAccountsCreateResponse> accountsCreate(
    AdminAccountsCreateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<AdminAccountsCreateResponse>(
      'admin/accounts/create',
      body: request.toJson(),
      requiresAuth: false,
      parser: AdminAccountsCreateResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// admin/accounts/delete
  ///
  /// Calls POST /api/admin/accounts/delete.
  ///
  /// Authentication required.
  Future<void> accountsDelete(
    AdminAccountsDeleteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/accounts/delete',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/accounts/find-by-email
  ///
  /// Calls POST /api/admin/accounts/find-by-email.
  ///
  /// Authentication required.
  Future<UserDetailedNotMe> accountsFindByEmail(
    AdminAccountsFindByEmailRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<UserDetailedNotMe>(
      'admin/accounts/find-by-email',
      body: request.toJson(),
      requiresAuth: true,
      parser: UserDetailedNotMe.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// admin/ad/create
  ///
  /// Calls POST /api/admin/ad/create.
  ///
  /// Authentication required.
  Future<Ad> adCreate(
    AdminAdCreateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<Ad>(
      'admin/ad/create',
      body: request.toJson(),
      requiresAuth: true,
      parser: Ad.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// admin/ad/delete
  ///
  /// Calls POST /api/admin/ad/delete.
  ///
  /// Authentication required.
  Future<void> adDelete(
    AdminAdDeleteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/ad/delete',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/ad/list
  ///
  /// Calls POST /api/admin/ad/list.
  ///
  /// Authentication required.
  Future<List<Ad>> adList(
    AdminAdListRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Ad>(
      'admin/ad/list',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: Ad.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// admin/ad/update
  ///
  /// Calls POST /api/admin/ad/update.
  ///
  /// Authentication required.
  Future<void> adUpdate(
    AdminAdUpdateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/ad/update',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/announcements/create
  ///
  /// Calls POST /api/admin/announcements/create.
  ///
  /// Authentication required.
  Future<AdminAnnouncementsCreateResponse> announcementsCreate(
    AdminAnnouncementsCreateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<AdminAnnouncementsCreateResponse>(
      'admin/announcements/create',
      body: request.toJson(),
      requiresAuth: true,
      parser: AdminAnnouncementsCreateResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// admin/announcements/delete
  ///
  /// Calls POST /api/admin/announcements/delete.
  ///
  /// Authentication required.
  Future<void> announcementsDelete(
    AdminAnnouncementsDeleteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/announcements/delete',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/announcements/list
  ///
  /// Calls POST /api/admin/announcements/list.
  ///
  /// Authentication required.
  Future<List<AdminAnnouncementsListResponseItem>> announcementsList(
    AdminAnnouncementsListRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<AdminAnnouncementsListResponseItem>(
      'admin/announcements/list',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: AdminAnnouncementsListResponseItem.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// admin/announcements/update
  ///
  /// Calls POST /api/admin/announcements/update.
  ///
  /// Authentication required.
  Future<void> announcementsUpdate(
    AdminAnnouncementsUpdateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/announcements/update',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/avatar-decorations/create
  ///
  /// Calls POST /api/admin/avatar-decorations/create.
  ///
  /// Authentication required.
  Future<AdminAvatarDecorationsCreateResponse> avatarDecorationsCreate(
    AdminAvatarDecorationsCreateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<AdminAvatarDecorationsCreateResponse>(
      'admin/avatar-decorations/create',
      body: request.toJson(),
      requiresAuth: true,
      parser: AdminAvatarDecorationsCreateResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// admin/avatar-decorations/delete
  ///
  /// Calls POST /api/admin/avatar-decorations/delete.
  ///
  /// Authentication required.
  Future<void> avatarDecorationsDelete(
    AdminAvatarDecorationsDeleteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/avatar-decorations/delete',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/avatar-decorations/list
  ///
  /// Calls POST /api/admin/avatar-decorations/list.
  ///
  /// Authentication required.
  Future<List<AdminAvatarDecorationsListResponseItem>> avatarDecorationsList(
    AdminAvatarDecorationsListRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<AdminAvatarDecorationsListResponseItem>(
      'admin/avatar-decorations/list',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: AdminAvatarDecorationsListResponseItem.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// admin/avatar-decorations/update
  ///
  /// Calls POST /api/admin/avatar-decorations/update.
  ///
  /// Authentication required.
  Future<void> avatarDecorationsUpdate(
    AdminAvatarDecorationsUpdateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/avatar-decorations/update',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/captcha/current
  ///
  /// Calls POST /api/admin/captcha/current.
  ///
  /// Authentication required.
  Future<AdminCaptchaCurrentResponse> captchaCurrent({
    CancelToken? cancelToken,
  }) {
    return client.postModel<AdminCaptchaCurrentResponse>(
      'admin/captcha/current',
      requiresAuth: true,
      parser: AdminCaptchaCurrentResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// admin/captcha/save
  ///
  /// Calls POST /api/admin/captcha/save.
  ///
  /// Authentication required.
  Future<void> captchaSave(
    AdminCaptchaSaveRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/captcha/save',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/delete-account
  ///
  /// Calls POST /api/admin/delete-account.
  ///
  /// Authentication required.
  Future<void> deleteAccount(
    AdminDeleteAccountRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/delete-account',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/delete-all-files-of-a-user
  ///
  /// Calls POST /api/admin/delete-all-files-of-a-user.
  ///
  /// Authentication required.
  Future<void> deleteAllFilesOfAUser(
    AdminDeleteAllFilesOfAUserRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/delete-all-files-of-a-user',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/drive/clean-remote-files
  ///
  /// Calls POST /api/admin/drive/clean-remote-files.
  ///
  /// Authentication required.
  Future<void> driveCleanRemoteFiles({CancelToken? cancelToken}) {
    return client.postVoid(
      'admin/drive/clean-remote-files',
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/drive/cleanup
  ///
  /// Calls POST /api/admin/drive/cleanup.
  ///
  /// Authentication required.
  Future<void> driveCleanup({CancelToken? cancelToken}) {
    return client.postVoid(
      'admin/drive/cleanup',
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/drive/files
  ///
  /// Calls POST /api/admin/drive/files.
  ///
  /// Authentication required.
  Future<List<DriveFile>> driveFiles(
    AdminDriveFilesRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<DriveFile>(
      'admin/drive/files',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: DriveFile.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// admin/drive/show-file
  ///
  /// Calls POST /api/admin/drive/show-file.
  ///
  /// Authentication required.
  Future<AdminDriveShowFileResponse> driveShowFile(
    AdminDriveShowFileRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<AdminDriveShowFileResponse>(
      'admin/drive/show-file',
      body: request.toJson(),
      requiresAuth: true,
      parser: AdminDriveShowFileResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// admin/emoji/add
  ///
  /// Calls POST /api/admin/emoji/add.
  ///
  /// Authentication required.
  Future<EmojiDetailed> emojiAdd(
    AdminEmojiAddRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<EmojiDetailed>(
      'admin/emoji/add',
      body: request.toJson(),
      requiresAuth: true,
      parser: EmojiDetailed.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// admin/emoji/add-aliases-bulk
  ///
  /// Calls POST /api/admin/emoji/add-aliases-bulk.
  ///
  /// Authentication required.
  Future<void> emojiAddAliasesBulk(
    AdminEmojiAddAliasesBulkRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/emoji/add-aliases-bulk',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/emoji/copy
  ///
  /// Calls POST /api/admin/emoji/copy.
  ///
  /// Authentication required.
  Future<AdminEmojiCopyResponse> emojiCopy(
    AdminEmojiCopyRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<AdminEmojiCopyResponse>(
      'admin/emoji/copy',
      body: request.toJson(),
      requiresAuth: true,
      parser: AdminEmojiCopyResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// admin/emoji/delete
  ///
  /// Calls POST /api/admin/emoji/delete.
  ///
  /// Authentication required.
  Future<void> emojiDelete(
    AdminEmojiDeleteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/emoji/delete',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/emoji/delete-bulk
  ///
  /// Calls POST /api/admin/emoji/delete-bulk.
  ///
  /// Authentication required.
  Future<void> emojiDeleteBulk(
    AdminEmojiDeleteBulkRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/emoji/delete-bulk',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/emoji/import-zip
  ///
  /// Calls POST /api/admin/emoji/import-zip.
  ///
  /// Authentication required.
  Future<void> emojiImportZip(
    AdminEmojiImportZipRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/emoji/import-zip',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/emoji/list
  ///
  /// Calls POST /api/admin/emoji/list.
  ///
  /// Authentication required.
  Future<List<EmojiDetailed>> emojiList(
    AdminEmojiListRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<EmojiDetailed>(
      'admin/emoji/list',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: EmojiDetailed.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// admin/emoji/list-remote
  ///
  /// Calls POST /api/admin/emoji/list-remote.
  ///
  /// Authentication required.
  Future<List<EmojiDetailed>> emojiListRemote(
    AdminEmojiListRemoteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<EmojiDetailed>(
      'admin/emoji/list-remote',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: EmojiDetailed.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// admin/emoji/remove-aliases-bulk
  ///
  /// Calls POST /api/admin/emoji/remove-aliases-bulk.
  ///
  /// Authentication required.
  Future<void> emojiRemoveAliasesBulk(
    AdminEmojiRemoveAliasesBulkRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/emoji/remove-aliases-bulk',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/emoji/set-aliases-bulk
  ///
  /// Calls POST /api/admin/emoji/set-aliases-bulk.
  ///
  /// Authentication required.
  Future<void> emojiSetAliasesBulk(
    AdminEmojiSetAliasesBulkRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/emoji/set-aliases-bulk',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/emoji/set-category-bulk
  ///
  /// Calls POST /api/admin/emoji/set-category-bulk.
  ///
  /// Authentication required.
  Future<void> emojiSetCategoryBulk(
    AdminEmojiSetCategoryBulkRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/emoji/set-category-bulk',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/emoji/set-license-bulk
  ///
  /// Calls POST /api/admin/emoji/set-license-bulk.
  ///
  /// Authentication required.
  Future<void> emojiSetLicenseBulk(
    AdminEmojiSetLicenseBulkRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/emoji/set-license-bulk',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/emoji/update
  ///
  /// Calls POST /api/admin/emoji/update.
  ///
  /// Authentication required.
  Future<void> emojiUpdate(
    AdminEmojiUpdateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/emoji/update',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/federation/delete-all-files
  ///
  /// Calls POST /api/admin/federation/delete-all-files.
  ///
  /// Authentication required.
  Future<void> federationDeleteAllFiles(
    AdminFederationDeleteAllFilesRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/federation/delete-all-files',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/federation/refresh-remote-instance-metadata
  ///
  /// Calls POST /api/admin/federation/refresh-remote-instance-metadata.
  ///
  /// Authentication required.
  Future<void> federationRefreshRemoteInstanceMetadata(
    AdminFederationRefreshRemoteInstanceMetadataRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/federation/refresh-remote-instance-metadata',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/federation/remove-all-following
  ///
  /// Calls POST /api/admin/federation/remove-all-following.
  ///
  /// Authentication required.
  Future<void> federationRemoveAllFollowing(
    AdminFederationRemoveAllFollowingRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/federation/remove-all-following',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/federation/update-instance
  ///
  /// Calls POST /api/admin/federation/update-instance.
  ///
  /// Authentication required.
  Future<void> federationUpdateInstance(
    AdminFederationUpdateInstanceRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/federation/update-instance',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/forward-abuse-user-report
  ///
  /// Calls POST /api/admin/forward-abuse-user-report.
  ///
  /// Authentication required.
  Future<void> forwardAbuseUserReport(
    AdminForwardAbuseUserReportRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/forward-abuse-user-report',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/get-index-stats
  ///
  /// Calls POST /api/admin/get-index-stats.
  ///
  /// Authentication required.
  Future<List<AdminGetIndexStatsResponseItem>> getIndexStats({
    CancelToken? cancelToken,
  }) {
    return client.postList<AdminGetIndexStatsResponseItem>(
      'admin/get-index-stats',
      requiresAuth: true,
      itemParser: AdminGetIndexStatsResponseItem.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// admin/get-table-stats
  ///
  /// Calls POST /api/admin/get-table-stats.
  ///
  /// Authentication required.
  Future<JsonMap> getTableStats({CancelToken? cancelToken}) {
    return client.postMap(
      'admin/get-table-stats',
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/get-user-ips
  ///
  /// Calls POST /api/admin/get-user-ips.
  ///
  /// Authentication required.
  Future<List<AdminGetUserIpsResponseItem>> getUserIps(
    AdminGetUserIpsRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<AdminGetUserIpsResponseItem>(
      'admin/get-user-ips',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: AdminGetUserIpsResponseItem.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// admin/invite/create
  ///
  /// Calls POST /api/admin/invite/create.
  ///
  /// Authentication required.
  Future<List<InviteCode>> inviteCreate(
    AdminInviteCreateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<InviteCode>(
      'admin/invite/create',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: InviteCode.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// admin/invite/list
  ///
  /// Calls POST /api/admin/invite/list.
  ///
  /// Authentication required.
  Future<List<InviteCode>> inviteList(
    AdminInviteListRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<InviteCode>(
      'admin/invite/list',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: InviteCode.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// admin/meta
  ///
  /// Calls POST /api/admin/meta.
  ///
  /// Authentication required.
  Future<AdminMetaResponse> meta({CancelToken? cancelToken}) {
    return client.postModel<AdminMetaResponse>(
      'admin/meta',
      requiresAuth: true,
      parser: AdminMetaResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// admin/promo/create
  ///
  /// Calls POST /api/admin/promo/create.
  ///
  /// Authentication required.
  Future<void> promoCreate(
    AdminPromoCreateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/promo/create',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/queue/clear
  ///
  /// Calls POST /api/admin/queue/clear.
  ///
  /// Authentication required.
  Future<void> queueClear(
    AdminQueueClearRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/queue/clear',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/queue/deliver-delayed
  ///
  /// Calls POST /api/admin/queue/deliver-delayed.
  ///
  /// Authentication required.
  Future<List<List<Object>>> queueDeliverDelayed({CancelToken? cancelToken}) {
    return client.postParsed<List<List<Object>>>(
      'admin/queue/deliver-delayed',
      requiresAuth: true,
      parser: (data) =>
          (data as List).map((e) => (e as List).cast<Object>()).toList(),
      cancelToken: cancelToken,
    );
  }

  /// admin/queue/inbox-delayed
  ///
  /// Calls POST /api/admin/queue/inbox-delayed.
  ///
  /// Authentication required.
  Future<List<List<Object>>> queueInboxDelayed({CancelToken? cancelToken}) {
    return client.postParsed<List<List<Object>>>(
      'admin/queue/inbox-delayed',
      requiresAuth: true,
      parser: (data) =>
          (data as List).map((e) => (e as List).cast<Object>()).toList(),
      cancelToken: cancelToken,
    );
  }

  /// admin/queue/jobs
  ///
  /// Calls POST /api/admin/queue/jobs.
  ///
  /// Authentication required.
  Future<List<QueueJob>> queueJobs(
    AdminQueueJobsRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<QueueJob>(
      'admin/queue/jobs',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: QueueJob.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// admin/queue/pause
  ///
  /// Calls POST /api/admin/queue/pause.
  ///
  /// Authentication required.
  Future<void> queuePause(
    AdminQueuePauseRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/queue/pause',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/queue/promote-jobs
  ///
  /// Calls POST /api/admin/queue/promote-jobs.
  ///
  /// Authentication required.
  Future<void> queuePromoteJobs(
    AdminQueuePromoteJobsRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/queue/promote-jobs',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/queue/queue-stats
  ///
  /// Calls POST /api/admin/queue/queue-stats.
  ///
  /// Authentication required.
  Future<AdminQueueQueueStatsResponse> queueQueueStats(
    AdminQueueQueueStatsRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<AdminQueueQueueStatsResponse>(
      'admin/queue/queue-stats',
      body: request.toJson(),
      requiresAuth: true,
      parser: AdminQueueQueueStatsResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// admin/queue/queues
  ///
  /// Calls POST /api/admin/queue/queues.
  ///
  /// Authentication required.
  Future<List<AdminQueueQueuesResponseItem>> queueQueues({
    CancelToken? cancelToken,
  }) {
    return client.postList<AdminQueueQueuesResponseItem>(
      'admin/queue/queues',
      requiresAuth: true,
      itemParser: AdminQueueQueuesResponseItem.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// admin/queue/remove-job
  ///
  /// Calls POST /api/admin/queue/remove-job.
  ///
  /// Authentication required.
  Future<void> queueRemoveJob(
    AdminQueueRemoveJobRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/queue/remove-job',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/queue/resume
  ///
  /// Calls POST /api/admin/queue/resume.
  ///
  /// Authentication required.
  Future<void> queueResume(
    AdminQueueResumeRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/queue/resume',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/queue/retry-job
  ///
  /// Calls POST /api/admin/queue/retry-job.
  ///
  /// Authentication required.
  Future<void> queueRetryJob(
    AdminQueueRetryJobRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/queue/retry-job',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/queue/show-job
  ///
  /// Calls POST /api/admin/queue/show-job.
  ///
  /// Authentication required.
  Future<QueueJob> queueShowJob(
    AdminQueueShowJobRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<QueueJob>(
      'admin/queue/show-job',
      body: request.toJson(),
      requiresAuth: true,
      parser: QueueJob.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// admin/queue/show-job-logs
  ///
  /// Calls POST /api/admin/queue/show-job-logs.
  ///
  /// Authentication required.
  Future<List<String>> queueShowJobLogs(
    AdminQueueShowJobLogsRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postParsed<List<String>>(
      'admin/queue/show-job-logs',
      body: request.toJson(),
      requiresAuth: true,
      parser: (data) => (data as List).cast<String>(),
      cancelToken: cancelToken,
    );
  }

  /// admin/queue/stats
  ///
  /// Calls POST /api/admin/queue/stats.
  ///
  /// Authentication required.
  Future<AdminQueueStatsResponse> queueStats({CancelToken? cancelToken}) {
    return client.postModel<AdminQueueStatsResponse>(
      'admin/queue/stats',
      requiresAuth: true,
      parser: AdminQueueStatsResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// admin/relays/add
  ///
  /// Calls POST /api/admin/relays/add.
  ///
  /// Authentication required.
  Future<AdminRelaysAddResponse> relaysAdd(
    AdminRelaysAddRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<AdminRelaysAddResponse>(
      'admin/relays/add',
      body: request.toJson(),
      requiresAuth: true,
      parser: AdminRelaysAddResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// admin/relays/list
  ///
  /// Calls POST /api/admin/relays/list.
  ///
  /// Authentication required.
  Future<List<AdminRelaysListResponseItem>> relaysList({
    CancelToken? cancelToken,
  }) {
    return client.postList<AdminRelaysListResponseItem>(
      'admin/relays/list',
      requiresAuth: true,
      itemParser: AdminRelaysListResponseItem.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// admin/relays/remove
  ///
  /// Calls POST /api/admin/relays/remove.
  ///
  /// Authentication required.
  Future<void> relaysRemove(
    AdminRelaysRemoveRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/relays/remove',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/reset-password
  ///
  /// Calls POST /api/admin/reset-password.
  ///
  /// Authentication required.
  Future<AdminResetPasswordResponse> resetPassword(
    AdminResetPasswordRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<AdminResetPasswordResponse>(
      'admin/reset-password',
      body: request.toJson(),
      requiresAuth: true,
      parser: AdminResetPasswordResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// admin/resolve-abuse-user-report
  ///
  /// Calls POST /api/admin/resolve-abuse-user-report.
  ///
  /// Authentication required.
  Future<void> resolveAbuseUserReport(
    AdminResolveAbuseUserReportRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/resolve-abuse-user-report',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/roles/assign
  ///
  /// Calls POST /api/admin/roles/assign.
  ///
  /// Authentication required.
  Future<void> rolesAssign(
    AdminRolesAssignRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/roles/assign',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/roles/create
  ///
  /// Calls POST /api/admin/roles/create.
  ///
  /// Authentication required.
  Future<Role> rolesCreate(
    AdminRolesCreateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<Role>(
      'admin/roles/create',
      body: request.toJson(),
      requiresAuth: true,
      parser: Role.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// admin/roles/delete
  ///
  /// Calls POST /api/admin/roles/delete.
  ///
  /// Authentication required.
  Future<void> rolesDelete(
    AdminRolesDeleteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/roles/delete',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/roles/list
  ///
  /// Calls POST /api/admin/roles/list.
  ///
  /// Authentication required.
  Future<List<Role>> rolesList({CancelToken? cancelToken}) {
    return client.postList<Role>(
      'admin/roles/list',
      requiresAuth: true,
      itemParser: Role.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// admin/roles/show
  ///
  /// Calls POST /api/admin/roles/show.
  ///
  /// Authentication required.
  Future<Role> rolesShow(
    AdminRolesShowRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<Role>(
      'admin/roles/show',
      body: request.toJson(),
      requiresAuth: true,
      parser: Role.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// admin/roles/unassign
  ///
  /// Calls POST /api/admin/roles/unassign.
  ///
  /// Authentication required.
  Future<void> rolesUnassign(
    AdminRolesUnassignRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/roles/unassign',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/roles/update
  ///
  /// Calls POST /api/admin/roles/update.
  ///
  /// Authentication required.
  Future<void> rolesUpdate(
    AdminRolesUpdateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/roles/update',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/roles/update-default-policies
  ///
  /// Calls POST /api/admin/roles/update-default-policies.
  ///
  /// Authentication required.
  Future<void> rolesUpdateDefaultPolicies(
    AdminRolesUpdateDefaultPoliciesRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/roles/update-default-policies',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/roles/users
  ///
  /// Calls POST /api/admin/roles/users.
  Future<List<AdminRolesUsersResponseItem>> rolesUsers(
    AdminRolesUsersRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<AdminRolesUsersResponseItem>(
      'admin/roles/users',
      body: request.toJson(),
      requiresAuth: false,
      itemParser: AdminRolesUsersResponseItem.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// admin/send-email
  ///
  /// Calls POST /api/admin/send-email.
  ///
  /// Authentication required.
  Future<void> sendEmail(
    AdminSendEmailRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/send-email',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/server-info
  ///
  /// Calls POST /api/admin/server-info.
  ///
  /// Authentication required.
  Future<AdminServerInfoResponse> serverInfo({CancelToken? cancelToken}) {
    return client.postModel<AdminServerInfoResponse>(
      'admin/server-info',
      requiresAuth: true,
      parser: AdminServerInfoResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// admin/show-moderation-logs
  ///
  /// Calls POST /api/admin/show-moderation-logs.
  ///
  /// Authentication required.
  Future<List<AdminShowModerationLogsResponseItem>> showModerationLogs(
    AdminShowModerationLogsRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<AdminShowModerationLogsResponseItem>(
      'admin/show-moderation-logs',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: AdminShowModerationLogsResponseItem.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// admin/show-user
  ///
  /// Calls POST /api/admin/show-user.
  ///
  /// Authentication required.
  Future<AdminShowUserResponse> showUser(
    AdminShowUserRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<AdminShowUserResponse>(
      'admin/show-user',
      body: request.toJson(),
      requiresAuth: true,
      parser: AdminShowUserResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// admin/show-users
  ///
  /// Calls POST /api/admin/show-users.
  ///
  /// Authentication required.
  Future<List<UserDetailed>> showUsers(
    AdminShowUsersRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<UserDetailed>(
      'admin/show-users',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: UserDetailed.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// admin/suspend-user
  ///
  /// Calls POST /api/admin/suspend-user.
  ///
  /// Authentication required.
  Future<void> suspendUser(
    AdminSuspendUserRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/suspend-user',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/system-webhook/create
  ///
  /// Calls POST /api/admin/system-webhook/create.
  ///
  /// Authentication required.
  Future<SystemWebhook> systemWebhookCreate(
    AdminSystemWebhookCreateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<SystemWebhook>(
      'admin/system-webhook/create',
      body: request.toJson(),
      requiresAuth: true,
      parser: SystemWebhook.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// admin/system-webhook/delete
  ///
  /// Calls POST /api/admin/system-webhook/delete.
  ///
  /// Authentication required.
  Future<void> systemWebhookDelete(
    AdminSystemWebhookDeleteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/system-webhook/delete',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/system-webhook/list
  ///
  /// Calls POST /api/admin/system-webhook/list.
  ///
  /// Authentication required.
  Future<List<SystemWebhook>> systemWebhookList(
    AdminSystemWebhookListRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<SystemWebhook>(
      'admin/system-webhook/list',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: SystemWebhook.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// admin/system-webhook/show
  ///
  /// Calls POST /api/admin/system-webhook/show.
  ///
  /// Authentication required.
  Future<SystemWebhook> systemWebhookShow(
    AdminSystemWebhookShowRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<SystemWebhook>(
      'admin/system-webhook/show',
      body: request.toJson(),
      requiresAuth: true,
      parser: SystemWebhook.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// admin/system-webhook/test
  ///
  /// Calls POST /api/admin/system-webhook/test.
  ///
  /// Authentication required.
  Future<void> systemWebhookTest(
    AdminSystemWebhookTestRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/system-webhook/test',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/system-webhook/update
  ///
  /// Calls POST /api/admin/system-webhook/update.
  ///
  /// Authentication required.
  Future<SystemWebhook> systemWebhookUpdate(
    AdminSystemWebhookUpdateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<SystemWebhook>(
      'admin/system-webhook/update',
      body: request.toJson(),
      requiresAuth: true,
      parser: SystemWebhook.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// admin/unset-mfa
  ///
  /// Calls POST /api/admin/unset-mfa.
  ///
  /// Authentication required.
  Future<void> unsetMfa(
    AdminUnsetMfaRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/unset-mfa',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/unset-user-avatar
  ///
  /// Calls POST /api/admin/unset-user-avatar.
  ///
  /// Authentication required.
  Future<void> unsetUserAvatar(
    AdminUnsetUserAvatarRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/unset-user-avatar',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/unset-user-banner
  ///
  /// Calls POST /api/admin/unset-user-banner.
  ///
  /// Authentication required.
  Future<void> unsetUserBanner(
    AdminUnsetUserBannerRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/unset-user-banner',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/unsuspend-user
  ///
  /// Calls POST /api/admin/unsuspend-user.
  ///
  /// Authentication required.
  Future<void> unsuspendUser(
    AdminUnsuspendUserRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/unsuspend-user',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/update-abuse-user-report
  ///
  /// Calls POST /api/admin/update-abuse-user-report.
  ///
  /// Authentication required.
  Future<void> updateAbuseUserReport(
    AdminUpdateAbuseUserReportRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/update-abuse-user-report',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/update-meta
  ///
  /// Calls POST /api/admin/update-meta.
  ///
  /// Authentication required.
  Future<void> updateMeta(
    AdminUpdateMetaRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/update-meta',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// admin/update-proxy-account
  ///
  /// Calls POST /api/admin/update-proxy-account.
  ///
  /// Authentication required.
  Future<UserDetailed> updateProxyAccount(
    AdminUpdateProxyAccountRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<UserDetailed>(
      'admin/update-proxy-account',
      body: request.toJson(),
      requiresAuth: true,
      parser: UserDetailed.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// admin/update-user-note
  ///
  /// Calls POST /api/admin/update-user-note.
  ///
  /// Authentication required.
  Future<void> updateUserNote(
    AdminUpdateUserNoteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'admin/update-user-note',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// v2/admin/emoji/list
  ///
  /// Calls POST /api/v2/admin/emoji/list.
  ///
  /// Authentication required.
  Future<AdminV2EmojiListResponse> v2EmojiList(
    AdminV2EmojiListRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<AdminV2EmojiListResponse>(
      'v2/admin/emoji/list',
      body: request.toJson(),
      requiresAuth: true,
      parser: AdminV2EmojiListResponse.fromJson,
      cancelToken: cancelToken,
    );
  }
}
