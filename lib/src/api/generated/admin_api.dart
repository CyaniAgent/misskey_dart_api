// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'admin_models.dart';

class RawAdminApi {
  RawAdminApi(this.client);

  final MisskeyClient client;

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

  Future<void> driveCleanRemoteFiles({CancelToken? cancelToken}) {
    return client.postVoid(
      'admin/drive/clean-remote-files',
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  Future<void> driveCleanup({CancelToken? cancelToken}) {
    return client.postVoid(
      'admin/drive/cleanup',
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

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

  Future<JsonMap> getTableStats({CancelToken? cancelToken}) {
    return client.postMap(
      'admin/get-table-stats',
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

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

  Future<AdminMetaResponse> meta({CancelToken? cancelToken}) {
    return client.postModel<AdminMetaResponse>(
      'admin/meta',
      requiresAuth: true,
      parser: AdminMetaResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

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

  Future<List<List<Object>>> queueDeliverDelayed({CancelToken? cancelToken}) {
    return client.postParsed<List<List<Object>>>(
      'admin/queue/deliver-delayed',
      requiresAuth: true,
      parser: (data) =>
          (data as List).map((e) => (e as List).cast<Object>()).toList(),
      cancelToken: cancelToken,
    );
  }

  Future<List<List<Object>>> queueInboxDelayed({CancelToken? cancelToken}) {
    return client.postParsed<List<List<Object>>>(
      'admin/queue/inbox-delayed',
      requiresAuth: true,
      parser: (data) =>
          (data as List).map((e) => (e as List).cast<Object>()).toList(),
      cancelToken: cancelToken,
    );
  }

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

  Future<AdminQueueStatsResponse> queueStats({CancelToken? cancelToken}) {
    return client.postModel<AdminQueueStatsResponse>(
      'admin/queue/stats',
      requiresAuth: true,
      parser: AdminQueueStatsResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

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

  Future<List<Role>> rolesList({CancelToken? cancelToken}) {
    return client.postList<Role>(
      'admin/roles/list',
      requiresAuth: true,
      itemParser: Role.fromJson,
      cancelToken: cancelToken,
    );
  }

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

  Future<AdminServerInfoResponse> serverInfo({CancelToken? cancelToken}) {
    return client.postModel<AdminServerInfoResponse>(
      'admin/server-info',
      requiresAuth: true,
      parser: AdminServerInfoResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

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
