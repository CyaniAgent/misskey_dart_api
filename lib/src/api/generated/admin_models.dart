// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/generated/generated.dart';
import '../../models/json.dart';

part 'admin_models.g.dart';

enum AdminAbuseReportNotificationRecipientCreateRequestMethod { email, webhook }

enum AdminAbuseReportNotificationRecipientListRequestMethodItem {
  email,
  webhook,
}

enum AdminAbuseReportNotificationRecipientUpdateRequestMethod { email, webhook }

enum AdminAbuseUserReportsRequestReporterOrigin { combined, local, remote }

enum AdminAbuseUserReportsRequestTargetUserOrigin { combined, local, remote }

enum AdminAbuseUserReportsResponseItemResolvedAs { accept, reject }

enum AdminAnnouncementsCreateRequestIcon { info, warning, error, success }

enum AdminAnnouncementsCreateRequestDisplay { normal, banner, dialog }

enum AdminAnnouncementsListRequestStatus { all, active, archived }

enum AdminAnnouncementsListResponseItemIcon { info, warning, error, success }

enum AdminAnnouncementsListResponseItemDisplay { normal, banner, dialog }

enum AdminAnnouncementsUpdateRequestIcon { info, warning, error, success }

enum AdminAnnouncementsUpdateRequestDisplay { normal, banner, dialog }

enum AdminCaptchaCurrentResponseProvider {
  none,
  hcaptcha,
  mcaptcha,
  recaptcha,
  turnstile,
  testcaptcha,
}

enum AdminCaptchaSaveRequestProvider {
  none,
  hcaptcha,
  mcaptcha,
  recaptcha,
  turnstile,
  testcaptcha,
}

enum AdminDriveFilesRequestOrigin { combined, local, remote }

enum AdminInviteListRequestType { unused, used, expired, all }

enum AdminInviteListRequestSort {
  @JsonValue('+createdAt')
  pluscreatedAt,
  @JsonValue('-createdAt')
  minuscreatedAt,
  @JsonValue('+usedAt')
  plususedAt,
  @JsonValue('-usedAt')
  minususedAt,
}

enum AdminMetaResponseSensitiveMediaDetection { none, all, local, remote }

enum AdminMetaResponseSensitiveMediaDetectionSensitivity {
  medium,
  low,
  high,
  veryLow,
  veryHigh,
}

enum AdminMetaResponseFederation { all, specified, none }

enum AdminMetaResponseUgcVisibilityForVisitor { all, local, none }

enum AdminQueueClearRequestQueue {
  system,
  endedPollNotification,
  postScheduledNote,
  deliver,
  inbox,
  db,
  relationship,
  objectStorage,
  userWebhookDeliver,
  systemWebhookDeliver,
}

enum AdminQueueClearRequestState {
  @JsonValue('*')
  value,
  completed,
  wait,
  active,
  paused,
  prioritized,
  delayed,
  failed,
}

enum AdminQueueJobsRequestQueue {
  system,
  endedPollNotification,
  postScheduledNote,
  deliver,
  inbox,
  db,
  relationship,
  objectStorage,
  userWebhookDeliver,
  systemWebhookDeliver,
}

enum AdminQueueJobsRequestStateItem { active, wait, delayed, completed, failed }

enum AdminQueuePauseRequestQueue {
  system,
  endedPollNotification,
  postScheduledNote,
  deliver,
  inbox,
  db,
  relationship,
  objectStorage,
  userWebhookDeliver,
  systemWebhookDeliver,
}

enum AdminQueuePromoteJobsRequestQueue {
  system,
  endedPollNotification,
  postScheduledNote,
  deliver,
  inbox,
  db,
  relationship,
  objectStorage,
  userWebhookDeliver,
  systemWebhookDeliver,
}

enum AdminQueueQueueStatsRequestQueue {
  system,
  endedPollNotification,
  postScheduledNote,
  deliver,
  inbox,
  db,
  relationship,
  objectStorage,
  userWebhookDeliver,
  systemWebhookDeliver,
}

enum AdminQueueQueueStatsResponseName {
  system,
  endedPollNotification,
  postScheduledNote,
  deliver,
  inbox,
  db,
  relationship,
  objectStorage,
  userWebhookDeliver,
  systemWebhookDeliver,
}

enum AdminQueueQueueStatsResponseDbMode { cluster, standalone, sentinel }

enum AdminQueueQueuesResponseItemName {
  system,
  endedPollNotification,
  postScheduledNote,
  deliver,
  inbox,
  db,
  relationship,
  objectStorage,
  userWebhookDeliver,
  systemWebhookDeliver,
}

enum AdminQueueRemoveJobRequestQueue {
  system,
  endedPollNotification,
  postScheduledNote,
  deliver,
  inbox,
  db,
  relationship,
  objectStorage,
  userWebhookDeliver,
  systemWebhookDeliver,
}

enum AdminQueueResumeRequestQueue {
  system,
  endedPollNotification,
  postScheduledNote,
  deliver,
  inbox,
  db,
  relationship,
  objectStorage,
  userWebhookDeliver,
  systemWebhookDeliver,
}

enum AdminQueueRetryJobRequestQueue {
  system,
  endedPollNotification,
  postScheduledNote,
  deliver,
  inbox,
  db,
  relationship,
  objectStorage,
  userWebhookDeliver,
  systemWebhookDeliver,
}

enum AdminQueueShowJobRequestQueue {
  system,
  endedPollNotification,
  postScheduledNote,
  deliver,
  inbox,
  db,
  relationship,
  objectStorage,
  userWebhookDeliver,
  systemWebhookDeliver,
}

enum AdminQueueShowJobLogsRequestQueue {
  system,
  endedPollNotification,
  postScheduledNote,
  deliver,
  inbox,
  db,
  relationship,
  objectStorage,
  userWebhookDeliver,
  systemWebhookDeliver,
}

enum AdminRelaysAddResponseStatus { requesting, accepted, rejected }

enum AdminRelaysListResponseItemStatus { requesting, accepted, rejected }

enum AdminResolveAbuseUserReportRequestResolvedAs { accept, reject }

enum AdminRolesCreateRequestTarget { manual, conditional }

enum AdminRolesUpdateRequestTarget { manual, conditional }

enum AdminShowUsersRequestSort {
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
  @JsonValue('+lastActiveDate')
  pluslastActiveDate,
  @JsonValue('-lastActiveDate')
  minuslastActiveDate,
}

enum AdminShowUsersRequestState {
  all,
  alive,
  available,
  admin,
  moderator,
  adminOrModerator,
  suspended,
}

enum AdminShowUsersRequestOrigin { combined, local, remote }

enum AdminSystemWebhookCreateRequestOnItem {
  abuseReport,
  abuseReportResolved,
  userCreated,
  inactiveModeratorsWarning,
  inactiveModeratorsInvitationOnlyChanged,
}

enum AdminSystemWebhookListRequestOnItem {
  abuseReport,
  abuseReportResolved,
  userCreated,
  inactiveModeratorsWarning,
  inactiveModeratorsInvitationOnlyChanged,
}

enum AdminSystemWebhookTestRequestType {
  abuseReport,
  abuseReportResolved,
  userCreated,
  inactiveModeratorsWarning,
  inactiveModeratorsInvitationOnlyChanged,
}

enum AdminSystemWebhookUpdateRequestOnItem {
  abuseReport,
  abuseReportResolved,
  userCreated,
  inactiveModeratorsWarning,
  inactiveModeratorsInvitationOnlyChanged,
}

enum AdminUpdateMetaRequestClientOptionsEntrancePageStyle { classic, simple }

enum AdminUpdateMetaRequestSensitiveMediaDetection { none, all, local, remote }

enum AdminUpdateMetaRequestSensitiveMediaDetectionSensitivity {
  medium,
  low,
  high,
  veryLow,
  veryHigh,
}

enum AdminUpdateMetaRequestFederation { all, none, specified }

enum AdminUpdateMetaRequestUgcVisibilityForVisitor { all, local, none }

enum AdminV2EmojiListRequestQueryHostType { local, remote, all }

enum AdminV2EmojiListRequestSortKeysItem {
  @JsonValue('+id')
  plusid,
  @JsonValue('-id')
  minusid,
  @JsonValue('+updatedAt')
  plusupdatedAt,
  @JsonValue('-updatedAt')
  minusupdatedAt,
  @JsonValue('+name')
  plusname,
  @JsonValue('-name')
  minusname,
  @JsonValue('+host')
  plushost,
  @JsonValue('-host')
  minushost,
  @JsonValue('+uri')
  plusuri,
  @JsonValue('-uri')
  minusuri,
  @JsonValue('+publicUrl')
  pluspublicUrl,
  @JsonValue('-publicUrl')
  minuspublicUrl,
  @JsonValue('+type')
  plustype,
  @JsonValue('-type')
  minustype,
  @JsonValue('+aliases')
  plusaliases,
  @JsonValue('-aliases')
  minusaliases,
  @JsonValue('+category')
  pluscategory,
  @JsonValue('-category')
  minuscategory,
  @JsonValue('+license')
  pluslicense,
  @JsonValue('-license')
  minuslicense,
  @JsonValue('+isSensitive')
  plusisSensitive,
  @JsonValue('-isSensitive')
  minusisSensitive,
  @JsonValue('+localOnly')
  pluslocalOnly,
  @JsonValue('-localOnly')
  minuslocalOnly,
  @JsonValue('+roleIdsThatCanBeUsedThisEmojiAsReaction')
  plusroleIdsThatCanBeUsedThisEmojiAsReaction,
  @JsonValue('-roleIdsThatCanBeUsedThisEmojiAsReaction')
  minusroleIdsThatCanBeUsedThisEmojiAsReaction,
}

sealed class AdminDriveShowFileRequest {
  const AdminDriveShowFileRequest();

  Map<String, dynamic> toJson();
}

sealed class AdminEmojiUpdateRequest {
  const AdminEmojiUpdateRequest();

  Map<String, dynamic> toJson();
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminAbuseReportNotificationRecipientCreateRequest {
  const AdminAbuseReportNotificationRecipientCreateRequest({
    required this.isActive,
    required this.name,
    required this.method,
    this.userId,
    this.systemWebhookId,
  });
  final bool isActive;
  final String name;
  final AdminAbuseReportNotificationRecipientCreateRequestMethod method;
  final String? userId;
  final String? systemWebhookId;

  factory AdminAbuseReportNotificationRecipientCreateRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminAbuseReportNotificationRecipientCreateRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminAbuseReportNotificationRecipientCreateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminAbuseReportNotificationRecipientDeleteRequest {
  const AdminAbuseReportNotificationRecipientDeleteRequest({required this.id});
  final String id;

  factory AdminAbuseReportNotificationRecipientDeleteRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminAbuseReportNotificationRecipientDeleteRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminAbuseReportNotificationRecipientDeleteRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminAbuseReportNotificationRecipientListRequest {
  const AdminAbuseReportNotificationRecipientListRequest({this.method});
  final List<AdminAbuseReportNotificationRecipientListRequestMethodItem>?
  method;

  factory AdminAbuseReportNotificationRecipientListRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminAbuseReportNotificationRecipientListRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminAbuseReportNotificationRecipientListRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminAbuseReportNotificationRecipientShowRequest {
  const AdminAbuseReportNotificationRecipientShowRequest({required this.id});
  final String id;

  factory AdminAbuseReportNotificationRecipientShowRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminAbuseReportNotificationRecipientShowRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminAbuseReportNotificationRecipientShowRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminAbuseReportNotificationRecipientUpdateRequest {
  const AdminAbuseReportNotificationRecipientUpdateRequest({
    required this.id,
    required this.isActive,
    required this.name,
    required this.method,
    this.userId,
    this.systemWebhookId,
  });
  final String id;
  final bool isActive;
  final String name;
  final AdminAbuseReportNotificationRecipientUpdateRequestMethod method;
  final String? userId;
  final String? systemWebhookId;

  factory AdminAbuseReportNotificationRecipientUpdateRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminAbuseReportNotificationRecipientUpdateRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminAbuseReportNotificationRecipientUpdateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminAbuseUserReportsRequest {
  const AdminAbuseUserReportsRequest({
    this.limit = 10,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    this.state,
    this.reporterOrigin = AdminAbuseUserReportsRequestReporterOrigin.combined,
    this.targetUserOrigin =
        AdminAbuseUserReportsRequestTargetUserOrigin.combined,
  });
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final String? state;
  final AdminAbuseUserReportsRequestReporterOrigin reporterOrigin;
  final AdminAbuseUserReportsRequestTargetUserOrigin targetUserOrigin;

  factory AdminAbuseUserReportsRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminAbuseUserReportsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminAbuseUserReportsRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminAbuseUserReportsResponseItem {
  const AdminAbuseUserReportsResponseItem({
    required this.id,
    required this.createdAt,
    required this.comment,
    required this.resolved,
    required this.reporterId,
    required this.targetUserId,
    @JsonKey(name: 'assigneeId', includeIfNull: true) required this.assigneeId,
    required this.reporter,
    required this.targetUser,
    @JsonKey(name: 'assignee', includeIfNull: true) required this.assignee,
    required this.forwarded,
    @JsonKey(name: 'resolvedAs', includeIfNull: true) required this.resolvedAs,
    required this.moderationNote,
  });
  final String id;
  final DateTime createdAt;
  final String comment;
  final bool resolved;
  final String reporterId;
  final String targetUserId;
  final String? assigneeId;
  final UserDetailedNotMe reporter;
  final UserDetailedNotMe targetUser;
  final UserDetailedNotMe? assignee;
  final bool forwarded;
  final AdminAbuseUserReportsResponseItemResolvedAs? resolvedAs;
  final String moderationNote;

  factory AdminAbuseUserReportsResponseItem.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminAbuseUserReportsResponseItemFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminAbuseUserReportsResponseItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminAccountsCreateRequest {
  const AdminAccountsCreateRequest({
    required this.username,
    required this.password,
    this.setupPassword,
  });
  final String username;
  final String password;
  final String? setupPassword;

  factory AdminAccountsCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminAccountsCreateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminAccountsCreateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminAccountsCreateResponseAvatarDecorationsItem {
  const AdminAccountsCreateResponseAvatarDecorationsItem({
    required this.id,
    this.angle,
    this.flipH,
    required this.url,
    this.offsetX,
    this.offsetY,
  });
  final String id;
  final num? angle;
  final bool? flipH;
  final String url;
  final num? offsetX;
  final num? offsetY;

  factory AdminAccountsCreateResponseAvatarDecorationsItem.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminAccountsCreateResponseAvatarDecorationsItemFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminAccountsCreateResponseAvatarDecorationsItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminAccountsCreateResponseInstance {
  const AdminAccountsCreateResponseInstance({
    @JsonKey(name: 'name', includeIfNull: true) required this.name,
    @JsonKey(name: 'softwareName', includeIfNull: true)
    required this.softwareName,
    @JsonKey(name: 'softwareVersion', includeIfNull: true)
    required this.softwareVersion,
    @JsonKey(name: 'iconUrl', includeIfNull: true) required this.iconUrl,
    @JsonKey(name: 'faviconUrl', includeIfNull: true) required this.faviconUrl,
    @JsonKey(name: 'themeColor', includeIfNull: true) required this.themeColor,
  });
  final String? name;
  final String? softwareName;
  final String? softwareVersion;
  final String? iconUrl;
  final String? faviconUrl;
  final String? themeColor;

  factory AdminAccountsCreateResponseInstance.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminAccountsCreateResponseInstanceFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminAccountsCreateResponseInstanceToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminAccountsCreateResponseBadgeRolesItem {
  const AdminAccountsCreateResponseBadgeRolesItem({
    required this.name,
    @JsonKey(name: 'iconUrl', includeIfNull: true) required this.iconUrl,
    required this.displayOrder,
  });
  final String name;
  final String? iconUrl;
  final num displayOrder;

  factory AdminAccountsCreateResponseBadgeRolesItem.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminAccountsCreateResponseBadgeRolesItemFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminAccountsCreateResponseBadgeRolesItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminAccountsCreateResponseFieldsItem {
  const AdminAccountsCreateResponseFieldsItem({
    required this.name,
    required this.value,
  });
  final String name;
  final String value;

  factory AdminAccountsCreateResponseFieldsItem.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminAccountsCreateResponseFieldsItemFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminAccountsCreateResponseFieldsItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminAccountsCreateResponseNotificationRecieveConfig {
  const AdminAccountsCreateResponseNotificationRecieveConfig({
    this.note,
    this.follow,
    this.mention,
    this.reply,
    this.renote,
    this.quote,
    this.reaction,
    this.pollEnded,
    this.scheduledNotePosted,
    this.scheduledNotePostFailed,
    this.receiveFollowRequest,
    this.followRequestAccepted,
    this.roleAssigned,
    this.chatRoomInvitationReceived,
    this.achievementEarned,
    this.app,
    this.test,
    this.login,
    this.createToken,
    this.exportCompleted,
  });
  final JsonMap? note;
  final JsonMap? follow;
  final JsonMap? mention;
  final JsonMap? reply;
  final JsonMap? renote;
  final JsonMap? quote;
  final JsonMap? reaction;
  final JsonMap? pollEnded;
  final JsonMap? scheduledNotePosted;
  final JsonMap? scheduledNotePostFailed;
  final JsonMap? receiveFollowRequest;
  final JsonMap? followRequestAccepted;
  final JsonMap? roleAssigned;
  final JsonMap? chatRoomInvitationReceived;
  final JsonMap? achievementEarned;
  final JsonMap? app;
  final JsonMap? test;
  final JsonMap? login;
  final JsonMap? createToken;
  final JsonMap? exportCompleted;

  factory AdminAccountsCreateResponseNotificationRecieveConfig.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminAccountsCreateResponseNotificationRecieveConfigFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminAccountsCreateResponseNotificationRecieveConfigToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminAccountsCreateResponseSecurityKeysListItem {
  const AdminAccountsCreateResponseSecurityKeysListItem({
    required this.id,
    required this.name,
    required this.lastUsed,
  });
  final String id;
  final String name;
  final DateTime lastUsed;

  factory AdminAccountsCreateResponseSecurityKeysListItem.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminAccountsCreateResponseSecurityKeysListItemFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminAccountsCreateResponseSecurityKeysListItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminAccountsCreateResponse {
  const AdminAccountsCreateResponse({
    required this.id,
    @JsonKey(name: 'name', includeIfNull: true) required this.name,
    required this.username,
    @JsonKey(name: 'host', includeIfNull: true) required this.host,
    required this.avatarUrl,
    @JsonKey(name: 'avatarBlurhash', includeIfNull: true)
    required this.avatarBlurhash,
    required this.avatarDecorations,
    this.isBot,
    this.isCat,
    this.requireSigninToViewContents,
    this.makeNotesFollowersOnlyBefore,
    this.makeNotesHiddenBefore,
    this.instance,
    required this.emojis,
    required this.onlineStatus,
    this.badgeRoles,
    @JsonKey(name: 'url', includeIfNull: true) required this.url,
    @JsonKey(name: 'uri', includeIfNull: true) required this.uri,
    @JsonKey(name: 'movedTo', includeIfNull: true) required this.movedTo,
    @JsonKey(name: 'alsoKnownAs', includeIfNull: true)
    required this.alsoKnownAs,
    required this.createdAt,
    @JsonKey(name: 'updatedAt', includeIfNull: true) required this.updatedAt,
    @JsonKey(name: 'lastFetchedAt', includeIfNull: true)
    required this.lastFetchedAt,
    @JsonKey(name: 'bannerUrl', includeIfNull: true) required this.bannerUrl,
    @JsonKey(name: 'bannerBlurhash', includeIfNull: true)
    required this.bannerBlurhash,
    required this.isLocked,
    required this.isSilenced,
    required this.isSuspended,
    @JsonKey(name: 'description', includeIfNull: true)
    required this.description,
    @JsonKey(name: 'location', includeIfNull: true) required this.location,
    @JsonKey(name: 'birthday', includeIfNull: true) required this.birthday,
    @JsonKey(name: 'lang', includeIfNull: true) required this.lang,
    required this.fields,
    required this.verifiedLinks,
    required this.followersCount,
    required this.followingCount,
    required this.notesCount,
    required this.pinnedNoteIds,
    required this.pinnedNotes,
    @JsonKey(name: 'pinnedPageId', includeIfNull: true)
    required this.pinnedPageId,
    @JsonKey(name: 'pinnedPage', includeIfNull: true) required this.pinnedPage,
    required this.publicReactions,
    required this.followingVisibility,
    required this.followersVisibility,
    required this.chatScope,
    required this.canChat,
    required this.roles,
    @JsonKey(name: 'followedMessage', includeIfNull: true)
    required this.followedMessage,
    @JsonKey(name: 'memo', includeIfNull: true) required this.memo,
    this.moderationNote,
    required this.twoFactorEnabled,
    required this.usePasswordLessLogin,
    required this.securityKeys,
    this.isFollowing,
    this.isFollowed,
    this.hasPendingFollowRequestFromYou,
    this.hasPendingFollowRequestToYou,
    this.isBlocking,
    this.isBlocked,
    this.isMuted,
    this.isRenoteMuted,
    this.notify,
    this.withReplies,
    @JsonKey(name: 'avatarId', includeIfNull: true) required this.avatarId,
    @JsonKey(name: 'bannerId', includeIfNull: true) required this.bannerId,
    required this.isModerator,
    required this.isAdmin,
    required this.injectFeaturedNote,
    required this.receiveAnnouncementEmail,
    required this.alwaysMarkNsfw,
    required this.autoSensitive,
    required this.carefulBot,
    required this.autoAcceptFollowed,
    required this.noCrawle,
    required this.preventAiLearning,
    required this.isExplorable,
    required this.isDeleted,
    required this.twoFactorBackupCodesStock,
    required this.hideOnlineStatus,
    required this.hasUnreadSpecifiedNotes,
    required this.hasUnreadMentions,
    required this.hasUnreadAnnouncement,
    required this.unreadAnnouncements,
    required this.hasUnreadAntenna,
    required this.hasUnreadChannel,
    required this.hasUnreadChatMessages,
    required this.hasUnreadNotification,
    required this.hasPendingReceivedFollowRequest,
    required this.unreadNotificationsCount,
    required this.mutedWords,
    required this.hardMutedWords,
    required this.mutedInstances,
    required this.notificationRecieveConfig,
    required this.emailNotificationTypes,
    required this.achievements,
    required this.loggedInDays,
    required this.policies,
    this.email,
    this.emailVerified,
    this.securityKeysList,
    required this.token,
  });
  final String id;
  final String? name;
  final String username;
  final String? host;
  final String avatarUrl;
  final String? avatarBlurhash;
  final List<AdminAccountsCreateResponseAvatarDecorationsItem>
  avatarDecorations;
  final bool? isBot;
  final bool? isCat;
  final bool? requireSigninToViewContents;
  final num? makeNotesFollowersOnlyBefore;
  final num? makeNotesHiddenBefore;
  final AdminAccountsCreateResponseInstance? instance;
  final Map<String, String> emojis;
  final OnlineStatus onlineStatus;
  final List<AdminAccountsCreateResponseBadgeRolesItem>? badgeRoles;
  final String? url;
  final String? uri;
  final String? movedTo;
  final List<String>? alsoKnownAs;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final DateTime? lastFetchedAt;
  final String? bannerUrl;
  final String? bannerBlurhash;
  final bool isLocked;
  final bool isSilenced;
  final bool isSuspended;
  final String? description;
  final String? location;
  final String? birthday;
  final String? lang;
  final List<AdminAccountsCreateResponseFieldsItem> fields;
  final List<String> verifiedLinks;
  final num followersCount;
  final num followingCount;
  final num notesCount;
  final List<String> pinnedNoteIds;
  final List<Note> pinnedNotes;
  final String? pinnedPageId;
  final Page? pinnedPage;
  final bool publicReactions;
  final FollowingVisibility followingVisibility;
  final FollowingVisibility followersVisibility;
  final ChatScope chatScope;
  final bool canChat;
  final List<RoleLite> roles;
  final String? followedMessage;
  final String? memo;
  final String? moderationNote;
  final bool twoFactorEnabled;
  final bool usePasswordLessLogin;
  final bool securityKeys;
  final bool? isFollowing;
  final bool? isFollowed;
  final bool? hasPendingFollowRequestFromYou;
  final bool? hasPendingFollowRequestToYou;
  final bool? isBlocking;
  final bool? isBlocked;
  final bool? isMuted;
  final bool? isRenoteMuted;
  final UserNotify? notify;
  final bool? withReplies;
  final String? avatarId;
  final String? bannerId;
  final bool isModerator;
  final bool isAdmin;
  final bool injectFeaturedNote;
  final bool receiveAnnouncementEmail;
  final bool alwaysMarkNsfw;
  final bool autoSensitive;
  final bool carefulBot;
  final bool autoAcceptFollowed;
  final bool noCrawle;
  final bool preventAiLearning;
  final bool isExplorable;
  final bool isDeleted;
  final TwoFactorBackupCodesStock twoFactorBackupCodesStock;
  final bool hideOnlineStatus;
  final bool hasUnreadSpecifiedNotes;
  final bool hasUnreadMentions;
  final bool hasUnreadAnnouncement;
  final List<Announcement> unreadAnnouncements;
  final bool hasUnreadAntenna;
  final bool hasUnreadChannel;
  final bool hasUnreadChatMessages;
  final bool hasUnreadNotification;
  final bool hasPendingReceivedFollowRequest;
  final num unreadNotificationsCount;
  final List<List<String>> mutedWords;
  final List<List<String>> hardMutedWords;
  final List<String> mutedInstances;
  final AdminAccountsCreateResponseNotificationRecieveConfig
  notificationRecieveConfig;
  final List<String> emailNotificationTypes;
  final List<Achievement> achievements;
  final num loggedInDays;
  final RolePolicies policies;
  final String? email;
  final bool? emailVerified;
  final List<AdminAccountsCreateResponseSecurityKeysListItem>? securityKeysList;
  final String token;

  factory AdminAccountsCreateResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminAccountsCreateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AdminAccountsCreateResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminAccountsDeleteRequest {
  const AdminAccountsDeleteRequest({required this.userId});
  final String userId;

  factory AdminAccountsDeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminAccountsDeleteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminAccountsDeleteRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminAccountsFindByEmailRequest {
  const AdminAccountsFindByEmailRequest({required this.email});
  final String email;

  factory AdminAccountsFindByEmailRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminAccountsFindByEmailRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminAccountsFindByEmailRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminAdCreateRequest {
  const AdminAdCreateRequest({
    required this.url,
    required this.memo,
    required this.place,
    required this.priority,
    required this.ratio,
    required this.expiresAt,
    required this.startsAt,
    required this.imageUrl,
    required this.dayOfWeek,
    this.isSensitive,
  });
  final String url;
  final String memo;
  final String place;
  final String priority;
  final int ratio;
  final int expiresAt;
  final int startsAt;
  final String imageUrl;
  final int dayOfWeek;
  final bool? isSensitive;

  factory AdminAdCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminAdCreateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminAdCreateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminAdDeleteRequest {
  const AdminAdDeleteRequest({required this.id});
  final String id;

  factory AdminAdDeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminAdDeleteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminAdDeleteRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminAdListRequest {
  const AdminAdListRequest({
    this.limit = 10,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    this.publishing,
  });
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final bool? publishing;

  factory AdminAdListRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminAdListRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminAdListRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminAdUpdateRequest {
  const AdminAdUpdateRequest({
    required this.id,
    this.memo,
    this.url,
    this.imageUrl,
    this.place,
    this.priority,
    this.ratio,
    this.expiresAt,
    this.startsAt,
    this.dayOfWeek,
    this.isSensitive,
  });
  final String id;
  final String? memo;
  final String? url;
  final String? imageUrl;
  final String? place;
  final String? priority;
  final int? ratio;
  final int? expiresAt;
  final int? startsAt;
  final int? dayOfWeek;
  final bool? isSensitive;

  factory AdminAdUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminAdUpdateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminAdUpdateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminAnnouncementsCreateRequest {
  const AdminAnnouncementsCreateRequest({
    required this.title,
    required this.text,
    @JsonKey(name: 'imageUrl', includeIfNull: true) required this.imageUrl,
    this.icon = AdminAnnouncementsCreateRequestIcon.info,
    this.display = AdminAnnouncementsCreateRequestDisplay.normal,
    this.forExistingUsers = false,
    this.silence = false,
    this.needConfirmationToRead = false,
    this.userId,
  });
  final String title;
  final String text;
  final String? imageUrl;
  final AdminAnnouncementsCreateRequestIcon icon;
  final AdminAnnouncementsCreateRequestDisplay display;
  final bool forExistingUsers;
  final bool silence;
  final bool needConfirmationToRead;
  final String? userId;

  factory AdminAnnouncementsCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminAnnouncementsCreateRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminAnnouncementsCreateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminAnnouncementsCreateResponse {
  const AdminAnnouncementsCreateResponse({
    required this.id,
    required this.createdAt,
    @JsonKey(name: 'updatedAt', includeIfNull: true) required this.updatedAt,
    required this.title,
    required this.text,
    @JsonKey(name: 'imageUrl', includeIfNull: true) required this.imageUrl,
  });
  final String id;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final String title;
  final String text;
  final String? imageUrl;

  factory AdminAnnouncementsCreateResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminAnnouncementsCreateResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminAnnouncementsCreateResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminAnnouncementsDeleteRequest {
  const AdminAnnouncementsDeleteRequest({required this.id});
  final String id;

  factory AdminAnnouncementsDeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminAnnouncementsDeleteRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminAnnouncementsDeleteRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminAnnouncementsListRequest {
  const AdminAnnouncementsListRequest({
    this.limit = 10,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    this.userId,
    this.status = AdminAnnouncementsListRequestStatus.active,
  });
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final String? userId;
  final AdminAnnouncementsListRequestStatus status;

  factory AdminAnnouncementsListRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminAnnouncementsListRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminAnnouncementsListRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminAnnouncementsListResponseItem {
  const AdminAnnouncementsListResponseItem({
    required this.id,
    required this.createdAt,
    @JsonKey(name: 'updatedAt', includeIfNull: true) required this.updatedAt,
    required this.text,
    required this.title,
    required this.icon,
    required this.display,
    required this.isActive,
    required this.forExistingUsers,
    required this.silence,
    required this.needConfirmationToRead,
    @JsonKey(name: 'userId', includeIfNull: true) required this.userId,
    @JsonKey(name: 'imageUrl', includeIfNull: true) required this.imageUrl,
    required this.reads,
  });
  final String id;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final String text;
  final String title;
  final AdminAnnouncementsListResponseItemIcon icon;
  final AdminAnnouncementsListResponseItemDisplay display;
  final bool isActive;
  final bool forExistingUsers;
  final bool silence;
  final bool needConfirmationToRead;
  final String? userId;
  final String? imageUrl;
  final num reads;

  factory AdminAnnouncementsListResponseItem.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminAnnouncementsListResponseItemFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminAnnouncementsListResponseItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminAnnouncementsUpdateRequest {
  const AdminAnnouncementsUpdateRequest({
    required this.id,
    this.title,
    this.text,
    this.imageUrl,
    this.icon,
    this.display,
    this.forExistingUsers,
    this.silence,
    this.needConfirmationToRead,
    this.isActive,
  });
  final String id;
  final String? title;
  final String? text;
  final String? imageUrl;
  final AdminAnnouncementsUpdateRequestIcon? icon;
  final AdminAnnouncementsUpdateRequestDisplay? display;
  final bool? forExistingUsers;
  final bool? silence;
  final bool? needConfirmationToRead;
  final bool? isActive;

  factory AdminAnnouncementsUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminAnnouncementsUpdateRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminAnnouncementsUpdateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminAvatarDecorationsCreateRequest {
  const AdminAvatarDecorationsCreateRequest({
    required this.name,
    required this.description,
    required this.url,
    this.roleIdsThatCanBeUsedThisDecoration,
    this.category,
  });
  final String name;
  final String description;
  final String url;
  final List<String>? roleIdsThatCanBeUsedThisDecoration;
  final String? category;

  factory AdminAvatarDecorationsCreateRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminAvatarDecorationsCreateRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminAvatarDecorationsCreateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminAvatarDecorationsCreateResponse {
  const AdminAvatarDecorationsCreateResponse({
    required this.id,
    required this.createdAt,
    @JsonKey(name: 'updatedAt', includeIfNull: true) required this.updatedAt,
    required this.name,
    required this.description,
    required this.url,
    required this.roleIdsThatCanBeUsedThisDecoration,
    @JsonKey(name: 'category', includeIfNull: true) required this.category,
  });
  final String id;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final String name;
  final String description;
  final String url;
  final List<String> roleIdsThatCanBeUsedThisDecoration;
  final String? category;

  factory AdminAvatarDecorationsCreateResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminAvatarDecorationsCreateResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminAvatarDecorationsCreateResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminAvatarDecorationsDeleteRequest {
  const AdminAvatarDecorationsDeleteRequest({required this.id});
  final String id;

  factory AdminAvatarDecorationsDeleteRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminAvatarDecorationsDeleteRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminAvatarDecorationsDeleteRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminAvatarDecorationsListRequest {
  const AdminAvatarDecorationsListRequest({
    this.limit = 10,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    this.userId,
  });
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final String? userId;

  factory AdminAvatarDecorationsListRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminAvatarDecorationsListRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminAvatarDecorationsListRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminAvatarDecorationsListResponseItem {
  const AdminAvatarDecorationsListResponseItem({
    required this.id,
    required this.createdAt,
    @JsonKey(name: 'updatedAt', includeIfNull: true) required this.updatedAt,
    required this.name,
    required this.description,
    required this.url,
    required this.roleIdsThatCanBeUsedThisDecoration,
    this.category,
  });
  final String id;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final String name;
  final String description;
  final String url;
  final List<String> roleIdsThatCanBeUsedThisDecoration;
  final String? category;

  factory AdminAvatarDecorationsListResponseItem.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminAvatarDecorationsListResponseItemFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminAvatarDecorationsListResponseItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminAvatarDecorationsUpdateRequest {
  const AdminAvatarDecorationsUpdateRequest({
    required this.id,
    this.name,
    this.description,
    this.url,
    this.roleIdsThatCanBeUsedThisDecoration,
    this.category,
  });
  final String id;
  final String? name;
  final String? description;
  final String? url;
  final List<String>? roleIdsThatCanBeUsedThisDecoration;
  final String? category;

  factory AdminAvatarDecorationsUpdateRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminAvatarDecorationsUpdateRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminAvatarDecorationsUpdateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminCaptchaCurrentResponseHcaptcha {
  const AdminCaptchaCurrentResponseHcaptcha({
    @JsonKey(name: 'siteKey', includeIfNull: true) required this.siteKey,
    @JsonKey(name: 'secretKey', includeIfNull: true) required this.secretKey,
  });
  final String? siteKey;
  final String? secretKey;

  factory AdminCaptchaCurrentResponseHcaptcha.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminCaptchaCurrentResponseHcaptchaFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminCaptchaCurrentResponseHcaptchaToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminCaptchaCurrentResponseMcaptcha {
  const AdminCaptchaCurrentResponseMcaptcha({
    @JsonKey(name: 'siteKey', includeIfNull: true) required this.siteKey,
    @JsonKey(name: 'secretKey', includeIfNull: true) required this.secretKey,
    @JsonKey(name: 'instanceUrl', includeIfNull: true)
    required this.instanceUrl,
  });
  final String? siteKey;
  final String? secretKey;
  final String? instanceUrl;

  factory AdminCaptchaCurrentResponseMcaptcha.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminCaptchaCurrentResponseMcaptchaFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminCaptchaCurrentResponseMcaptchaToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminCaptchaCurrentResponseRecaptcha {
  const AdminCaptchaCurrentResponseRecaptcha({
    @JsonKey(name: 'siteKey', includeIfNull: true) required this.siteKey,
    @JsonKey(name: 'secretKey', includeIfNull: true) required this.secretKey,
  });
  final String? siteKey;
  final String? secretKey;

  factory AdminCaptchaCurrentResponseRecaptcha.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminCaptchaCurrentResponseRecaptchaFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminCaptchaCurrentResponseRecaptchaToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminCaptchaCurrentResponseTurnstile {
  const AdminCaptchaCurrentResponseTurnstile({
    @JsonKey(name: 'siteKey', includeIfNull: true) required this.siteKey,
    @JsonKey(name: 'secretKey', includeIfNull: true) required this.secretKey,
  });
  final String? siteKey;
  final String? secretKey;

  factory AdminCaptchaCurrentResponseTurnstile.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminCaptchaCurrentResponseTurnstileFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminCaptchaCurrentResponseTurnstileToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminCaptchaCurrentResponse {
  const AdminCaptchaCurrentResponse({
    required this.provider,
    required this.hcaptcha,
    required this.mcaptcha,
    required this.recaptcha,
    required this.turnstile,
  });
  final AdminCaptchaCurrentResponseProvider provider;
  final AdminCaptchaCurrentResponseHcaptcha hcaptcha;
  final AdminCaptchaCurrentResponseMcaptcha mcaptcha;
  final AdminCaptchaCurrentResponseRecaptcha recaptcha;
  final AdminCaptchaCurrentResponseTurnstile turnstile;

  factory AdminCaptchaCurrentResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminCaptchaCurrentResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AdminCaptchaCurrentResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminCaptchaSaveRequest {
  const AdminCaptchaSaveRequest({
    required this.provider,
    this.captchaResult,
    this.sitekey,
    this.secret,
    this.instanceUrl,
  });
  final AdminCaptchaSaveRequestProvider provider;
  final String? captchaResult;
  final String? sitekey;
  final String? secret;
  final String? instanceUrl;

  factory AdminCaptchaSaveRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminCaptchaSaveRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminCaptchaSaveRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminDeleteAccountRequest {
  const AdminDeleteAccountRequest({required this.userId});
  final String userId;

  factory AdminDeleteAccountRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminDeleteAccountRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminDeleteAccountRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminDeleteAllFilesOfAUserRequest {
  const AdminDeleteAllFilesOfAUserRequest({required this.userId});
  final String userId;

  factory AdminDeleteAllFilesOfAUserRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminDeleteAllFilesOfAUserRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminDeleteAllFilesOfAUserRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminDriveFilesRequest {
  const AdminDriveFilesRequest({
    this.limit = 10,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    this.userId,
    this.type,
    this.origin = AdminDriveFilesRequestOrigin.local,
    this.hostname,
  });
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final String? userId;
  final String? type;
  final AdminDriveFilesRequestOrigin origin;
  final String? hostname;

  factory AdminDriveFilesRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminDriveFilesRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminDriveFilesRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminDriveShowFileRequestByFileId extends AdminDriveShowFileRequest {
  const AdminDriveShowFileRequestByFileId({required this.fileId}) : super();
  final String fileId;

  factory AdminDriveShowFileRequestByFileId.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminDriveShowFileRequestByFileIdFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AdminDriveShowFileRequestByFileIdToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminDriveShowFileRequestByUrl extends AdminDriveShowFileRequest {
  const AdminDriveShowFileRequestByUrl({required this.url}) : super();
  final String url;

  factory AdminDriveShowFileRequestByUrl.fromJson(Map<String, dynamic> json) =>
      _$AdminDriveShowFileRequestByUrlFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AdminDriveShowFileRequestByUrlToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminDriveShowFileResponseProperties {
  const AdminDriveShowFileResponseProperties({
    this.width,
    this.height,
    this.orientation,
    this.avgColor,
  });
  final num? width;
  final num? height;
  final num? orientation;
  final String? avgColor;

  factory AdminDriveShowFileResponseProperties.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminDriveShowFileResponsePropertiesFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminDriveShowFileResponsePropertiesToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminDriveShowFileResponse {
  const AdminDriveShowFileResponse({
    required this.id,
    required this.createdAt,
    @JsonKey(name: 'userId', includeIfNull: true) required this.userId,
    @JsonKey(name: 'userHost', includeIfNull: true) required this.userHost,
    required this.md5,
    required this.name,
    required this.type,
    required this.size,
    @JsonKey(name: 'comment', includeIfNull: true) required this.comment,
    @JsonKey(name: 'blurhash', includeIfNull: true) required this.blurhash,
    required this.properties,
    @JsonKey(name: 'storedInternal', includeIfNull: true)
    required this.storedInternal,
    @JsonKey(name: 'url', includeIfNull: true) required this.url,
    @JsonKey(name: 'thumbnailUrl', includeIfNull: true)
    required this.thumbnailUrl,
    @JsonKey(name: 'webpublicUrl', includeIfNull: true)
    required this.webpublicUrl,
    @JsonKey(name: 'accessKey', includeIfNull: true) required this.accessKey,
    @JsonKey(name: 'thumbnailAccessKey', includeIfNull: true)
    required this.thumbnailAccessKey,
    @JsonKey(name: 'webpublicAccessKey', includeIfNull: true)
    required this.webpublicAccessKey,
    @JsonKey(name: 'uri', includeIfNull: true) required this.uri,
    @JsonKey(name: 'src', includeIfNull: true) required this.src,
    @JsonKey(name: 'folderId', includeIfNull: true) required this.folderId,
    required this.isSensitive,
    required this.isLink,
    required this.maybeSensitive,
    required this.maybePorn,
    @JsonKey(name: 'requestIp', includeIfNull: true) required this.requestIp,
    @JsonKey(name: 'requestHeaders', includeIfNull: true)
    required this.requestHeaders,
  });
  final String id;
  final DateTime createdAt;
  final String? userId;
  final String? userHost;
  final String md5;
  final String name;
  final String type;
  final num size;
  final String? comment;
  final String? blurhash;
  final AdminDriveShowFileResponseProperties properties;
  final bool? storedInternal;
  final String? url;
  final String? thumbnailUrl;
  final String? webpublicUrl;
  final String? accessKey;
  final String? thumbnailAccessKey;
  final String? webpublicAccessKey;
  final String? uri;
  final String? src;
  final String? folderId;
  final bool isSensitive;
  final bool isLink;
  final bool maybeSensitive;
  final bool maybePorn;
  final String? requestIp;
  final JsonMap? requestHeaders;

  factory AdminDriveShowFileResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminDriveShowFileResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AdminDriveShowFileResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminEmojiAddRequest {
  const AdminEmojiAddRequest({
    required this.name,
    required this.fileId,
    this.category,
    this.aliases,
    this.license,
    this.isSensitive,
    this.localOnly,
    this.roleIdsThatCanBeUsedThisEmojiAsReaction,
  });
  final String name;
  final String fileId;
  final String? category;
  final List<String>? aliases;
  final String? license;
  final bool? isSensitive;
  final bool? localOnly;
  final List<String>? roleIdsThatCanBeUsedThisEmojiAsReaction;

  factory AdminEmojiAddRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminEmojiAddRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminEmojiAddRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminEmojiAddAliasesBulkRequest {
  const AdminEmojiAddAliasesBulkRequest({
    required this.ids,
    required this.aliases,
  });
  final List<String> ids;
  final List<String> aliases;

  factory AdminEmojiAddAliasesBulkRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminEmojiAddAliasesBulkRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminEmojiAddAliasesBulkRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminEmojiCopyRequest {
  const AdminEmojiCopyRequest({required this.emojiId});
  final String emojiId;

  factory AdminEmojiCopyRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminEmojiCopyRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminEmojiCopyRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminEmojiCopyResponse {
  const AdminEmojiCopyResponse({required this.id});
  final String id;

  factory AdminEmojiCopyResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminEmojiCopyResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AdminEmojiCopyResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminEmojiDeleteRequest {
  const AdminEmojiDeleteRequest({required this.id});
  final String id;

  factory AdminEmojiDeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminEmojiDeleteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminEmojiDeleteRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminEmojiDeleteBulkRequest {
  const AdminEmojiDeleteBulkRequest({required this.ids});
  final List<String> ids;

  factory AdminEmojiDeleteBulkRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminEmojiDeleteBulkRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminEmojiDeleteBulkRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminEmojiImportZipRequest {
  const AdminEmojiImportZipRequest({required this.fileId});
  final String fileId;

  factory AdminEmojiImportZipRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminEmojiImportZipRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminEmojiImportZipRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminEmojiListRequest {
  const AdminEmojiListRequest({
    this.query,
    this.limit = 10,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
  });
  final String? query;
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;

  factory AdminEmojiListRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminEmojiListRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminEmojiListRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminEmojiListRemoteRequest {
  const AdminEmojiListRemoteRequest({
    this.query,
    this.host,
    this.limit = 10,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
  });
  final String? query;
  final String? host;
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;

  factory AdminEmojiListRemoteRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminEmojiListRemoteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminEmojiListRemoteRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminEmojiRemoveAliasesBulkRequest {
  const AdminEmojiRemoveAliasesBulkRequest({
    required this.ids,
    required this.aliases,
  });
  final List<String> ids;
  final List<String> aliases;

  factory AdminEmojiRemoveAliasesBulkRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminEmojiRemoveAliasesBulkRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminEmojiRemoveAliasesBulkRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminEmojiSetAliasesBulkRequest {
  const AdminEmojiSetAliasesBulkRequest({
    required this.ids,
    required this.aliases,
  });
  final List<String> ids;
  final List<String> aliases;

  factory AdminEmojiSetAliasesBulkRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminEmojiSetAliasesBulkRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminEmojiSetAliasesBulkRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminEmojiSetCategoryBulkRequest {
  const AdminEmojiSetCategoryBulkRequest({required this.ids, this.category});
  final List<String> ids;
  final String? category;

  factory AdminEmojiSetCategoryBulkRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminEmojiSetCategoryBulkRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminEmojiSetCategoryBulkRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminEmojiSetLicenseBulkRequest {
  const AdminEmojiSetLicenseBulkRequest({required this.ids, this.license});
  final List<String> ids;
  final String? license;

  factory AdminEmojiSetLicenseBulkRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminEmojiSetLicenseBulkRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminEmojiSetLicenseBulkRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminEmojiUpdateRequestById extends AdminEmojiUpdateRequest {
  const AdminEmojiUpdateRequestById({
    this.fileId,
    this.category,
    this.aliases,
    this.license,
    this.isSensitive,
    this.localOnly,
    this.roleIdsThatCanBeUsedThisEmojiAsReaction,
    required this.id,
  }) : super();
  final String? fileId;
  final String? category;
  final List<String>? aliases;
  final String? license;
  final bool? isSensitive;
  final bool? localOnly;
  final List<String>? roleIdsThatCanBeUsedThisEmojiAsReaction;
  final String id;

  factory AdminEmojiUpdateRequestById.fromJson(Map<String, dynamic> json) =>
      _$AdminEmojiUpdateRequestByIdFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AdminEmojiUpdateRequestByIdToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminEmojiUpdateRequestByName extends AdminEmojiUpdateRequest {
  const AdminEmojiUpdateRequestByName({
    this.fileId,
    this.category,
    this.aliases,
    this.license,
    this.isSensitive,
    this.localOnly,
    this.roleIdsThatCanBeUsedThisEmojiAsReaction,
    required this.name,
  }) : super();
  final String? fileId;
  final String? category;
  final List<String>? aliases;
  final String? license;
  final bool? isSensitive;
  final bool? localOnly;
  final List<String>? roleIdsThatCanBeUsedThisEmojiAsReaction;
  final String name;

  factory AdminEmojiUpdateRequestByName.fromJson(Map<String, dynamic> json) =>
      _$AdminEmojiUpdateRequestByNameFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AdminEmojiUpdateRequestByNameToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminFederationDeleteAllFilesRequest {
  const AdminFederationDeleteAllFilesRequest({required this.host});
  final String host;

  factory AdminFederationDeleteAllFilesRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminFederationDeleteAllFilesRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminFederationDeleteAllFilesRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminFederationRefreshRemoteInstanceMetadataRequest {
  const AdminFederationRefreshRemoteInstanceMetadataRequest({
    required this.host,
  });
  final String host;

  factory AdminFederationRefreshRemoteInstanceMetadataRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminFederationRefreshRemoteInstanceMetadataRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminFederationRefreshRemoteInstanceMetadataRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminFederationRemoveAllFollowingRequest {
  const AdminFederationRemoveAllFollowingRequest({required this.host});
  final String host;

  factory AdminFederationRemoveAllFollowingRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminFederationRemoveAllFollowingRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminFederationRemoveAllFollowingRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminFederationUpdateInstanceRequest {
  const AdminFederationUpdateInstanceRequest({
    required this.host,
    this.isSuspended,
    this.moderationNote,
  });
  final String host;
  final bool? isSuspended;
  final String? moderationNote;

  factory AdminFederationUpdateInstanceRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminFederationUpdateInstanceRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminFederationUpdateInstanceRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminForwardAbuseUserReportRequest {
  const AdminForwardAbuseUserReportRequest({required this.reportId});
  final String reportId;

  factory AdminForwardAbuseUserReportRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminForwardAbuseUserReportRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminForwardAbuseUserReportRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminGetIndexStatsResponseItem {
  const AdminGetIndexStatsResponseItem({
    required this.tablename,
    required this.indexname,
  });
  final String tablename;
  final String indexname;

  factory AdminGetIndexStatsResponseItem.fromJson(Map<String, dynamic> json) =>
      _$AdminGetIndexStatsResponseItemFromJson(json);

  Map<String, dynamic> toJson() => _$AdminGetIndexStatsResponseItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminGetUserIpsRequest {
  const AdminGetUserIpsRequest({required this.userId});
  final String userId;

  factory AdminGetUserIpsRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminGetUserIpsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminGetUserIpsRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminGetUserIpsResponseItem {
  const AdminGetUserIpsResponseItem({
    required this.ip,
    required this.createdAt,
  });
  final String ip;
  final DateTime createdAt;

  factory AdminGetUserIpsResponseItem.fromJson(Map<String, dynamic> json) =>
      _$AdminGetUserIpsResponseItemFromJson(json);

  Map<String, dynamic> toJson() => _$AdminGetUserIpsResponseItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminInviteCreateRequest {
  const AdminInviteCreateRequest({this.count = 1, this.expiresAt});
  final int count;
  final String? expiresAt;

  factory AdminInviteCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminInviteCreateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminInviteCreateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminInviteListRequest {
  const AdminInviteListRequest({
    this.limit = 30,
    this.offset = 0,
    this.type = AdminInviteListRequestType.all,
    this.sort,
  });
  final int limit;
  final int offset;
  final AdminInviteListRequestType type;
  final AdminInviteListRequestSort? sort;

  factory AdminInviteListRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminInviteListRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminInviteListRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminMetaResponseDeliverSuspendedSoftwareItem {
  const AdminMetaResponseDeliverSuspendedSoftwareItem({
    required this.software,
    required this.versionRange,
  });
  final String software;
  final String versionRange;

  factory AdminMetaResponseDeliverSuspendedSoftwareItem.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminMetaResponseDeliverSuspendedSoftwareItemFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminMetaResponseDeliverSuspendedSoftwareItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminMetaResponse {
  const AdminMetaResponse({
    required this.cacheRemoteFiles,
    required this.cacheRemoteSensitiveFiles,
    required this.emailRequiredForSignup,
    required this.enableHcaptcha,
    @JsonKey(name: 'hcaptchaSiteKey', includeIfNull: true)
    required this.hcaptchaSiteKey,
    required this.enableMcaptcha,
    @JsonKey(name: 'mcaptchaSiteKey', includeIfNull: true)
    required this.mcaptchaSiteKey,
    @JsonKey(name: 'mcaptchaInstanceUrl', includeIfNull: true)
    required this.mcaptchaInstanceUrl,
    required this.enableRecaptcha,
    @JsonKey(name: 'recaptchaSiteKey', includeIfNull: true)
    required this.recaptchaSiteKey,
    required this.enableTurnstile,
    @JsonKey(name: 'turnstileSiteKey', includeIfNull: true)
    required this.turnstileSiteKey,
    required this.enableTestcaptcha,
    @JsonKey(name: 'googleAnalyticsMeasurementId', includeIfNull: true)
    required this.googleAnalyticsMeasurementId,
    @JsonKey(name: 'swPublickey', includeIfNull: true)
    required this.swPublickey,
    @JsonKey(name: 'mascotImageUrl', includeIfNull: true)
    required this.mascotImageUrl,
    @JsonKey(name: 'bannerUrl', includeIfNull: true) required this.bannerUrl,
    @JsonKey(name: 'serverErrorImageUrl', includeIfNull: true)
    required this.serverErrorImageUrl,
    @JsonKey(name: 'infoImageUrl', includeIfNull: true)
    required this.infoImageUrl,
    @JsonKey(name: 'notFoundImageUrl', includeIfNull: true)
    required this.notFoundImageUrl,
    @JsonKey(name: 'iconUrl', includeIfNull: true) required this.iconUrl,
    @JsonKey(name: 'app192IconUrl', includeIfNull: true)
    required this.app192IconUrl,
    @JsonKey(name: 'app512IconUrl', includeIfNull: true)
    required this.app512IconUrl,
    required this.enableEmail,
    required this.enableServiceWorker,
    required this.translatorAvailable,
    this.silencedHosts,
    required this.mediaSilencedHosts,
    required this.pinnedUsers,
    required this.hiddenTags,
    required this.blockedHosts,
    required this.sensitiveWords,
    required this.prohibitedWords,
    required this.prohibitedWordsForNameOfUser,
    this.bannedEmailDomains,
    required this.preservedUsernames,
    @JsonKey(name: 'hcaptchaSecretKey', includeIfNull: true)
    required this.hcaptchaSecretKey,
    @JsonKey(name: 'mcaptchaSecretKey', includeIfNull: true)
    required this.mcaptchaSecretKey,
    @JsonKey(name: 'recaptchaSecretKey', includeIfNull: true)
    required this.recaptchaSecretKey,
    @JsonKey(name: 'turnstileSecretKey', includeIfNull: true)
    required this.turnstileSecretKey,
    required this.sensitiveMediaDetection,
    required this.sensitiveMediaDetectionSensitivity,
    required this.setSensitiveFlagAutomatically,
    required this.enableSensitiveMediaDetectionForVideos,
    @JsonKey(name: 'sensitiveMediaDetectionApiUrl', includeIfNull: true)
    required this.sensitiveMediaDetectionApiUrl,
    @JsonKey(name: 'sensitiveMediaDetectionApiKey', includeIfNull: true)
    required this.sensitiveMediaDetectionApiKey,
    required this.sensitiveMediaDetectionTimeout,
    required this.sensitiveMediaDetectionMaxImagesPerRequest,
    required this.proxyAccountId,
    @JsonKey(name: 'email', includeIfNull: true) required this.email,
    required this.smtpSecure,
    @JsonKey(name: 'smtpHost', includeIfNull: true) required this.smtpHost,
    @JsonKey(name: 'smtpPort', includeIfNull: true) required this.smtpPort,
    @JsonKey(name: 'smtpUser', includeIfNull: true) required this.smtpUser,
    @JsonKey(name: 'smtpPass', includeIfNull: true) required this.smtpPass,
    @JsonKey(name: 'swPrivateKey', includeIfNull: true)
    required this.swPrivateKey,
    required this.useObjectStorage,
    @JsonKey(name: 'objectStorageBaseUrl', includeIfNull: true)
    required this.objectStorageBaseUrl,
    @JsonKey(name: 'objectStorageBucket', includeIfNull: true)
    required this.objectStorageBucket,
    @JsonKey(name: 'objectStoragePrefix', includeIfNull: true)
    required this.objectStoragePrefix,
    @JsonKey(name: 'objectStorageEndpoint', includeIfNull: true)
    required this.objectStorageEndpoint,
    @JsonKey(name: 'objectStorageRegion', includeIfNull: true)
    required this.objectStorageRegion,
    @JsonKey(name: 'objectStoragePort', includeIfNull: true)
    required this.objectStoragePort,
    @JsonKey(name: 'objectStorageAccessKey', includeIfNull: true)
    required this.objectStorageAccessKey,
    @JsonKey(name: 'objectStorageSecretKey', includeIfNull: true)
    required this.objectStorageSecretKey,
    required this.objectStorageUseSSL,
    required this.objectStorageUseProxy,
    required this.objectStorageSetPublicRead,
    required this.enableIpLogging,
    required this.enableActiveEmailValidation,
    required this.enableVerifymailApi,
    @JsonKey(name: 'verifymailAuthKey', includeIfNull: true)
    required this.verifymailAuthKey,
    required this.enableTruemailApi,
    @JsonKey(name: 'truemailInstance', includeIfNull: true)
    required this.truemailInstance,
    @JsonKey(name: 'truemailAuthKey', includeIfNull: true)
    required this.truemailAuthKey,
    required this.enableChartsForRemoteUser,
    required this.enableChartsForFederatedInstances,
    required this.enableStatsForFederatedInstances,
    required this.enableServerMachineStats,
    required this.enableIdenticonGeneration,
    required this.manifestJsonOverride,
    required this.policies,
    required this.enableFanoutTimeline,
    required this.enableFanoutTimelineDbFallback,
    required this.perLocalUserUserTimelineCacheMax,
    required this.perRemoteUserUserTimelineCacheMax,
    required this.perUserHomeTimelineCacheMax,
    required this.perUserListTimelineCacheMax,
    required this.enableReactionsBuffering,
    required this.notesPerOneAd,
    @JsonKey(name: 'backgroundImageUrl', includeIfNull: true)
    required this.backgroundImageUrl,
    @JsonKey(name: 'deeplAuthKey', includeIfNull: true)
    required this.deeplAuthKey,
    required this.deeplIsPro,
    @JsonKey(name: 'defaultDarkTheme', includeIfNull: true)
    required this.defaultDarkTheme,
    @JsonKey(name: 'defaultLightTheme', includeIfNull: true)
    required this.defaultLightTheme,
    required this.clientOptions,
    @JsonKey(name: 'description', includeIfNull: true)
    required this.description,
    required this.disableRegistration,
    @JsonKey(name: 'impressumUrl', includeIfNull: true)
    required this.impressumUrl,
    @JsonKey(name: 'maintainerEmail', includeIfNull: true)
    required this.maintainerEmail,
    @JsonKey(name: 'maintainerName', includeIfNull: true)
    required this.maintainerName,
    @JsonKey(name: 'name', includeIfNull: true) required this.name,
    @JsonKey(name: 'shortName', includeIfNull: true) required this.shortName,
    required this.objectStorageS3ForcePathStyle,
    @JsonKey(name: 'privacyPolicyUrl', includeIfNull: true)
    required this.privacyPolicyUrl,
    @JsonKey(name: 'inquiryUrl', includeIfNull: true) required this.inquiryUrl,
    @JsonKey(name: 'repositoryUrl', includeIfNull: true)
    required this.repositoryUrl,
    @JsonKey(name: 'feedbackUrl', includeIfNull: true)
    required this.feedbackUrl,
    @JsonKey(name: 'summalyProxy', includeIfNull: true)
    required this.summalyProxy,
    @JsonKey(name: 'themeColor', includeIfNull: true) required this.themeColor,
    @JsonKey(name: 'tosUrl', includeIfNull: true) required this.tosUrl,
    required this.uri,
    required this.version,
    required this.urlPreviewEnabled,
    required this.urlPreviewAllowRedirect,
    required this.urlPreviewTimeout,
    required this.urlPreviewMaximumContentLength,
    required this.urlPreviewRequireContentLength,
    @JsonKey(name: 'urlPreviewUserAgent', includeIfNull: true)
    required this.urlPreviewUserAgent,
    @JsonKey(name: 'urlPreviewSummaryProxyUrl', includeIfNull: true)
    required this.urlPreviewSummaryProxyUrl,
    required this.urlPreviewSensitiveList,
    required this.federation,
    required this.federationHosts,
    required this.deliverSuspendedSoftware,
    required this.singleUserMode,
    required this.ugcVisibilityForVisitor,
    required this.proxyRemoteFiles,
    required this.signToActivityPubGet,
    required this.allowExternalApRedirect,
    required this.enableRemoteNotesCleaning,
    required this.remoteNotesCleaningExpiryDaysForEachNotes,
    required this.remoteNotesCleaningMaxProcessingDurationInMinutes,
    required this.showRoleBadgesOfRemoteUsers,
  });
  final bool cacheRemoteFiles;
  final bool cacheRemoteSensitiveFiles;
  final bool emailRequiredForSignup;
  final bool enableHcaptcha;
  final String? hcaptchaSiteKey;
  final bool enableMcaptcha;
  final String? mcaptchaSiteKey;
  final String? mcaptchaInstanceUrl;
  final bool enableRecaptcha;
  final String? recaptchaSiteKey;
  final bool enableTurnstile;
  final String? turnstileSiteKey;
  final bool enableTestcaptcha;
  final String? googleAnalyticsMeasurementId;
  final String? swPublickey;
  final String? mascotImageUrl;
  final String? bannerUrl;
  final String? serverErrorImageUrl;
  final String? infoImageUrl;
  final String? notFoundImageUrl;
  final String? iconUrl;
  final String? app192IconUrl;
  final String? app512IconUrl;
  final bool enableEmail;
  final bool enableServiceWorker;
  final bool translatorAvailable;
  final List<String>? silencedHosts;
  final List<String> mediaSilencedHosts;
  final List<String> pinnedUsers;
  final List<String> hiddenTags;
  final List<String> blockedHosts;
  final List<String> sensitiveWords;
  final List<String> prohibitedWords;
  final List<String> prohibitedWordsForNameOfUser;
  final List<String>? bannedEmailDomains;
  final List<String> preservedUsernames;
  final String? hcaptchaSecretKey;
  final String? mcaptchaSecretKey;
  final String? recaptchaSecretKey;
  final String? turnstileSecretKey;
  final AdminMetaResponseSensitiveMediaDetection sensitiveMediaDetection;
  final AdminMetaResponseSensitiveMediaDetectionSensitivity
  sensitiveMediaDetectionSensitivity;
  final bool setSensitiveFlagAutomatically;
  final bool enableSensitiveMediaDetectionForVideos;
  final String? sensitiveMediaDetectionApiUrl;
  final String? sensitiveMediaDetectionApiKey;
  final num sensitiveMediaDetectionTimeout;
  final num sensitiveMediaDetectionMaxImagesPerRequest;
  final String proxyAccountId;
  final String? email;
  final bool smtpSecure;
  final String? smtpHost;
  final num? smtpPort;
  final String? smtpUser;
  final String? smtpPass;
  final String? swPrivateKey;
  final bool useObjectStorage;
  final String? objectStorageBaseUrl;
  final String? objectStorageBucket;
  final String? objectStoragePrefix;
  final String? objectStorageEndpoint;
  final String? objectStorageRegion;
  final num? objectStoragePort;
  final String? objectStorageAccessKey;
  final String? objectStorageSecretKey;
  final bool objectStorageUseSSL;
  final bool objectStorageUseProxy;
  final bool objectStorageSetPublicRead;
  final bool enableIpLogging;
  final bool enableActiveEmailValidation;
  final bool enableVerifymailApi;
  final String? verifymailAuthKey;
  final bool enableTruemailApi;
  final String? truemailInstance;
  final String? truemailAuthKey;
  final bool enableChartsForRemoteUser;
  final bool enableChartsForFederatedInstances;
  final bool enableStatsForFederatedInstances;
  final bool enableServerMachineStats;
  final bool enableIdenticonGeneration;
  final String manifestJsonOverride;
  final JsonMap policies;
  final bool enableFanoutTimeline;
  final bool enableFanoutTimelineDbFallback;
  final num perLocalUserUserTimelineCacheMax;
  final num perRemoteUserUserTimelineCacheMax;
  final num perUserHomeTimelineCacheMax;
  final num perUserListTimelineCacheMax;
  final bool enableReactionsBuffering;
  final num notesPerOneAd;
  final String? backgroundImageUrl;
  final String? deeplAuthKey;
  final bool deeplIsPro;
  final String? defaultDarkTheme;
  final String? defaultLightTheme;
  final MetaClientOptions clientOptions;
  final String? description;
  final bool disableRegistration;
  final String? impressumUrl;
  final String? maintainerEmail;
  final String? maintainerName;
  final String? name;
  final String? shortName;
  final bool objectStorageS3ForcePathStyle;
  final String? privacyPolicyUrl;
  final String? inquiryUrl;
  final String? repositoryUrl;
  final String? feedbackUrl;
  final String? summalyProxy;
  final String? themeColor;
  final String? tosUrl;
  final String uri;
  final String version;
  final bool urlPreviewEnabled;
  final bool urlPreviewAllowRedirect;
  final num urlPreviewTimeout;
  final num urlPreviewMaximumContentLength;
  final bool urlPreviewRequireContentLength;
  final String? urlPreviewUserAgent;
  final String? urlPreviewSummaryProxyUrl;
  final List<String> urlPreviewSensitiveList;
  final AdminMetaResponseFederation federation;
  final List<String> federationHosts;
  final List<AdminMetaResponseDeliverSuspendedSoftwareItem>
  deliverSuspendedSoftware;
  final bool singleUserMode;
  final AdminMetaResponseUgcVisibilityForVisitor ugcVisibilityForVisitor;
  final bool proxyRemoteFiles;
  final bool signToActivityPubGet;
  final bool allowExternalApRedirect;
  final bool enableRemoteNotesCleaning;
  final num remoteNotesCleaningExpiryDaysForEachNotes;
  final num remoteNotesCleaningMaxProcessingDurationInMinutes;
  final bool showRoleBadgesOfRemoteUsers;

  factory AdminMetaResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminMetaResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AdminMetaResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminPromoCreateRequest {
  const AdminPromoCreateRequest({
    required this.noteId,
    required this.expiresAt,
  });
  final String noteId;
  final int expiresAt;

  factory AdminPromoCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminPromoCreateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminPromoCreateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminQueueClearRequest {
  const AdminQueueClearRequest({required this.queue, required this.state});
  final AdminQueueClearRequestQueue queue;
  final AdminQueueClearRequestState state;

  factory AdminQueueClearRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminQueueClearRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminQueueClearRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminQueueJobsRequest {
  const AdminQueueJobsRequest({
    required this.queue,
    required this.state,
    this.search,
  });
  final AdminQueueJobsRequestQueue queue;
  final List<AdminQueueJobsRequestStateItem> state;
  final String? search;

  factory AdminQueueJobsRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminQueueJobsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminQueueJobsRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminQueuePauseRequest {
  const AdminQueuePauseRequest({required this.queue});
  final AdminQueuePauseRequestQueue queue;

  factory AdminQueuePauseRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminQueuePauseRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminQueuePauseRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminQueuePromoteJobsRequest {
  const AdminQueuePromoteJobsRequest({required this.queue});
  final AdminQueuePromoteJobsRequestQueue queue;

  factory AdminQueuePromoteJobsRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminQueuePromoteJobsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminQueuePromoteJobsRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminQueueQueueStatsRequest {
  const AdminQueueQueueStatsRequest({required this.queue});
  final AdminQueueQueueStatsRequestQueue queue;

  factory AdminQueueQueueStatsRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminQueueQueueStatsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminQueueQueueStatsRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminQueueQueueStatsResponseMetrics {
  const AdminQueueQueueStatsResponseMetrics({
    required this.completed,
    required this.failed,
  });
  final QueueMetrics completed;
  final QueueMetrics failed;

  factory AdminQueueQueueStatsResponseMetrics.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminQueueQueueStatsResponseMetricsFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminQueueQueueStatsResponseMetricsToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminQueueQueueStatsResponseDbMemory {
  const AdminQueueQueueStatsResponseDbMemory({
    required this.total,
    required this.used,
    required this.fragmentationRatio,
    required this.peak,
  });
  final num total;
  final num used;
  final num fragmentationRatio;
  final num peak;

  factory AdminQueueQueueStatsResponseDbMemory.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminQueueQueueStatsResponseDbMemoryFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminQueueQueueStatsResponseDbMemoryToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminQueueQueueStatsResponseDbClients {
  const AdminQueueQueueStatsResponseDbClients({
    required this.blocked,
    required this.connected,
  });
  final num blocked;
  final num connected;

  factory AdminQueueQueueStatsResponseDbClients.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminQueueQueueStatsResponseDbClientsFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminQueueQueueStatsResponseDbClientsToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminQueueQueueStatsResponseDb {
  const AdminQueueQueueStatsResponseDb({
    required this.version,
    required this.mode,
    required this.runId,
    required this.processId,
    required this.port,
    required this.os,
    required this.uptime,
    required this.memory,
    required this.clients,
  });
  final String version;
  final AdminQueueQueueStatsResponseDbMode mode;
  final String runId;
  final String processId;
  final num port;
  final String os;
  final num uptime;
  final AdminQueueQueueStatsResponseDbMemory memory;
  final AdminQueueQueueStatsResponseDbClients clients;

  factory AdminQueueQueueStatsResponseDb.fromJson(Map<String, dynamic> json) =>
      _$AdminQueueQueueStatsResponseDbFromJson(json);

  Map<String, dynamic> toJson() => _$AdminQueueQueueStatsResponseDbToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminQueueQueueStatsResponse {
  const AdminQueueQueueStatsResponse({
    required this.name,
    required this.qualifiedName,
    required this.counts,
    required this.isPaused,
    required this.metrics,
    required this.db,
  });
  final AdminQueueQueueStatsResponseName name;
  final String qualifiedName;
  final Map<String, num> counts;
  final bool isPaused;
  final AdminQueueQueueStatsResponseMetrics metrics;
  final AdminQueueQueueStatsResponseDb db;

  factory AdminQueueQueueStatsResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminQueueQueueStatsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AdminQueueQueueStatsResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminQueueQueuesResponseItemMetrics {
  const AdminQueueQueuesResponseItemMetrics({
    required this.completed,
    required this.failed,
  });
  final QueueMetrics completed;
  final QueueMetrics failed;

  factory AdminQueueQueuesResponseItemMetrics.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminQueueQueuesResponseItemMetricsFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminQueueQueuesResponseItemMetricsToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminQueueQueuesResponseItem {
  const AdminQueueQueuesResponseItem({
    required this.name,
    required this.counts,
    required this.isPaused,
    required this.metrics,
  });
  final AdminQueueQueuesResponseItemName name;
  final Map<String, num> counts;
  final bool isPaused;
  final AdminQueueQueuesResponseItemMetrics metrics;

  factory AdminQueueQueuesResponseItem.fromJson(Map<String, dynamic> json) =>
      _$AdminQueueQueuesResponseItemFromJson(json);

  Map<String, dynamic> toJson() => _$AdminQueueQueuesResponseItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminQueueRemoveJobRequest {
  const AdminQueueRemoveJobRequest({required this.queue, required this.jobId});
  final AdminQueueRemoveJobRequestQueue queue;
  final String jobId;

  factory AdminQueueRemoveJobRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminQueueRemoveJobRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminQueueRemoveJobRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminQueueResumeRequest {
  const AdminQueueResumeRequest({required this.queue});
  final AdminQueueResumeRequestQueue queue;

  factory AdminQueueResumeRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminQueueResumeRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminQueueResumeRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminQueueRetryJobRequest {
  const AdminQueueRetryJobRequest({required this.queue, required this.jobId});
  final AdminQueueRetryJobRequestQueue queue;
  final String jobId;

  factory AdminQueueRetryJobRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminQueueRetryJobRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminQueueRetryJobRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminQueueShowJobRequest {
  const AdminQueueShowJobRequest({required this.queue, required this.jobId});
  final AdminQueueShowJobRequestQueue queue;
  final String jobId;

  factory AdminQueueShowJobRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminQueueShowJobRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminQueueShowJobRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminQueueShowJobLogsRequest {
  const AdminQueueShowJobLogsRequest({
    required this.queue,
    required this.jobId,
  });
  final AdminQueueShowJobLogsRequestQueue queue;
  final String jobId;

  factory AdminQueueShowJobLogsRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminQueueShowJobLogsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminQueueShowJobLogsRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminQueueStatsResponse {
  const AdminQueueStatsResponse({
    required this.deliver,
    required this.inbox,
    required this.db,
    required this.objectStorage,
  });
  final QueueCount deliver;
  final QueueCount inbox;
  final QueueCount db;
  final QueueCount objectStorage;

  factory AdminQueueStatsResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminQueueStatsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AdminQueueStatsResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminRelaysAddRequest {
  const AdminRelaysAddRequest({required this.inbox});
  final String inbox;

  factory AdminRelaysAddRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminRelaysAddRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminRelaysAddRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminRelaysAddResponse {
  const AdminRelaysAddResponse({
    required this.id,
    required this.inbox,
    required this.status,
  });
  final String id;
  final String inbox;
  final AdminRelaysAddResponseStatus status;

  factory AdminRelaysAddResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminRelaysAddResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AdminRelaysAddResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminRelaysListResponseItem {
  const AdminRelaysListResponseItem({
    required this.id,
    required this.inbox,
    required this.status,
  });
  final String id;
  final String inbox;
  final AdminRelaysListResponseItemStatus status;

  factory AdminRelaysListResponseItem.fromJson(Map<String, dynamic> json) =>
      _$AdminRelaysListResponseItemFromJson(json);

  Map<String, dynamic> toJson() => _$AdminRelaysListResponseItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminRelaysRemoveRequest {
  const AdminRelaysRemoveRequest({required this.inbox});
  final String inbox;

  factory AdminRelaysRemoveRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminRelaysRemoveRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminRelaysRemoveRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminResetPasswordRequest {
  const AdminResetPasswordRequest({required this.userId});
  final String userId;

  factory AdminResetPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminResetPasswordRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminResetPasswordRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminResetPasswordResponse {
  const AdminResetPasswordResponse({required this.password});
  final String password;

  factory AdminResetPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminResetPasswordResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AdminResetPasswordResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminResolveAbuseUserReportRequest {
  const AdminResolveAbuseUserReportRequest({
    required this.reportId,
    this.resolvedAs,
  });
  final String reportId;
  final AdminResolveAbuseUserReportRequestResolvedAs? resolvedAs;

  factory AdminResolveAbuseUserReportRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminResolveAbuseUserReportRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminResolveAbuseUserReportRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminRolesAssignRequest {
  const AdminRolesAssignRequest({
    required this.roleId,
    required this.userId,
    this.expiresAt,
  });
  final String roleId;
  final String userId;
  final int? expiresAt;

  factory AdminRolesAssignRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminRolesAssignRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminRolesAssignRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminRolesCreateRequest {
  const AdminRolesCreateRequest({
    required this.name,
    required this.description,
    @JsonKey(name: 'color', includeIfNull: true) required this.color,
    @JsonKey(name: 'iconUrl', includeIfNull: true) required this.iconUrl,
    required this.target,
    required this.condFormula,
    required this.isPublic,
    required this.isModerator,
    required this.isAdministrator,
    this.isExplorable = false,
    required this.asBadge,
    this.preserveAssignmentOnMoveAccount,
    required this.canEditMembersByModerator,
    required this.displayOrder,
    required this.policies,
  });
  final String name;
  final String description;
  final String? color;
  final String? iconUrl;
  final AdminRolesCreateRequestTarget target;
  final JsonMap condFormula;
  final bool isPublic;
  final bool isModerator;
  final bool isAdministrator;
  final bool isExplorable;
  final bool asBadge;
  final bool? preserveAssignmentOnMoveAccount;
  final bool canEditMembersByModerator;
  final num displayOrder;
  final JsonMap policies;

  factory AdminRolesCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminRolesCreateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminRolesCreateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminRolesDeleteRequest {
  const AdminRolesDeleteRequest({required this.roleId});
  final String roleId;

  factory AdminRolesDeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminRolesDeleteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminRolesDeleteRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminRolesShowRequest {
  const AdminRolesShowRequest({required this.roleId});
  final String roleId;

  factory AdminRolesShowRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminRolesShowRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminRolesShowRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminRolesUnassignRequest {
  const AdminRolesUnassignRequest({required this.roleId, required this.userId});
  final String roleId;
  final String userId;

  factory AdminRolesUnassignRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminRolesUnassignRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminRolesUnassignRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminRolesUpdateRequest {
  const AdminRolesUpdateRequest({
    required this.roleId,
    this.name,
    this.description,
    this.color,
    this.iconUrl,
    this.target,
    this.condFormula,
    this.isPublic,
    this.isModerator,
    this.isAdministrator,
    this.isExplorable,
    this.asBadge,
    this.preserveAssignmentOnMoveAccount,
    this.canEditMembersByModerator,
    this.displayOrder,
    this.policies,
  });
  final String roleId;
  final String? name;
  final String? description;
  final String? color;
  final String? iconUrl;
  final AdminRolesUpdateRequestTarget? target;
  final JsonMap? condFormula;
  final bool? isPublic;
  final bool? isModerator;
  final bool? isAdministrator;
  final bool? isExplorable;
  final bool? asBadge;
  final bool? preserveAssignmentOnMoveAccount;
  final bool? canEditMembersByModerator;
  final num? displayOrder;
  final JsonMap? policies;

  factory AdminRolesUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminRolesUpdateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminRolesUpdateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminRolesUpdateDefaultPoliciesRequest {
  const AdminRolesUpdateDefaultPoliciesRequest({required this.policies});
  final JsonMap policies;

  factory AdminRolesUpdateDefaultPoliciesRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminRolesUpdateDefaultPoliciesRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminRolesUpdateDefaultPoliciesRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminRolesUsersRequest {
  const AdminRolesUsersRequest({
    required this.roleId,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    this.limit = 10,
  });
  final String roleId;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final int limit;

  factory AdminRolesUsersRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminRolesUsersRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminRolesUsersRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminRolesUsersResponseItem {
  const AdminRolesUsersResponseItem({
    required this.id,
    required this.createdAt,
    required this.user,
    @JsonKey(name: 'expiresAt', includeIfNull: true) required this.expiresAt,
  });
  final String id;
  final DateTime createdAt;
  final UserDetailed user;
  final DateTime? expiresAt;

  factory AdminRolesUsersResponseItem.fromJson(Map<String, dynamic> json) =>
      _$AdminRolesUsersResponseItemFromJson(json);

  Map<String, dynamic> toJson() => _$AdminRolesUsersResponseItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminSendEmailRequest {
  const AdminSendEmailRequest({
    required this.to,
    required this.subject,
    required this.text,
  });
  final String to;
  final String subject;
  final String text;

  factory AdminSendEmailRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminSendEmailRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminSendEmailRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminServerInfoResponseCpu {
  const AdminServerInfoResponseCpu({required this.model, required this.cores});
  final String model;
  final num cores;

  factory AdminServerInfoResponseCpu.fromJson(Map<String, dynamic> json) =>
      _$AdminServerInfoResponseCpuFromJson(json);

  Map<String, dynamic> toJson() => _$AdminServerInfoResponseCpuToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminServerInfoResponseMem {
  const AdminServerInfoResponseMem({required this.total});
  final num total;

  factory AdminServerInfoResponseMem.fromJson(Map<String, dynamic> json) =>
      _$AdminServerInfoResponseMemFromJson(json);

  Map<String, dynamic> toJson() => _$AdminServerInfoResponseMemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminServerInfoResponseFs {
  const AdminServerInfoResponseFs({required this.total, required this.used});
  final num total;
  final num used;

  factory AdminServerInfoResponseFs.fromJson(Map<String, dynamic> json) =>
      _$AdminServerInfoResponseFsFromJson(json);

  Map<String, dynamic> toJson() => _$AdminServerInfoResponseFsToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminServerInfoResponseNet {
  const AdminServerInfoResponseNet({
    @JsonKey(name: 'interface') required this.interface_,
  });
  final String interface_;

  factory AdminServerInfoResponseNet.fromJson(Map<String, dynamic> json) =>
      _$AdminServerInfoResponseNetFromJson(json);

  Map<String, dynamic> toJson() => _$AdminServerInfoResponseNetToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminServerInfoResponse {
  const AdminServerInfoResponse({
    required this.machine,
    required this.os,
    required this.node,
    required this.psql,
    required this.cpu,
    required this.mem,
    required this.fs,
    required this.net,
  });
  final String machine;
  final String os;
  final String node;
  final String psql;
  final AdminServerInfoResponseCpu cpu;
  final AdminServerInfoResponseMem mem;
  final AdminServerInfoResponseFs fs;
  final AdminServerInfoResponseNet net;

  factory AdminServerInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminServerInfoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AdminServerInfoResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminShowModerationLogsRequest {
  const AdminShowModerationLogsRequest({
    this.limit = 10,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    this.type,
    this.userId,
    this.search,
  });
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final String? type;
  final String? userId;
  final String? search;

  factory AdminShowModerationLogsRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminShowModerationLogsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminShowModerationLogsRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminShowModerationLogsResponseItem {
  const AdminShowModerationLogsResponseItem({
    required this.id,
    required this.createdAt,
    required this.type,
    required this.info,
    required this.userId,
    required this.user,
  });
  final String id;
  final DateTime createdAt;
  final String type;
  final JsonMap info;
  final String userId;
  final UserDetailedNotMe user;

  factory AdminShowModerationLogsResponseItem.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminShowModerationLogsResponseItemFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminShowModerationLogsResponseItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminShowUserRequest {
  const AdminShowUserRequest({required this.userId});
  final String userId;

  factory AdminShowUserRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminShowUserRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminShowUserRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminShowUserResponseNotificationRecieveConfig {
  const AdminShowUserResponseNotificationRecieveConfig({
    this.note,
    this.follow,
    this.mention,
    this.reply,
    this.renote,
    this.quote,
    this.reaction,
    this.pollEnded,
    this.scheduledNotePosted,
    this.scheduledNotePostFailed,
    this.receiveFollowRequest,
    this.followRequestAccepted,
    this.roleAssigned,
    this.chatRoomInvitationReceived,
    this.achievementEarned,
    this.app,
    this.test,
  });
  final JsonMap? note;
  final JsonMap? follow;
  final JsonMap? mention;
  final JsonMap? reply;
  final JsonMap? renote;
  final JsonMap? quote;
  final JsonMap? reaction;
  final JsonMap? pollEnded;
  final JsonMap? scheduledNotePosted;
  final JsonMap? scheduledNotePostFailed;
  final JsonMap? receiveFollowRequest;
  final JsonMap? followRequestAccepted;
  final JsonMap? roleAssigned;
  final JsonMap? chatRoomInvitationReceived;
  final JsonMap? achievementEarned;
  final JsonMap? app;
  final JsonMap? test;

  factory AdminShowUserResponseNotificationRecieveConfig.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminShowUserResponseNotificationRecieveConfigFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminShowUserResponseNotificationRecieveConfigToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminShowUserResponseRoleAssignsItem {
  const AdminShowUserResponseRoleAssignsItem({
    required this.createdAt,
    @JsonKey(name: 'expiresAt', includeIfNull: true) required this.expiresAt,
    required this.roleId,
  });
  final String createdAt;
  final String? expiresAt;
  final String roleId;

  factory AdminShowUserResponseRoleAssignsItem.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminShowUserResponseRoleAssignsItemFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminShowUserResponseRoleAssignsItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminShowUserResponse {
  const AdminShowUserResponse({
    @JsonKey(name: 'email', includeIfNull: true) required this.email,
    required this.emailVerified,
    @JsonKey(name: 'followedMessage', includeIfNull: true)
    required this.followedMessage,
    required this.autoAcceptFollowed,
    required this.noCrawle,
    required this.preventAiLearning,
    required this.alwaysMarkNsfw,
    required this.autoSensitive,
    required this.carefulBot,
    required this.injectFeaturedNote,
    required this.receiveAnnouncementEmail,
    required this.mutedWords,
    required this.mutedInstances,
    required this.notificationRecieveConfig,
    required this.isModerator,
    required this.isSilenced,
    required this.isSuspended,
    required this.isHibernated,
    @JsonKey(name: 'lastActiveDate', includeIfNull: true)
    required this.lastActiveDate,
    required this.moderationNote,
    required this.signins,
    required this.policies,
    required this.roles,
    required this.roleAssigns,
  });
  final String? email;
  final bool emailVerified;
  final String? followedMessage;
  final bool autoAcceptFollowed;
  final bool noCrawle;
  final bool preventAiLearning;
  final bool alwaysMarkNsfw;
  final bool autoSensitive;
  final bool carefulBot;
  final bool injectFeaturedNote;
  final bool receiveAnnouncementEmail;
  final List<Object?> mutedWords;
  final List<String> mutedInstances;
  final AdminShowUserResponseNotificationRecieveConfig
  notificationRecieveConfig;
  final bool isModerator;
  final bool isSilenced;
  final bool isSuspended;
  final bool isHibernated;
  final String? lastActiveDate;
  final String moderationNote;
  final List<Signin> signins;
  final RolePolicies policies;
  final List<Role> roles;
  final List<AdminShowUserResponseRoleAssignsItem> roleAssigns;

  factory AdminShowUserResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminShowUserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AdminShowUserResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminShowUsersRequest {
  const AdminShowUsersRequest({
    this.limit = 10,
    this.offset = 0,
    this.sort,
    this.state = AdminShowUsersRequestState.all,
    this.origin = AdminShowUsersRequestOrigin.combined,
    this.username,
    this.hostname,
  });
  final int limit;
  final int offset;
  final AdminShowUsersRequestSort? sort;
  final AdminShowUsersRequestState state;
  final AdminShowUsersRequestOrigin origin;
  final String? username;
  final String? hostname;

  factory AdminShowUsersRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminShowUsersRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminShowUsersRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminSuspendUserRequest {
  const AdminSuspendUserRequest({required this.userId});
  final String userId;

  factory AdminSuspendUserRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminSuspendUserRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminSuspendUserRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminSystemWebhookCreateRequest {
  const AdminSystemWebhookCreateRequest({
    required this.isActive,
    required this.name,
    @JsonKey(name: 'on') required this.onValue,
    required this.url,
    this.secret = '',
  });
  final bool isActive;
  final String name;
  final List<AdminSystemWebhookCreateRequestOnItem> onValue;
  final String url;
  final String secret;

  factory AdminSystemWebhookCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminSystemWebhookCreateRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminSystemWebhookCreateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminSystemWebhookDeleteRequest {
  const AdminSystemWebhookDeleteRequest({required this.id});
  final String id;

  factory AdminSystemWebhookDeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminSystemWebhookDeleteRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminSystemWebhookDeleteRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminSystemWebhookListRequest {
  const AdminSystemWebhookListRequest({
    this.isActive,
    @JsonKey(name: 'on') this.onValue,
  });
  final bool? isActive;
  final List<AdminSystemWebhookListRequestOnItem>? onValue;

  factory AdminSystemWebhookListRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminSystemWebhookListRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminSystemWebhookListRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminSystemWebhookShowRequest {
  const AdminSystemWebhookShowRequest({required this.id});
  final String id;

  factory AdminSystemWebhookShowRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminSystemWebhookShowRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminSystemWebhookShowRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminSystemWebhookTestRequestOverride {
  const AdminSystemWebhookTestRequestOverride({this.url, this.secret});
  final String? url;
  final String? secret;

  factory AdminSystemWebhookTestRequestOverride.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminSystemWebhookTestRequestOverrideFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminSystemWebhookTestRequestOverrideToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminSystemWebhookTestRequest {
  const AdminSystemWebhookTestRequest({
    required this.webhookId,
    required this.type,
    this.override,
  });
  final String webhookId;
  final AdminSystemWebhookTestRequestType type;
  final AdminSystemWebhookTestRequestOverride? override;

  factory AdminSystemWebhookTestRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminSystemWebhookTestRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminSystemWebhookTestRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminSystemWebhookUpdateRequest {
  const AdminSystemWebhookUpdateRequest({
    required this.id,
    required this.isActive,
    required this.name,
    @JsonKey(name: 'on') required this.onValue,
    required this.url,
    this.secret = '',
  });
  final String id;
  final bool isActive;
  final String name;
  final List<AdminSystemWebhookUpdateRequestOnItem> onValue;
  final String url;
  final String secret;

  factory AdminSystemWebhookUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminSystemWebhookUpdateRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminSystemWebhookUpdateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminUnsetMfaRequest {
  const AdminUnsetMfaRequest({required this.userId});
  final String userId;

  factory AdminUnsetMfaRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminUnsetMfaRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminUnsetMfaRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminUnsetUserAvatarRequest {
  const AdminUnsetUserAvatarRequest({required this.userId});
  final String userId;

  factory AdminUnsetUserAvatarRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminUnsetUserAvatarRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminUnsetUserAvatarRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminUnsetUserBannerRequest {
  const AdminUnsetUserBannerRequest({required this.userId});
  final String userId;

  factory AdminUnsetUserBannerRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminUnsetUserBannerRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminUnsetUserBannerRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminUnsuspendUserRequest {
  const AdminUnsuspendUserRequest({required this.userId});
  final String userId;

  factory AdminUnsuspendUserRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminUnsuspendUserRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminUnsuspendUserRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminUpdateAbuseUserReportRequest {
  const AdminUpdateAbuseUserReportRequest({
    required this.reportId,
    this.moderationNote,
  });
  final String reportId;
  final String? moderationNote;

  factory AdminUpdateAbuseUserReportRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminUpdateAbuseUserReportRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminUpdateAbuseUserReportRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminUpdateMetaRequestClientOptions {
  const AdminUpdateMetaRequestClientOptions({
    this.entrancePageStyle,
    this.showTimelineForVisitor,
    this.showActivitiesForVisitor,
  });
  final AdminUpdateMetaRequestClientOptionsEntrancePageStyle? entrancePageStyle;
  final bool? showTimelineForVisitor;
  final bool? showActivitiesForVisitor;

  factory AdminUpdateMetaRequestClientOptions.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminUpdateMetaRequestClientOptionsFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminUpdateMetaRequestClientOptionsToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminUpdateMetaRequestDeliverSuspendedSoftwareItem {
  const AdminUpdateMetaRequestDeliverSuspendedSoftwareItem({
    required this.software,
    required this.versionRange,
  });
  final String software;
  final String versionRange;

  factory AdminUpdateMetaRequestDeliverSuspendedSoftwareItem.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminUpdateMetaRequestDeliverSuspendedSoftwareItemFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AdminUpdateMetaRequestDeliverSuspendedSoftwareItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminUpdateMetaRequest {
  const AdminUpdateMetaRequest({
    this.disableRegistration,
    this.pinnedUsers,
    this.hiddenTags,
    this.blockedHosts,
    this.sensitiveWords,
    this.prohibitedWords,
    this.prohibitedWordsForNameOfUser,
    this.themeColor,
    this.mascotImageUrl,
    this.bannerUrl,
    this.serverErrorImageUrl,
    this.infoImageUrl,
    this.notFoundImageUrl,
    this.iconUrl,
    this.app192IconUrl,
    this.app512IconUrl,
    this.backgroundImageUrl,
    this.logoImageUrl,
    this.name,
    this.shortName,
    this.description,
    this.defaultLightTheme,
    this.defaultDarkTheme,
    this.clientOptions,
    this.cacheRemoteFiles,
    this.cacheRemoteSensitiveFiles,
    this.emailRequiredForSignup,
    this.enableHcaptcha,
    this.hcaptchaSiteKey,
    this.hcaptchaSecretKey,
    this.enableMcaptcha,
    this.mcaptchaSiteKey,
    this.mcaptchaInstanceUrl,
    this.mcaptchaSecretKey,
    this.enableRecaptcha,
    this.recaptchaSiteKey,
    this.recaptchaSecretKey,
    this.enableTurnstile,
    this.turnstileSiteKey,
    this.turnstileSecretKey,
    this.enableTestcaptcha,
    this.googleAnalyticsMeasurementId,
    this.sensitiveMediaDetection,
    this.sensitiveMediaDetectionSensitivity,
    this.setSensitiveFlagAutomatically,
    this.enableSensitiveMediaDetectionForVideos,
    this.sensitiveMediaDetectionApiUrl,
    this.sensitiveMediaDetectionApiKey,
    this.sensitiveMediaDetectionTimeout,
    this.sensitiveMediaDetectionMaxImagesPerRequest,
    this.maintainerName,
    this.maintainerEmail,
    this.langs,
    this.deeplAuthKey,
    this.deeplIsPro,
    this.enableEmail,
    this.email,
    this.smtpSecure,
    this.smtpHost,
    this.smtpPort,
    this.smtpUser,
    this.smtpPass,
    this.enableServiceWorker,
    this.swPublicKey,
    this.swPrivateKey,
    this.tosUrl,
    this.repositoryUrl,
    this.feedbackUrl,
    this.impressumUrl,
    this.privacyPolicyUrl,
    this.inquiryUrl,
    this.useObjectStorage,
    this.objectStorageBaseUrl,
    this.objectStorageBucket,
    this.objectStoragePrefix,
    this.objectStorageEndpoint,
    this.objectStorageRegion,
    this.objectStoragePort,
    this.objectStorageAccessKey,
    this.objectStorageSecretKey,
    this.objectStorageUseSSL,
    this.objectStorageUseProxy,
    this.objectStorageSetPublicRead,
    this.objectStorageS3ForcePathStyle,
    this.enableIpLogging,
    this.enableActiveEmailValidation,
    this.enableVerifymailApi,
    this.verifymailAuthKey,
    this.enableTruemailApi,
    this.truemailInstance,
    this.truemailAuthKey,
    this.enableChartsForRemoteUser,
    this.enableChartsForFederatedInstances,
    this.enableStatsForFederatedInstances,
    this.enableServerMachineStats,
    this.enableIdenticonGeneration,
    this.serverRules,
    this.bannedEmailDomains,
    this.preservedUsernames,
    this.manifestJsonOverride,
    this.enableFanoutTimeline,
    this.enableFanoutTimelineDbFallback,
    this.perLocalUserUserTimelineCacheMax,
    this.perRemoteUserUserTimelineCacheMax,
    this.perUserHomeTimelineCacheMax,
    this.perUserListTimelineCacheMax,
    this.enableReactionsBuffering,
    this.notesPerOneAd,
    this.silencedHosts,
    this.mediaSilencedHosts,
    this.summalyProxy,
    this.urlPreviewEnabled,
    this.urlPreviewAllowRedirect,
    this.urlPreviewTimeout,
    this.urlPreviewMaximumContentLength,
    this.urlPreviewRequireContentLength,
    this.urlPreviewUserAgent,
    this.urlPreviewSummaryProxyUrl,
    this.urlPreviewSensitiveList,
    this.federation,
    this.federationHosts,
    this.deliverSuspendedSoftware,
    this.singleUserMode,
    this.ugcVisibilityForVisitor,
    this.proxyRemoteFiles,
    this.signToActivityPubGet,
    this.allowExternalApRedirect,
    this.enableRemoteNotesCleaning,
    this.remoteNotesCleaningExpiryDaysForEachNotes,
    this.remoteNotesCleaningMaxProcessingDurationInMinutes,
    this.showRoleBadgesOfRemoteUsers,
  });
  final bool? disableRegistration;
  final List<String>? pinnedUsers;
  final List<String>? hiddenTags;
  final List<String>? blockedHosts;
  final List<String>? sensitiveWords;
  final List<String>? prohibitedWords;
  final List<String>? prohibitedWordsForNameOfUser;
  final String? themeColor;
  final String? mascotImageUrl;
  final String? bannerUrl;
  final String? serverErrorImageUrl;
  final String? infoImageUrl;
  final String? notFoundImageUrl;
  final String? iconUrl;
  final String? app192IconUrl;
  final String? app512IconUrl;
  final String? backgroundImageUrl;
  final String? logoImageUrl;
  final String? name;
  final String? shortName;
  final String? description;
  final String? defaultLightTheme;
  final String? defaultDarkTheme;
  final AdminUpdateMetaRequestClientOptions? clientOptions;
  final bool? cacheRemoteFiles;
  final bool? cacheRemoteSensitiveFiles;
  final bool? emailRequiredForSignup;
  final bool? enableHcaptcha;
  final String? hcaptchaSiteKey;
  final String? hcaptchaSecretKey;
  final bool? enableMcaptcha;
  final String? mcaptchaSiteKey;
  final String? mcaptchaInstanceUrl;
  final String? mcaptchaSecretKey;
  final bool? enableRecaptcha;
  final String? recaptchaSiteKey;
  final String? recaptchaSecretKey;
  final bool? enableTurnstile;
  final String? turnstileSiteKey;
  final String? turnstileSecretKey;
  final bool? enableTestcaptcha;
  final String? googleAnalyticsMeasurementId;
  final AdminUpdateMetaRequestSensitiveMediaDetection? sensitiveMediaDetection;
  final AdminUpdateMetaRequestSensitiveMediaDetectionSensitivity?
  sensitiveMediaDetectionSensitivity;
  final bool? setSensitiveFlagAutomatically;
  final bool? enableSensitiveMediaDetectionForVideos;
  final String? sensitiveMediaDetectionApiUrl;
  final String? sensitiveMediaDetectionApiKey;
  final int? sensitiveMediaDetectionTimeout;
  final int? sensitiveMediaDetectionMaxImagesPerRequest;
  final String? maintainerName;
  final String? maintainerEmail;
  final List<String>? langs;
  final String? deeplAuthKey;
  final bool? deeplIsPro;
  final bool? enableEmail;
  final String? email;
  final bool? smtpSecure;
  final String? smtpHost;
  final int? smtpPort;
  final String? smtpUser;
  final String? smtpPass;
  final bool? enableServiceWorker;
  final String? swPublicKey;
  final String? swPrivateKey;
  final String? tosUrl;
  final String? repositoryUrl;
  final String? feedbackUrl;
  final String? impressumUrl;
  final String? privacyPolicyUrl;
  final String? inquiryUrl;
  final bool? useObjectStorage;
  final String? objectStorageBaseUrl;
  final String? objectStorageBucket;
  final String? objectStoragePrefix;
  final String? objectStorageEndpoint;
  final String? objectStorageRegion;
  final int? objectStoragePort;
  final String? objectStorageAccessKey;
  final String? objectStorageSecretKey;
  final bool? objectStorageUseSSL;
  final bool? objectStorageUseProxy;
  final bool? objectStorageSetPublicRead;
  final bool? objectStorageS3ForcePathStyle;
  final bool? enableIpLogging;
  final bool? enableActiveEmailValidation;
  final bool? enableVerifymailApi;
  final String? verifymailAuthKey;
  final bool? enableTruemailApi;
  final String? truemailInstance;
  final String? truemailAuthKey;
  final bool? enableChartsForRemoteUser;
  final bool? enableChartsForFederatedInstances;
  final bool? enableStatsForFederatedInstances;
  final bool? enableServerMachineStats;
  final bool? enableIdenticonGeneration;
  final List<String>? serverRules;
  final List<String>? bannedEmailDomains;
  final List<String>? preservedUsernames;
  final String? manifestJsonOverride;
  final bool? enableFanoutTimeline;
  final bool? enableFanoutTimelineDbFallback;
  final int? perLocalUserUserTimelineCacheMax;
  final int? perRemoteUserUserTimelineCacheMax;
  final int? perUserHomeTimelineCacheMax;
  final int? perUserListTimelineCacheMax;
  final bool? enableReactionsBuffering;
  final int? notesPerOneAd;
  final List<String>? silencedHosts;
  final List<String>? mediaSilencedHosts;
  final String? summalyProxy;
  final bool? urlPreviewEnabled;
  final bool? urlPreviewAllowRedirect;
  final int? urlPreviewTimeout;
  final int? urlPreviewMaximumContentLength;
  final bool? urlPreviewRequireContentLength;
  final String? urlPreviewUserAgent;
  final String? urlPreviewSummaryProxyUrl;
  final List<String>? urlPreviewSensitiveList;
  final AdminUpdateMetaRequestFederation? federation;
  final List<String>? federationHosts;
  final List<AdminUpdateMetaRequestDeliverSuspendedSoftwareItem>?
  deliverSuspendedSoftware;
  final bool? singleUserMode;
  final AdminUpdateMetaRequestUgcVisibilityForVisitor? ugcVisibilityForVisitor;
  final bool? proxyRemoteFiles;
  final bool? signToActivityPubGet;
  final bool? allowExternalApRedirect;
  final bool? enableRemoteNotesCleaning;
  final num? remoteNotesCleaningExpiryDaysForEachNotes;
  final num? remoteNotesCleaningMaxProcessingDurationInMinutes;
  final bool? showRoleBadgesOfRemoteUsers;

  factory AdminUpdateMetaRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminUpdateMetaRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminUpdateMetaRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminUpdateProxyAccountRequest {
  const AdminUpdateProxyAccountRequest({this.description});
  final String? description;

  factory AdminUpdateProxyAccountRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminUpdateProxyAccountRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminUpdateProxyAccountRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminUpdateUserNoteRequest {
  const AdminUpdateUserNoteRequest({required this.userId, required this.text});
  final String userId;
  final String text;

  factory AdminUpdateUserNoteRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminUpdateUserNoteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminUpdateUserNoteRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminV2EmojiListRequestQuery {
  const AdminV2EmojiListRequestQuery({
    this.updatedAtFrom,
    this.updatedAtTo,
    this.name,
    this.host,
    this.uri,
    this.publicUrl,
    this.originalUrl,
    this.type,
    this.aliases,
    this.category,
    this.license,
    this.isSensitive,
    this.localOnly,
    this.hostType = AdminV2EmojiListRequestQueryHostType.all,
    this.roleIds,
  });
  final String? updatedAtFrom;
  final String? updatedAtTo;
  final String? name;
  final String? host;
  final String? uri;
  final String? publicUrl;
  final String? originalUrl;
  final String? type;
  final String? aliases;
  final String? category;
  final String? license;
  final bool? isSensitive;
  final bool? localOnly;
  final AdminV2EmojiListRequestQueryHostType hostType;
  final List<String>? roleIds;

  factory AdminV2EmojiListRequestQuery.fromJson(Map<String, dynamic> json) =>
      _$AdminV2EmojiListRequestQueryFromJson(json);

  Map<String, dynamic> toJson() => _$AdminV2EmojiListRequestQueryToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminV2EmojiListRequest {
  const AdminV2EmojiListRequest({
    this.query,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    this.limit = 10,
    this.page,
    this.sortKeys,
  });
  final AdminV2EmojiListRequestQuery? query;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final int limit;
  final int? page;
  final List<AdminV2EmojiListRequestSortKeysItem>? sortKeys;

  factory AdminV2EmojiListRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminV2EmojiListRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdminV2EmojiListRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AdminV2EmojiListResponse {
  const AdminV2EmojiListResponse({
    required this.emojis,
    required this.count,
    required this.allCount,
    required this.allPages,
  });
  final List<EmojiDetailedAdmin> emojis;
  final int count;
  final int allCount;
  final int allPages;

  factory AdminV2EmojiListResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminV2EmojiListResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AdminV2EmojiListResponseToJson(this);
}
