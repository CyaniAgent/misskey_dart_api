// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

// ignore_for_file: constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

import '../json.dart';

part 'components.freezed.dart';
part 'components.g.dart';

enum AchievementName {
  notes1,
  notes10,
  notes100,
  notes500,
  notes1000,
  notes5000,
  notes10000,
  notes20000,
  notes30000,
  notes40000,
  notes50000,
  notes60000,
  notes70000,
  notes80000,
  notes90000,
  notes100000,
  login3,
  login7,
  login15,
  login30,
  login60,
  login100,
  login200,
  login300,
  login400,
  login500,
  login600,
  login700,
  login800,
  login900,
  login1000,
  passedSinceAccountCreated1,
  passedSinceAccountCreated2,
  passedSinceAccountCreated3,
  loggedInOnBirthday,
  loggedInOnNewYearsDay,
  noteClipped1,
  noteFavorited1,
  myNoteFavorited1,
  profileFilled,
  markedAsCat,
  following1,
  following10,
  following50,
  following100,
  following300,
  followers1,
  followers10,
  followers50,
  followers100,
  followers300,
  followers500,
  followers1000,
  collectAchievements30,
  viewAchievements3min,
  iLoveMisskey,
  foundTreasure,
  client30min,
  client60min,
  noteDeletedWithin1min,
  postedAtLateNight,
  postedAt0min0sec,
  selfQuote,
  htl20npm,
  viewInstanceChart,
  outputHelloWorldOnScratchpad,
  open3windows,
  driveFolderCircularReference,
  reactWithoutRead,
  clickedClickHere,
  justPlainLucky,
  setNameToSyuilo,
  cookieClicked,
  brainDiver,
  smashTestNotificationButton,
  tutorialCompleted,
  bubbleGameExplodingHead,
  bubbleGameDoubleExplodingHead,
}

enum OnlineStatus { unknown, online, active, offline }

enum FollowingVisibility { public, followers, private }

enum ChatScope { everyone, following, followers, mutual, none }

enum UserNotify { normal, none }

enum TwoFactorBackupCodesStock { full, partial, none }

enum AnnouncementIcon { info, warning, error, success }

enum AnnouncementDisplay { dialog, normal, banner }

enum NoteVisibility { public, home, followers, specified }

enum NoteReactionAcceptance {
  likeOnly,
  likeOnlyForRemote,
  nonSensitiveOnly,
  nonSensitiveOnlyForLocalLikeOnlyForRemote,
}

enum NoteDraftVisibility { public, home, followers, specified }

enum NoteDraftReactionAcceptance {
  likeOnly,
  likeOnlyForRemote,
  nonSensitiveOnly,
  nonSensitiveOnlyForLocalLikeOnlyForRemote,
}

enum PageFont {
  serif,
  @JsonValue('sans-serif')
  sansSerif,
}

enum AntennaSrc { home, all, users, list, users_blacklist }

enum FederationInstanceSuspensionState {
  none,
  manuallySuspended,
  goneSuspended,
  autoSuspendedForNotResponding,
  softwareSuspended,
}

enum FlashVisibility { private, public }

enum RoleCondFormulaLogicsType { and, or }

enum RoleCondFormulaValueNotType { not }

enum RoleCondFormulaValueIsLocalOrRemoteType { isLocal, isRemote }

enum RoleCondFormulaValueUserSettingBooleanSchemaType {
  isSuspended,
  isLocked,
  isBot,
  isCat,
  isExplorable,
}

enum RoleCondFormulaValueAssignedRoleType { roleAssignedTo }

enum RoleCondFormulaValueCreatedType { createdLessThan, createdMoreThan }

enum RoleCondFormulaFollowersOrFollowingOrNotesType {
  followersLessThanOrEq,
  followersMoreThanOrEq,
  followingLessThanOrEq,
  followingMoreThanOrEq,
  notesLessThanOrEq,
  notesMoreThanOrEq,
}

enum RoleTarget { manual, conditional }

enum ChatAvailability { available, readonly, unavailable }

enum ReversiGameLiteBw {
  random,
  @JsonValue('1')
  v1,
  @JsonValue('2')
  v2,
}

enum ReversiGameDetailedBw {
  random,
  @JsonValue('1')
  v1,
  @JsonValue('2')
  v2,
}

enum MetaNoteSearchableScope { local, global }

enum MetaFederationMode { all, specified, none }

enum MetaDetailedNoteSearchableScope { local, global }

enum MetaDetailedFederation { all, specified, none }

enum MetaEntrancePageStyle { classic, simple }

enum UserWebhookOnItem {
  mention,
  unfollow,
  follow,
  followed,
  note,
  reply,
  renote,
  reaction,
}

enum SystemWebhookOnItem {
  abuseReport,
  abuseReportResolved,
  userCreated,
  inactiveModeratorsWarning,
  inactiveModeratorsInvitationOnlyChanged,
}

enum AbuseReportNotificationRecipientMethod { email, webhook }

enum NotificationNoteType { note }

enum NotificationMentionType { mention }

enum NotificationReplyType { reply }

enum NotificationRenoteType { renote }

enum NotificationQuoteType { quote }

enum NotificationReactionType { reaction }

enum NotificationPollEndedType { pollEnded }

enum NotificationScheduledNotePostedType { scheduledNotePosted }

enum NotificationScheduledNotePostFailedType { scheduledNotePostFailed }

enum NotificationFollowType { follow }

enum NotificationReceiveFollowRequestType { receiveFollowRequest }

enum NotificationFollowRequestAcceptedType { followRequestAccepted }

enum NotificationRoleAssignedType { roleAssigned }

enum NotificationChatRoomInvitationReceivedType { chatRoomInvitationReceived }

enum NotificationAchievementEarnedType { achievementEarned }

enum NotificationExportCompletedType { exportCompleted }

enum NotificationExportCompletedExportedEntity {
  antenna,
  blocking,
  clip,
  customEmoji,
  favorite,
  following,
  muting,
  note,
  userList,
}

enum NotificationLoginType { login }

enum NotificationCreateTokenType { createToken }

enum NotificationAppType { app }

enum NotificationReactionGroupedType {
  @JsonValue('reaction:grouped')
  reactionGrouped,
}

enum NotificationRenoteGroupedType {
  @JsonValue('renote:grouped')
  renoteGrouped,
}

enum NotificationTestType { test }

enum PageBlockTextType { text }

enum PageBlockSectionType { section }

enum PageBlockImageType { image }

enum PageBlockNoteType { note }

sealed class User {
  const User._();

  factory User.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('isAdmin')) return MeDetailed.fromJson(json);
    if (json.containsKey('createdAt')) return UserDetailed.fromJson(json);
    return UserLite.fromJson(json);
  }

  Map<String, dynamic> toJson();
}

sealed class UserDetailed extends User {
  const UserDetailed() : super._();

  factory UserDetailed.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('isAdmin')) return MeDetailed.fromJson(json);
    return UserDetailedNotMe.fromJson(json);
  }
}

sealed class RoleCondFormulaValue {
  factory RoleCondFormulaValue.fromJson(Map<String, dynamic> json) {
    final type = json['type'];
    switch (type) {
      case 'and':
      case 'or':
        return RoleCondFormulaLogics.fromJson(json);
      case 'not':
        return RoleCondFormulaValueNot.fromJson(json);
      case 'isLocal':
      case 'isRemote':
        return RoleCondFormulaValueIsLocalOrRemote.fromJson(json);
      case 'isSuspended':
      case 'isLocked':
      case 'isBot':
      case 'isCat':
      case 'isExplorable':
        return RoleCondFormulaValueUserSettingBooleanSchema.fromJson(json);
      case 'roleAssignedTo':
        return RoleCondFormulaValueAssignedRole.fromJson(json);
      case 'createdLessThan':
      case 'createdMoreThan':
        return RoleCondFormulaValueCreated.fromJson(json);
      case 'followersLessThanOrEq':
      case 'followersMoreThanOrEq':
      case 'followingLessThanOrEq':
      case 'followingMoreThanOrEq':
      case 'notesLessThanOrEq':
      case 'notesMoreThanOrEq':
        return RoleCondFormulaFollowersOrFollowingOrNotes.fromJson(json);
      default:
        throw FormatException('Unknown RoleCondFormulaValue type: $type');
    }
  }

  Map<String, dynamic> toJson();
}

sealed class Notification {
  const Notification();

  /// The notification id, shared by every variant.
  String get id;

  factory Notification.fromJson(Map<String, dynamic> json) {
    final type = json['type'];
    switch (type) {
      case 'note':
        return NotificationNote.fromJson(json);
      case 'mention':
        return NotificationMention.fromJson(json);
      case 'reply':
        return NotificationReply.fromJson(json);
      case 'renote':
        return NotificationRenote.fromJson(json);
      case 'quote':
        return NotificationQuote.fromJson(json);
      case 'reaction':
        return NotificationReaction.fromJson(json);
      case 'pollEnded':
        return NotificationPollEnded.fromJson(json);
      case 'scheduledNotePosted':
        return NotificationScheduledNotePosted.fromJson(json);
      case 'scheduledNotePostFailed':
        return NotificationScheduledNotePostFailed.fromJson(json);
      case 'follow':
        return NotificationFollow.fromJson(json);
      case 'receiveFollowRequest':
        return NotificationReceiveFollowRequest.fromJson(json);
      case 'followRequestAccepted':
        return NotificationFollowRequestAccepted.fromJson(json);
      case 'roleAssigned':
        return NotificationRoleAssigned.fromJson(json);
      case 'chatRoomInvitationReceived':
        return NotificationChatRoomInvitationReceived.fromJson(json);
      case 'achievementEarned':
        return NotificationAchievementEarned.fromJson(json);
      case 'exportCompleted':
        return NotificationExportCompleted.fromJson(json);
      case 'login':
        return NotificationLogin.fromJson(json);
      case 'createToken':
        return NotificationCreateToken.fromJson(json);
      case 'app':
        return NotificationApp.fromJson(json);
      case 'reaction:grouped':
        return NotificationReactionGrouped.fromJson(json);
      case 'renote:grouped':
        return NotificationRenoteGrouped.fromJson(json);
      case 'test':
        return NotificationTest.fromJson(json);
      default:
        throw FormatException('Unknown Notification type: $type');
    }
  }

  Map<String, dynamic> toJson();
}

sealed class PageBlock {
  const PageBlock();

  factory PageBlock.fromJson(Map<String, dynamic> json) {
    final type = json['type'];
    switch (type) {
      case 'text':
        return PageBlockText.fromJson(json);
      case 'section':
        return PageBlockSection.fromJson(json);
      case 'image':
        return PageBlockImage.fromJson(json);
      case 'note':
        return PageBlockNote.fromJson(json);
      default:
        throw FormatException('Unknown PageBlock type: $type');
    }
  }

  Map<String, dynamic> toJson();
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UserAvatarDecoration {
  const UserAvatarDecoration({
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

  factory UserAvatarDecoration.fromJson(Map<String, dynamic> json) =>
      _$UserAvatarDecorationFromJson(json);

  Map<String, dynamic> toJson() => _$UserAvatarDecorationToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UserInstance {
  const UserInstance({
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

  factory UserInstance.fromJson(Map<String, dynamic> json) =>
      _$UserInstanceFromJson(json);

  Map<String, dynamic> toJson() => _$UserInstanceToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UserBadgeRole {
  const UserBadgeRole({
    required this.name,
    @JsonKey(name: 'iconUrl', includeIfNull: true) required this.iconUrl,
    required this.displayOrder,
  });
  final String name;
  final String? iconUrl;
  final num displayOrder;

  factory UserBadgeRole.fromJson(Map<String, dynamic> json) =>
      _$UserBadgeRoleFromJson(json);

  Map<String, dynamic> toJson() => _$UserBadgeRoleToJson(this);
}

@freezed
abstract class UserLite with _$UserLite implements User {
  const factory UserLite({
    required String id,
    required String? name,
    required String username,
    required String? host,
    required String avatarUrl,
    required String? avatarBlurhash,
    required List<UserAvatarDecoration> avatarDecorations,
    bool? isBot,
    bool? isCat,
    bool? requireSigninToViewContents,
    num? makeNotesFollowersOnlyBefore,
    num? makeNotesHiddenBefore,
    UserInstance? instance,
    required Map<String, String> emojis,
    required OnlineStatus onlineStatus,
    List<UserBadgeRole>? badgeRoles,
  }) = _UserLite;

  factory UserLite.fromJson(Map<String, dynamic> json) =>
      _$UserLiteFromJson(json);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UserField {
  const UserField({required this.name, required this.value});
  final String name;
  final String value;

  factory UserField.fromJson(Map<String, dynamic> json) =>
      _$UserFieldFromJson(json);

  Map<String, dynamic> toJson() => _$UserFieldToJson(this);
}

@freezed
abstract class UserDetailedNotMeOnly with _$UserDetailedNotMeOnly {
  const factory UserDetailedNotMeOnly({
    required String? url,
    required String? uri,
    required String? movedTo,
    required List<String>? alsoKnownAs,
    required DateTime createdAt,
    required DateTime? updatedAt,
    required DateTime? lastFetchedAt,
    required String? bannerUrl,
    required String? bannerBlurhash,
    required bool isLocked,
    required bool isSilenced,
    required bool isSuspended,
    required String? description,
    required String? location,
    required String? birthday,
    required String? lang,
    required List<UserField> fields,
    required List<String> verifiedLinks,
    required num followersCount,
    required num followingCount,
    required num notesCount,
    required List<String> pinnedNoteIds,
    required List<Note> pinnedNotes,
    required String? pinnedPageId,
    required Page? pinnedPage,
    required bool publicReactions,
    required FollowingVisibility followingVisibility,
    required FollowingVisibility followersVisibility,
    required ChatScope chatScope,
    required bool canChat,
    required List<RoleLite> roles,
    String? followedMessage,
    required String? memo,
    String? moderationNote,
    bool? twoFactorEnabled,
    bool? usePasswordLessLogin,
    bool? securityKeys,
    bool? isFollowing,
    bool? isFollowed,
    bool? hasPendingFollowRequestFromYou,
    bool? hasPendingFollowRequestToYou,
    bool? isBlocking,
    bool? isBlocked,
    bool? isMuted,
    bool? isRenoteMuted,
    UserNotify? notify,
    bool? withReplies,
  }) = _UserDetailedNotMeOnly;

  factory UserDetailedNotMeOnly.fromJson(Map<String, dynamic> json) =>
      _$UserDetailedNotMeOnlyFromJson(json);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MeDetailedOnlyNotificationRecieveConfig {
  const MeDetailedOnlyNotificationRecieveConfig({
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

  factory MeDetailedOnlyNotificationRecieveConfig.fromJson(
    Map<String, dynamic> json,
  ) => _$MeDetailedOnlyNotificationRecieveConfigFromJson(json);

  Map<String, dynamic> toJson() =>
      _$MeDetailedOnlyNotificationRecieveConfigToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class SecurityKey {
  const SecurityKey({
    required this.id,
    required this.name,
    required this.lastUsed,
  });
  final String id;
  final String name;
  final DateTime lastUsed;

  factory SecurityKey.fromJson(Map<String, dynamic> json) =>
      _$SecurityKeyFromJson(json);

  Map<String, dynamic> toJson() => _$SecurityKeyToJson(this);
}

@freezed
abstract class MeDetailedOnly with _$MeDetailedOnly {
  const factory MeDetailedOnly({
    required String? avatarId,
    required String? bannerId,
    required String? followedMessage,
    required bool isModerator,
    required bool isAdmin,
    required bool injectFeaturedNote,
    required bool receiveAnnouncementEmail,
    required bool alwaysMarkNsfw,
    required bool autoSensitive,
    required bool carefulBot,
    required bool autoAcceptFollowed,
    required bool noCrawle,
    required bool preventAiLearning,
    required bool isExplorable,
    required bool isDeleted,
    required TwoFactorBackupCodesStock twoFactorBackupCodesStock,
    required bool hideOnlineStatus,
    required bool hasUnreadSpecifiedNotes,
    required bool hasUnreadMentions,
    required bool hasUnreadAnnouncement,
    required List<Announcement> unreadAnnouncements,
    required bool hasUnreadAntenna,
    required bool hasUnreadChannel,
    required bool hasUnreadChatMessages,
    required bool hasUnreadNotification,
    required bool hasPendingReceivedFollowRequest,
    required num unreadNotificationsCount,
    required List<List<String>> mutedWords,
    required List<List<String>> hardMutedWords,
    required List<String> mutedInstances,
    required MeDetailedOnlyNotificationRecieveConfig notificationRecieveConfig,
    required List<String> emailNotificationTypes,
    required List<Achievement> achievements,
    required num loggedInDays,
    required RolePolicies policies,
    required bool twoFactorEnabled,
    required bool usePasswordLessLogin,
    required bool securityKeys,
    String? email,
    bool? emailVerified,
    List<SecurityKey>? securityKeysList,
  }) = _MeDetailedOnly;

  factory MeDetailedOnly.fromJson(Map<String, dynamic> json) =>
      _$MeDetailedOnlyFromJson(json);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UserDetailedNotMeAvatarDecorationsItem {
  const UserDetailedNotMeAvatarDecorationsItem({
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

  factory UserDetailedNotMeAvatarDecorationsItem.fromJson(
    Map<String, dynamic> json,
  ) => _$UserDetailedNotMeAvatarDecorationsItemFromJson(json);

  Map<String, dynamic> toJson() =>
      _$UserDetailedNotMeAvatarDecorationsItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UserDetailedNotMeInstance {
  const UserDetailedNotMeInstance({
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

  factory UserDetailedNotMeInstance.fromJson(Map<String, dynamic> json) =>
      _$UserDetailedNotMeInstanceFromJson(json);

  Map<String, dynamic> toJson() => _$UserDetailedNotMeInstanceToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UserDetailedNotMeBadgeRolesItem {
  const UserDetailedNotMeBadgeRolesItem({
    required this.name,
    @JsonKey(name: 'iconUrl', includeIfNull: true) required this.iconUrl,
    required this.displayOrder,
  });
  final String name;
  final String? iconUrl;
  final num displayOrder;

  factory UserDetailedNotMeBadgeRolesItem.fromJson(Map<String, dynamic> json) =>
      _$UserDetailedNotMeBadgeRolesItemFromJson(json);

  Map<String, dynamic> toJson() =>
      _$UserDetailedNotMeBadgeRolesItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UserDetailedNotMeFieldsItem {
  const UserDetailedNotMeFieldsItem({required this.name, required this.value});
  final String name;
  final String value;

  factory UserDetailedNotMeFieldsItem.fromJson(Map<String, dynamic> json) =>
      _$UserDetailedNotMeFieldsItemFromJson(json);

  Map<String, dynamic> toJson() => _$UserDetailedNotMeFieldsItemToJson(this);
}

@freezed
abstract class UserDetailedNotMe
    with _$UserDetailedNotMe
    implements UserDetailed {
  const factory UserDetailedNotMe({
    required String id,
    required String? name,
    required String username,
    required String? host,
    required String avatarUrl,
    required String? avatarBlurhash,
    required List<UserDetailedNotMeAvatarDecorationsItem> avatarDecorations,
    bool? isBot,
    bool? isCat,
    bool? requireSigninToViewContents,
    num? makeNotesFollowersOnlyBefore,
    num? makeNotesHiddenBefore,
    UserDetailedNotMeInstance? instance,
    required Map<String, String> emojis,
    required OnlineStatus onlineStatus,
    List<UserDetailedNotMeBadgeRolesItem>? badgeRoles,
    required String? url,
    required String? uri,
    required String? movedTo,
    required List<String>? alsoKnownAs,
    required DateTime createdAt,
    required DateTime? updatedAt,
    required DateTime? lastFetchedAt,
    required String? bannerUrl,
    required String? bannerBlurhash,
    required bool isLocked,
    required bool isSilenced,
    required bool isSuspended,
    required String? description,
    required String? location,
    required String? birthday,
    required String? lang,
    required List<UserDetailedNotMeFieldsItem> fields,
    required List<String> verifiedLinks,
    required num followersCount,
    required num followingCount,
    required num notesCount,
    required List<String> pinnedNoteIds,
    required List<Note> pinnedNotes,
    required String? pinnedPageId,
    required Page? pinnedPage,
    required bool publicReactions,
    required FollowingVisibility followingVisibility,
    required FollowingVisibility followersVisibility,
    required ChatScope chatScope,
    required bool canChat,
    required List<RoleLite> roles,
    String? followedMessage,
    required String? memo,
    String? moderationNote,
    bool? twoFactorEnabled,
    bool? usePasswordLessLogin,
    bool? securityKeys,
    bool? isFollowing,
    bool? isFollowed,
    bool? hasPendingFollowRequestFromYou,
    bool? hasPendingFollowRequestToYou,
    bool? isBlocking,
    bool? isBlocked,
    bool? isMuted,
    bool? isRenoteMuted,
    UserNotify? notify,
    bool? withReplies,
  }) = _UserDetailedNotMe;

  factory UserDetailedNotMe.fromJson(Map<String, dynamic> json) =>
      _$UserDetailedNotMeFromJson(json);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MeDetailedAvatarDecorationsItem {
  const MeDetailedAvatarDecorationsItem({
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

  factory MeDetailedAvatarDecorationsItem.fromJson(Map<String, dynamic> json) =>
      _$MeDetailedAvatarDecorationsItemFromJson(json);

  Map<String, dynamic> toJson() =>
      _$MeDetailedAvatarDecorationsItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MeDetailedInstance {
  const MeDetailedInstance({
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

  factory MeDetailedInstance.fromJson(Map<String, dynamic> json) =>
      _$MeDetailedInstanceFromJson(json);

  Map<String, dynamic> toJson() => _$MeDetailedInstanceToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MeDetailedBadgeRolesItem {
  const MeDetailedBadgeRolesItem({
    required this.name,
    @JsonKey(name: 'iconUrl', includeIfNull: true) required this.iconUrl,
    required this.displayOrder,
  });
  final String name;
  final String? iconUrl;
  final num displayOrder;

  factory MeDetailedBadgeRolesItem.fromJson(Map<String, dynamic> json) =>
      _$MeDetailedBadgeRolesItemFromJson(json);

  Map<String, dynamic> toJson() => _$MeDetailedBadgeRolesItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MeDetailedFieldsItem {
  const MeDetailedFieldsItem({required this.name, required this.value});
  final String name;
  final String value;

  factory MeDetailedFieldsItem.fromJson(Map<String, dynamic> json) =>
      _$MeDetailedFieldsItemFromJson(json);

  Map<String, dynamic> toJson() => _$MeDetailedFieldsItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MeDetailedNotificationRecieveConfig {
  const MeDetailedNotificationRecieveConfig({
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

  factory MeDetailedNotificationRecieveConfig.fromJson(
    Map<String, dynamic> json,
  ) => _$MeDetailedNotificationRecieveConfigFromJson(json);

  Map<String, dynamic> toJson() =>
      _$MeDetailedNotificationRecieveConfigToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MeDetailedSecurityKeysListItem {
  const MeDetailedSecurityKeysListItem({
    required this.id,
    required this.name,
    required this.lastUsed,
  });
  final String id;
  final String name;
  final DateTime lastUsed;

  factory MeDetailedSecurityKeysListItem.fromJson(Map<String, dynamic> json) =>
      _$MeDetailedSecurityKeysListItemFromJson(json);

  Map<String, dynamic> toJson() => _$MeDetailedSecurityKeysListItemToJson(this);
}

@freezed
abstract class MeDetailed with _$MeDetailed implements UserDetailed {
  const factory MeDetailed({
    required String id,
    required String? name,
    required String username,
    required String? host,
    required String avatarUrl,
    required String? avatarBlurhash,
    required List<MeDetailedAvatarDecorationsItem> avatarDecorations,
    bool? isBot,
    bool? isCat,
    bool? requireSigninToViewContents,
    num? makeNotesFollowersOnlyBefore,
    num? makeNotesHiddenBefore,
    MeDetailedInstance? instance,
    required Map<String, String> emojis,
    required OnlineStatus onlineStatus,
    List<MeDetailedBadgeRolesItem>? badgeRoles,
    required String? url,
    required String? uri,
    required String? movedTo,
    required List<String>? alsoKnownAs,
    required DateTime createdAt,
    required DateTime? updatedAt,
    required DateTime? lastFetchedAt,
    required String? bannerUrl,
    required String? bannerBlurhash,
    required bool isLocked,
    required bool isSilenced,
    required bool isSuspended,
    required String? description,
    required String? location,
    required String? birthday,
    required String? lang,
    required List<MeDetailedFieldsItem> fields,
    required List<String> verifiedLinks,
    required num followersCount,
    required num followingCount,
    required num notesCount,
    required List<String> pinnedNoteIds,
    required List<Note> pinnedNotes,
    required String? pinnedPageId,
    required Page? pinnedPage,
    required bool publicReactions,
    required FollowingVisibility followingVisibility,
    required FollowingVisibility followersVisibility,
    required ChatScope chatScope,
    required bool canChat,
    required List<RoleLite> roles,
    required String? followedMessage,
    required String? memo,
    String? moderationNote,
    required bool twoFactorEnabled,
    required bool usePasswordLessLogin,
    required bool securityKeys,
    bool? isFollowing,
    bool? isFollowed,
    bool? hasPendingFollowRequestFromYou,
    bool? hasPendingFollowRequestToYou,
    bool? isBlocking,
    bool? isBlocked,
    bool? isMuted,
    bool? isRenoteMuted,
    UserNotify? notify,
    bool? withReplies,
    required String? avatarId,
    required String? bannerId,
    required bool isModerator,
    required bool isAdmin,
    required bool injectFeaturedNote,
    required bool receiveAnnouncementEmail,
    required bool alwaysMarkNsfw,
    required bool autoSensitive,
    required bool carefulBot,
    required bool autoAcceptFollowed,
    required bool noCrawle,
    required bool preventAiLearning,
    required bool isExplorable,
    required bool isDeleted,
    required TwoFactorBackupCodesStock twoFactorBackupCodesStock,
    required bool hideOnlineStatus,
    required bool hasUnreadSpecifiedNotes,
    required bool hasUnreadMentions,
    required bool hasUnreadAnnouncement,
    required List<Announcement> unreadAnnouncements,
    required bool hasUnreadAntenna,
    required bool hasUnreadChannel,
    required bool hasUnreadChatMessages,
    required bool hasUnreadNotification,
    required bool hasPendingReceivedFollowRequest,
    required num unreadNotificationsCount,
    required List<List<String>> mutedWords,
    required List<List<String>> hardMutedWords,
    required List<String> mutedInstances,
    required MeDetailedNotificationRecieveConfig notificationRecieveConfig,
    required List<String> emailNotificationTypes,
    required List<Achievement> achievements,
    required num loggedInDays,
    required RolePolicies policies,
    String? email,
    bool? emailVerified,
    List<MeDetailedSecurityKeysListItem>? securityKeysList,
  }) = _MeDetailed;

  factory MeDetailed.fromJson(Map<String, dynamic> json) =>
      _$MeDetailedFromJson(json);
}

@freezed
abstract class UserList with _$UserList {
  const factory UserList({
    required String id,
    required DateTime createdAt,
    required String name,
    List<String>? userIds,
    required bool isPublic,
  }) = _UserList;

  factory UserList.fromJson(Map<String, dynamic> json) =>
      _$UserListFromJson(json);
}

@freezed
abstract class Achievement with _$Achievement {
  const factory Achievement({
    required AchievementName name,
    required num unlockedAt,
  }) = _Achievement;

  factory Achievement.fromJson(Map<String, dynamic> json) =>
      _$AchievementFromJson(json);
}

@freezed
abstract class Ad with _$Ad {
  const factory Ad({
    required String id,
    required DateTime expiresAt,
    required DateTime startsAt,
    required String place,
    required String priority,
    required num ratio,
    required String url,
    required String imageUrl,
    required String memo,
    required int dayOfWeek,
    required bool isSensitive,
  }) = _Ad;

  factory Ad.fromJson(Map<String, dynamic> json) => _$AdFromJson(json);
}

@freezed
abstract class Announcement with _$Announcement {
  const factory Announcement({
    required String id,
    required DateTime createdAt,
    required DateTime? updatedAt,
    required String text,
    required String title,
    required String? imageUrl,
    required AnnouncementIcon icon,
    required AnnouncementDisplay display,
    required bool needConfirmationToRead,
    required bool silence,
    required bool forYou,
    bool? isRead,
  }) = _Announcement;

  factory Announcement.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementFromJson(json);
}

@freezed
abstract class App with _$App {
  const factory App({
    required String id,
    required String name,
    required String? callbackUrl,
    required List<String> permission,
    String? secret,
    bool? isAuthorized,
  }) = _App;

  factory App.fromJson(Map<String, dynamic> json) => _$AppFromJson(json);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotePollChoicesItem {
  const NotePollChoicesItem({
    required this.isVoted,
    required this.text,
    required this.votes,
  });
  final bool isVoted;
  final String text;
  final num votes;

  factory NotePollChoicesItem.fromJson(Map<String, dynamic> json) =>
      _$NotePollChoicesItemFromJson(json);

  Map<String, dynamic> toJson() => _$NotePollChoicesItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotePoll {
  const NotePoll({
    this.expiresAt,
    required this.multiple,
    required this.choices,
  });
  final DateTime? expiresAt;
  final bool multiple;
  final List<NotePollChoicesItem> choices;

  factory NotePoll.fromJson(Map<String, dynamic> json) =>
      _$NotePollFromJson(json);

  Map<String, dynamic> toJson() => _$NotePollToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NoteChannel {
  const NoteChannel({
    required this.id,
    required this.name,
    required this.color,
    required this.isSensitive,
    required this.allowRenoteToExternal,
    @JsonKey(name: 'userId', includeIfNull: true) required this.userId,
  });
  final String id;
  final String name;
  final String color;
  final bool isSensitive;
  final bool allowRenoteToExternal;
  final String? userId;

  factory NoteChannel.fromJson(Map<String, dynamic> json) =>
      _$NoteChannelFromJson(json);

  Map<String, dynamic> toJson() => _$NoteChannelToJson(this);
}

@freezed
abstract class Note with _$Note {
  const factory Note({
    required String id,
    required DateTime createdAt,
    DateTime? deletedAt,
    required String? text,
    String? cw,
    required String userId,
    required UserLite user,
    String? replyId,
    String? renoteId,
    Note? reply,
    Note? renote,
    bool? isHidden,
    required NoteVisibility visibility,
    List<String>? mentions,
    List<String>? visibleUserIds,
    List<String>? fileIds,
    List<DriveFile>? files,
    List<String>? tags,
    NotePoll? poll,
    Map<String, String>? emojis,
    String? channelId,
    NoteChannel? channel,
    bool? localOnly,
    required NoteReactionAcceptance? reactionAcceptance,
    required Map<String, String> reactionEmojis,
    required Map<String, num> reactions,
    required num reactionCount,
    required num renoteCount,
    required num repliesCount,
    String? uri,
    String? url,
    List<String>? reactionAndUserPairCache,
    num? clippedCount,
    bool? hasPoll,
    String? myReaction,
  }) = _Note;

  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NoteDraftPoll {
  const NoteDraftPoll({
    this.expiresAt,
    this.expiredAfter,
    required this.multiple,
    required this.choices,
  });
  final DateTime? expiresAt;
  final num? expiredAfter;
  final bool multiple;
  final List<String> choices;

  factory NoteDraftPoll.fromJson(Map<String, dynamic> json) =>
      _$NoteDraftPollFromJson(json);

  Map<String, dynamic> toJson() => _$NoteDraftPollToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NoteDraftChannel {
  const NoteDraftChannel({
    required this.id,
    required this.name,
    required this.color,
    required this.isSensitive,
    required this.allowRenoteToExternal,
    @JsonKey(name: 'userId', includeIfNull: true) required this.userId,
  });
  final String id;
  final String name;
  final String color;
  final bool isSensitive;
  final bool allowRenoteToExternal;
  final String? userId;

  factory NoteDraftChannel.fromJson(Map<String, dynamic> json) =>
      _$NoteDraftChannelFromJson(json);

  Map<String, dynamic> toJson() => _$NoteDraftChannelToJson(this);
}

@freezed
abstract class NoteDraft with _$NoteDraft {
  const factory NoteDraft({
    required String id,
    required DateTime createdAt,
    required String? text,
    required String? cw,
    required String userId,
    required UserLite user,
    required String? replyId,
    required String? renoteId,
    Note? reply,
    Note? renote,
    required NoteDraftVisibility visibility,
    required List<String> visibleUserIds,
    required List<String> fileIds,
    List<DriveFile>? files,
    required String? hashtag,
    required NoteDraftPoll? poll,
    required String? channelId,
    NoteDraftChannel? channel,
    required bool localOnly,
    required NoteDraftReactionAcceptance? reactionAcceptance,
    required num? scheduledAt,
    required bool isActuallyScheduled,
  }) = _NoteDraft;

  factory NoteDraft.fromJson(Map<String, dynamic> json) =>
      _$NoteDraftFromJson(json);
}

@freezed
abstract class NoteReaction with _$NoteReaction {
  const factory NoteReaction({
    required String id,
    required DateTime createdAt,
    required UserLite user,
    required String type,
  }) = _NoteReaction;

  factory NoteReaction.fromJson(Map<String, dynamic> json) =>
      _$NoteReactionFromJson(json);
}

@freezed
abstract class NoteReactionWithNote with _$NoteReactionWithNote {
  const factory NoteReactionWithNote({
    required String id,
    required DateTime createdAt,
    required UserLite user,
    required String type,
    required Note note,
  }) = _NoteReactionWithNote;

  factory NoteReactionWithNote.fromJson(Map<String, dynamic> json) =>
      _$NoteReactionWithNoteFromJson(json);
}

@freezed
abstract class NoteFavorite with _$NoteFavorite {
  const factory NoteFavorite({
    required String id,
    required DateTime createdAt,
    required Note note,
    required String noteId,
  }) = _NoteFavorite;

  factory NoteFavorite.fromJson(Map<String, dynamic> json) =>
      _$NoteFavoriteFromJson(json);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class DriveFileProperties {
  const DriveFileProperties({
    this.width,
    this.height,
    this.orientation,
    this.avgColor,
  });
  final num? width;
  final num? height;
  final num? orientation;
  final String? avgColor;

  factory DriveFileProperties.fromJson(Map<String, dynamic> json) =>
      _$DriveFilePropertiesFromJson(json);

  Map<String, dynamic> toJson() => _$DriveFilePropertiesToJson(this);
}

@freezed
abstract class DriveFile with _$DriveFile {
  const factory DriveFile({
    required String id,
    required DateTime createdAt,
    required String name,
    required String type,
    required String md5,
    required num size,
    required bool isSensitive,
    required String? blurhash,
    required DriveFileProperties properties,
    required String url,
    required String? thumbnailUrl,
    required String? comment,
    required String? folderId,
    DriveFolder? folder,
    required String? userId,
    UserLite? user,
  }) = _DriveFile;

  factory DriveFile.fromJson(Map<String, dynamic> json) =>
      _$DriveFileFromJson(json);
}

@freezed
abstract class DriveFolder with _$DriveFolder {
  const factory DriveFolder({
    required String id,
    required DateTime createdAt,
    required String name,
    required String? parentId,
    num? foldersCount,
    num? filesCount,
    DriveFolder? parent,
  }) = _DriveFolder;

  factory DriveFolder.fromJson(Map<String, dynamic> json) =>
      _$DriveFolderFromJson(json);
}

@freezed
abstract class Following with _$Following {
  const factory Following({
    required String id,
    required DateTime createdAt,
    required String followeeId,
    required String followerId,
    UserDetailedNotMe? followee,
    UserDetailedNotMe? follower,
  }) = _Following;

  factory Following.fromJson(Map<String, dynamic> json) =>
      _$FollowingFromJson(json);
}

@freezed
abstract class Muting with _$Muting {
  const factory Muting({
    required String id,
    required DateTime createdAt,
    required DateTime? expiresAt,
    required String muteeId,
    required UserDetailedNotMe mutee,
  }) = _Muting;

  factory Muting.fromJson(Map<String, dynamic> json) => _$MutingFromJson(json);
}

@freezed
abstract class RenoteMuting with _$RenoteMuting {
  const factory RenoteMuting({
    required String id,
    required DateTime createdAt,
    required String muteeId,
    required UserDetailedNotMe mutee,
  }) = _RenoteMuting;

  factory RenoteMuting.fromJson(Map<String, dynamic> json) =>
      _$RenoteMutingFromJson(json);
}

@freezed
abstract class Blocking with _$Blocking {
  const factory Blocking({
    required String id,
    required DateTime createdAt,
    required String blockeeId,
    required UserDetailedNotMe blockee,
  }) = _Blocking;

  factory Blocking.fromJson(Map<String, dynamic> json) =>
      _$BlockingFromJson(json);
}

@freezed
abstract class Hashtag with _$Hashtag {
  const factory Hashtag({
    required String tag,
    required num mentionedUsersCount,
    required num mentionedLocalUsersCount,
    required num mentionedRemoteUsersCount,
    required num attachedUsersCount,
    required num attachedLocalUsersCount,
    required num attachedRemoteUsersCount,
  }) = _Hashtag;

  factory Hashtag.fromJson(Map<String, dynamic> json) =>
      _$HashtagFromJson(json);
}

@freezed
abstract class InviteCode with _$InviteCode {
  const factory InviteCode({
    required String id,
    required String code,
    required DateTime? expiresAt,
    required DateTime createdAt,
    required UserLite? createdBy,
    required UserLite? usedBy,
    required DateTime? usedAt,
    required bool used,
  }) = _InviteCode;

  factory InviteCode.fromJson(Map<String, dynamic> json) =>
      _$InviteCodeFromJson(json);
}

@freezed
abstract class Page with _$Page {
  const factory Page({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String userId,
    required UserLite user,
    required List<PageBlock> content,
    required List<JsonMap> variables,
    required String title,
    required String name,
    required String? summary,
    required bool hideTitleWhenPinned,
    required bool alignCenter,
    required PageFont font,
    required String script,
    required String? eyeCatchingImageId,
    required DriveFile? eyeCatchingImage,
    required List<DriveFile> attachedFiles,
    required num likedCount,
    bool? isLiked,
  }) = _Page;

  factory Page.fromJson(Map<String, dynamic> json) => _$PageFromJson(json);
}

@freezed
abstract class Channel with _$Channel {
  const factory Channel({
    required String id,
    required DateTime createdAt,
    required DateTime? lastNotedAt,
    required String name,
    required String? description,
    required String? userId,
    required String? bannerUrl,
    required String? bannerId,
    required List<String> pinnedNoteIds,
    required String color,
    required bool isArchived,
    required num usersCount,
    required num notesCount,
    required bool isSensitive,
    required bool allowRenoteToExternal,
    bool? isFollowing,
    bool? isFavorited,
    bool? isMuting,
    List<Note>? pinnedNotes,
  }) = _Channel;

  factory Channel.fromJson(Map<String, dynamic> json) =>
      _$ChannelFromJson(json);
}

@freezed
abstract class QueueCount with _$QueueCount {
  const factory QueueCount({
    required num waiting,
    required num active,
    required num completed,
    required num failed,
    required num delayed,
  }) = _QueueCount;

  factory QueueCount.fromJson(Map<String, dynamic> json) =>
      _$QueueCountFromJson(json);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class QueueMetricsMeta {
  const QueueMetricsMeta({
    required this.count,
    required this.prevTS,
    required this.prevCount,
  });
  final num count;
  final num prevTS;
  final num prevCount;

  factory QueueMetricsMeta.fromJson(Map<String, dynamic> json) =>
      _$QueueMetricsMetaFromJson(json);

  Map<String, dynamic> toJson() => _$QueueMetricsMetaToJson(this);
}

@freezed
abstract class QueueMetrics with _$QueueMetrics {
  const factory QueueMetrics({
    required QueueMetricsMeta meta,
    required List<num> data,
    required num count,
  }) = _QueueMetrics;

  factory QueueMetrics.fromJson(Map<String, dynamic> json) =>
      _$QueueMetricsFromJson(json);
}

@freezed
abstract class QueueJob with _$QueueJob {
  const factory QueueJob({
    required String id,
    required String name,
    required JsonMap data,
    required JsonMap opts,
    required num timestamp,
    num? processedOn,
    String? processedBy,
    num? finishedOn,
    required JsonMap progress,
    required num attempts,
    required num delay,
    required String failedReason,
    required List<String> stacktrace,
    required JsonMap returnValue,
    required bool isFailed,
  }) = _QueueJob;

  factory QueueJob.fromJson(Map<String, dynamic> json) =>
      _$QueueJobFromJson(json);
}

@freezed
abstract class Antenna with _$Antenna {
  const factory Antenna({
    required String id,
    required DateTime createdAt,
    required String name,
    required List<List<String>> keywords,
    required List<List<String>> excludeKeywords,
    required AntennaSrc src,
    required String? userListId,
    required List<String> users,
    required bool caseSensitive,
    required bool localOnly,
    required bool excludeBots,
    required bool withReplies,
    required bool withFile,
    required bool isActive,
    required bool hasUnreadNote,
    required bool notify,
    required bool excludeNotesInSensitiveChannel,
  }) = _Antenna;

  factory Antenna.fromJson(Map<String, dynamic> json) =>
      _$AntennaFromJson(json);
}

@freezed
abstract class Clip with _$Clip {
  const factory Clip({
    required String id,
    required DateTime createdAt,
    required DateTime? lastClippedAt,
    required String userId,
    required UserLite user,
    required String name,
    required String? description,
    required bool isPublic,
    required num favoritedCount,
    bool? isFavorited,
    int? notesCount,
  }) = _Clip;

  factory Clip.fromJson(Map<String, dynamic> json) => _$ClipFromJson(json);
}

@freezed
abstract class FederationInstance with _$FederationInstance {
  const factory FederationInstance({
    required String id,
    required DateTime firstRetrievedAt,
    required String host,
    required num usersCount,
    required num notesCount,
    required num followingCount,
    required num followersCount,
    required bool isNotResponding,
    required bool isSuspended,
    required FederationInstanceSuspensionState suspensionState,
    required bool isBlocked,
    required String? softwareName,
    required String? softwareVersion,
    required bool? openRegistrations,
    required String? name,
    required String? description,
    required String? maintainerName,
    required String? maintainerEmail,
    required bool isSilenced,
    required bool isMediaSilenced,
    required String? iconUrl,
    required String? faviconUrl,
    required String? themeColor,
    required DateTime? infoUpdatedAt,
    required DateTime? latestRequestReceivedAt,
    String? moderationNote,
  }) = _FederationInstance;

  factory FederationInstance.fromJson(Map<String, dynamic> json) =>
      _$FederationInstanceFromJson(json);
}

@freezed
abstract class GalleryPost with _$GalleryPost {
  const factory GalleryPost({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String userId,
    required UserLite user,
    required String title,
    required String? description,
    List<String>? fileIds,
    List<DriveFile>? files,
    List<String>? tags,
    required bool isSensitive,
    required num likedCount,
    bool? isLiked,
  }) = _GalleryPost;

  factory GalleryPost.fromJson(Map<String, dynamic> json) =>
      _$GalleryPostFromJson(json);
}

@freezed
abstract class EmojiSimple with _$EmojiSimple {
  const factory EmojiSimple({
    required List<String> aliases,
    required String name,
    required String? category,
    required String url,
    bool? localOnly,
    bool? isSensitive,
    List<String>? roleIdsThatCanBeUsedThisEmojiAsReaction,
  }) = _EmojiSimple;

  factory EmojiSimple.fromJson(Map<String, dynamic> json) =>
      _$EmojiSimpleFromJson(json);
}

@freezed
abstract class EmojiDetailed with _$EmojiDetailed {
  const factory EmojiDetailed({
    required String id,
    required List<String> aliases,
    required String name,
    required String? category,
    required String? host,
    required String url,
    required String? license,
    required bool isSensitive,
    required bool localOnly,
    required List<String> roleIdsThatCanBeUsedThisEmojiAsReaction,
  }) = _EmojiDetailed;

  factory EmojiDetailed.fromJson(Map<String, dynamic> json) =>
      _$EmojiDetailedFromJson(json);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class EmojiDetailedAdminRoleIdsThatCanBeUsedThisEmojiAsReactionItem {
  const EmojiDetailedAdminRoleIdsThatCanBeUsedThisEmojiAsReactionItem({
    required this.id,
    required this.name,
  });
  final String id;
  final String name;

  factory EmojiDetailedAdminRoleIdsThatCanBeUsedThisEmojiAsReactionItem.fromJson(
    Map<String, dynamic> json,
  ) => _$EmojiDetailedAdminRoleIdsThatCanBeUsedThisEmojiAsReactionItemFromJson(
    json,
  );

  Map<String, dynamic> toJson() =>
      _$EmojiDetailedAdminRoleIdsThatCanBeUsedThisEmojiAsReactionItemToJson(
        this,
      );
}

@freezed
abstract class EmojiDetailedAdmin with _$EmojiDetailedAdmin {
  const factory EmojiDetailedAdmin({
    required String id,
    required DateTime? updatedAt,
    required String name,
    required String? host,
    required String publicUrl,
    required String originalUrl,
    required String? uri,
    required String? type,
    required List<String> aliases,
    required String? category,
    required String? license,
    required bool localOnly,
    required bool isSensitive,
    required List<EmojiDetailedAdminRoleIdsThatCanBeUsedThisEmojiAsReactionItem>
    roleIdsThatCanBeUsedThisEmojiAsReaction,
  }) = _EmojiDetailedAdmin;

  factory EmojiDetailedAdmin.fromJson(Map<String, dynamic> json) =>
      _$EmojiDetailedAdminFromJson(json);
}

@freezed
abstract class Flash with _$Flash {
  const factory Flash({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String userId,
    required UserLite user,
    required String title,
    required String summary,
    required String script,
    required FlashVisibility visibility,
    required num likedCount,
    bool? isLiked,
  }) = _Flash;

  factory Flash.fromJson(Map<String, dynamic> json) => _$FlashFromJson(json);
}

@freezed
abstract class Signin with _$Signin {
  const factory Signin({
    required String id,
    required DateTime createdAt,
    required String ip,
    required JsonMap headers,
    required bool success,
  }) = _Signin;

  factory Signin.fromJson(Map<String, dynamic> json) => _$SigninFromJson(json);
}

@freezed
abstract class RoleCondFormulaLogics
    with _$RoleCondFormulaLogics
    implements RoleCondFormulaValue {
  const factory RoleCondFormulaLogics({
    required String id,
    required RoleCondFormulaLogicsType type,
    required List<RoleCondFormulaValue> values,
  }) = _RoleCondFormulaLogics;

  factory RoleCondFormulaLogics.fromJson(Map<String, dynamic> json) =>
      _$RoleCondFormulaLogicsFromJson(json);
}

@freezed
abstract class RoleCondFormulaValueNot
    with _$RoleCondFormulaValueNot
    implements RoleCondFormulaValue {
  const factory RoleCondFormulaValueNot({
    required String id,
    required RoleCondFormulaValueNotType type,
    required RoleCondFormulaValue value,
  }) = _RoleCondFormulaValueNot;

  factory RoleCondFormulaValueNot.fromJson(Map<String, dynamic> json) =>
      _$RoleCondFormulaValueNotFromJson(json);
}

@freezed
abstract class RoleCondFormulaValueIsLocalOrRemote
    with _$RoleCondFormulaValueIsLocalOrRemote
    implements RoleCondFormulaValue {
  const factory RoleCondFormulaValueIsLocalOrRemote({
    required String id,
    required RoleCondFormulaValueIsLocalOrRemoteType type,
  }) = _RoleCondFormulaValueIsLocalOrRemote;

  factory RoleCondFormulaValueIsLocalOrRemote.fromJson(
    Map<String, dynamic> json,
  ) => _$RoleCondFormulaValueIsLocalOrRemoteFromJson(json);
}

@freezed
abstract class RoleCondFormulaValueUserSettingBooleanSchema
    with _$RoleCondFormulaValueUserSettingBooleanSchema
    implements RoleCondFormulaValue {
  const factory RoleCondFormulaValueUserSettingBooleanSchema({
    required String id,
    required RoleCondFormulaValueUserSettingBooleanSchemaType type,
  }) = _RoleCondFormulaValueUserSettingBooleanSchema;

  factory RoleCondFormulaValueUserSettingBooleanSchema.fromJson(
    Map<String, dynamic> json,
  ) => _$RoleCondFormulaValueUserSettingBooleanSchemaFromJson(json);
}

@freezed
abstract class RoleCondFormulaValueAssignedRole
    with _$RoleCondFormulaValueAssignedRole
    implements RoleCondFormulaValue {
  const factory RoleCondFormulaValueAssignedRole({
    required String id,
    required RoleCondFormulaValueAssignedRoleType type,
    required String roleId,
  }) = _RoleCondFormulaValueAssignedRole;

  factory RoleCondFormulaValueAssignedRole.fromJson(
    Map<String, dynamic> json,
  ) => _$RoleCondFormulaValueAssignedRoleFromJson(json);
}

@freezed
abstract class RoleCondFormulaValueCreated
    with _$RoleCondFormulaValueCreated
    implements RoleCondFormulaValue {
  const factory RoleCondFormulaValueCreated({
    required String id,
    required RoleCondFormulaValueCreatedType type,
    required num sec,
  }) = _RoleCondFormulaValueCreated;

  factory RoleCondFormulaValueCreated.fromJson(Map<String, dynamic> json) =>
      _$RoleCondFormulaValueCreatedFromJson(json);
}

@freezed
abstract class RoleCondFormulaFollowersOrFollowingOrNotes
    with _$RoleCondFormulaFollowersOrFollowingOrNotes
    implements RoleCondFormulaValue {
  const factory RoleCondFormulaFollowersOrFollowingOrNotes({
    required String id,
    required RoleCondFormulaFollowersOrFollowingOrNotesType type,
    required num value,
  }) = _RoleCondFormulaFollowersOrFollowingOrNotes;

  factory RoleCondFormulaFollowersOrFollowingOrNotes.fromJson(
    Map<String, dynamic> json,
  ) => _$RoleCondFormulaFollowersOrFollowingOrNotesFromJson(json);
}

@freezed
abstract class RoleLite with _$RoleLite {
  const factory RoleLite({
    required String id,
    required String name,
    required String? color,
    required String? iconUrl,
    required String description,
    required bool isModerator,
    required bool isAdministrator,
    required int displayOrder,
  }) = _RoleLite;

  factory RoleLite.fromJson(Map<String, dynamic> json) =>
      _$RoleLiteFromJson(json);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class RolePolicy {
  const RolePolicy({this.value, this.priority, this.useDefault});
  final Object? value;
  final int? priority;
  final bool? useDefault;

  factory RolePolicy.fromJson(Map<String, dynamic> json) =>
      _$RolePolicyFromJson(json);

  Map<String, dynamic> toJson() => _$RolePolicyToJson(this);
}

@freezed
abstract class Role with _$Role {
  const factory Role({
    required String id,
    required String name,
    required String? color,
    required String? iconUrl,
    required String description,
    required bool isModerator,
    required bool isAdministrator,
    required int displayOrder,
    required DateTime createdAt,
    required DateTime updatedAt,
    required RoleTarget target,
    required RoleCondFormulaValue condFormula,
    required bool isPublic,
    required bool isExplorable,
    required bool asBadge,
    required bool preserveAssignmentOnMoveAccount,
    required bool canEditMembersByModerator,
    required Map<String, RolePolicy> policies,
    required int usersCount,
  }) = _Role;

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);
}

@freezed
abstract class RolePolicies with _$RolePolicies {
  const factory RolePolicies({
    required bool gtlAvailable,
    required bool ltlAvailable,
    required bool canPublicNote,
    required int mentionLimit,
    required bool canInvite,
    required int inviteLimit,
    required int inviteLimitCycle,
    required int inviteExpirationTime,
    required bool canManageCustomEmojis,
    required bool canManageAvatarDecorations,
    required bool canSearchNotes,
    required bool canSearchUsers,
    required bool canUseTranslator,
    required bool canHideAds,
    required bool canCreateChannel,
    required int driveCapacityMb,
    required int maxFileSizeMb,
    required List<String> uploadableFileTypes,
    required bool alwaysMarkNsfw,
    required bool canUpdateBioMedia,
    required int pinLimit,
    required int antennaLimit,
    required int wordMuteLimit,
    required int webhookLimit,
    required int clipLimit,
    required int noteEachClipsLimit,
    required int userListLimit,
    required int userEachUserListsLimit,
    required int rateLimitFactor,
    required int avatarDecorationLimit,
    required bool canImportAntennas,
    required bool canImportBlocking,
    required bool canImportFollowing,
    required bool canImportMuting,
    required bool canImportUserLists,
    required ChatAvailability chatAvailability,
    required int noteDraftLimit,
    required int scheduledNoteLimit,
    required bool watermarkAvailable,
  }) = _RolePolicies;

  factory RolePolicies.fromJson(Map<String, dynamic> json) =>
      _$RolePoliciesFromJson(json);
}

@freezed
abstract class ReversiGameLite with _$ReversiGameLite {
  const factory ReversiGameLite({
    required String id,
    required DateTime createdAt,
    required DateTime? startedAt,
    required DateTime? endedAt,
    required bool isStarted,
    required bool isEnded,
    required String user1Id,
    required String user2Id,
    required UserLite user1,
    required UserLite user2,
    required String? winnerId,
    required UserLite? winner,
    required String? surrenderedUserId,
    required String? timeoutUserId,
    required num? black,
    required ReversiGameLiteBw bw,
    required bool noIrregularRules,
    required bool isLlotheo,
    required bool canPutEverywhere,
    required bool loopedBoard,
    required num timeLimitForEachTurn,
  }) = _ReversiGameLite;

  factory ReversiGameLite.fromJson(Map<String, dynamic> json) =>
      _$ReversiGameLiteFromJson(json);
}

@freezed
abstract class ReversiGameDetailed with _$ReversiGameDetailed {
  const factory ReversiGameDetailed({
    required String id,
    required DateTime createdAt,
    required DateTime? startedAt,
    required DateTime? endedAt,
    required bool isStarted,
    required bool isEnded,
    required JsonMap? form1,
    required JsonMap? form2,
    required bool user1Ready,
    required bool user2Ready,
    required String user1Id,
    required String user2Id,
    required UserLite user1,
    required UserLite user2,
    required String? winnerId,
    required UserLite? winner,
    required String? surrenderedUserId,
    required String? timeoutUserId,
    required num? black,
    required ReversiGameDetailedBw bw,
    required bool noIrregularRules,
    required bool isLlotheo,
    required bool canPutEverywhere,
    required bool loopedBoard,
    required num timeLimitForEachTurn,
    required List<List<num>> logs,
    required List<String> map,
  }) = _ReversiGameDetailed;

  factory ReversiGameDetailed.fromJson(Map<String, dynamic> json) =>
      _$ReversiGameDetailedFromJson(json);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MetaAd {
  const MetaAd({
    required this.id,
    required this.url,
    required this.place,
    required this.ratio,
    required this.imageUrl,
    required this.dayOfWeek,
    this.isSensitive,
  });
  final String id;
  final String url;
  final String place;
  final num ratio;
  final String imageUrl;
  final int dayOfWeek;
  final bool? isSensitive;

  factory MetaAd.fromJson(Map<String, dynamic> json) => _$MetaAdFromJson(json);

  Map<String, dynamic> toJson() => _$MetaAdToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MetaLiteSentryForFrontendOptions {
  const MetaLiteSentryForFrontendOptions({required this.dsn});
  final String dsn;

  factory MetaLiteSentryForFrontendOptions.fromJson(
    Map<String, dynamic> json,
  ) => _$MetaLiteSentryForFrontendOptionsFromJson(json);

  Map<String, dynamic> toJson() =>
      _$MetaLiteSentryForFrontendOptionsToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MetaLiteSentryForFrontend {
  const MetaLiteSentryForFrontend({
    required this.options,
    this.vueIntegration,
    this.browserTracingIntegration,
    this.replayIntegration,
  });
  final MetaLiteSentryForFrontendOptions options;
  final JsonMap? vueIntegration;
  final JsonMap? browserTracingIntegration;
  final JsonMap? replayIntegration;

  factory MetaLiteSentryForFrontend.fromJson(Map<String, dynamic> json) =>
      _$MetaLiteSentryForFrontendFromJson(json);

  Map<String, dynamic> toJson() => _$MetaLiteSentryForFrontendToJson(this);
}

@freezed
abstract class MetaLite with _$MetaLite {
  const factory MetaLite({
    required String? maintainerName,
    required String? maintainerEmail,
    required String version,
    required bool providesTarball,
    required String? name,
    required String? shortName,
    required String uri,
    required String? description,
    required List<String> langs,
    required String? tosUrl,
    required String? repositoryUrl,
    required String? feedbackUrl,
    required String? defaultDarkTheme,
    required String? defaultLightTheme,
    required MetaClientOptions clientOptions,
    required bool disableRegistration,
    required bool emailRequiredForSignup,
    required bool enableHcaptcha,
    required String? hcaptchaSiteKey,
    required bool enableMcaptcha,
    required String? mcaptchaSiteKey,
    required String? mcaptchaInstanceUrl,
    required bool enableRecaptcha,
    required String? recaptchaSiteKey,
    required bool enableTurnstile,
    required String? turnstileSiteKey,
    required bool enableTestcaptcha,
    required String? googleAnalyticsMeasurementId,
    required String? swPublickey,
    required String mascotImageUrl,
    required String? bannerUrl,
    required String? serverErrorImageUrl,
    required String? infoImageUrl,
    required String? notFoundImageUrl,
    required String? iconUrl,
    required num maxNoteTextLength,
    required List<MetaAd> ads,
    required num notesPerOneAd,
    required bool enableEmail,
    required bool enableServiceWorker,
    required bool translatorAvailable,
    required MetaLiteSentryForFrontend? sentryForFrontend,
    required String mediaProxy,
    required bool enableUrlPreview,
    required String? backgroundImageUrl,
    required String? impressumUrl,
    required String? logoImageUrl,
    required String? privacyPolicyUrl,
    required String? inquiryUrl,
    required List<String> serverRules,
    required String? themeColor,
    required RolePolicies policies,
    required MetaNoteSearchableScope noteSearchableScope,
    required num maxFileSize,
    required MetaFederationMode federation,
  }) = _MetaLite;

  factory MetaLite.fromJson(Map<String, dynamic> json) =>
      _$MetaLiteFromJson(json);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MetaFeatures {
  const MetaFeatures({
    required this.registration,
    required this.emailRequiredForSignup,
    required this.localTimeline,
    required this.globalTimeline,
    required this.hcaptcha,
    required this.turnstile,
    required this.recaptcha,
    required this.objectStorage,
    required this.serviceWorker,
    this.miauth = true,
  });
  final bool registration;
  final bool emailRequiredForSignup;
  final bool localTimeline;
  final bool globalTimeline;
  final bool hcaptcha;
  final bool turnstile;
  final bool recaptcha;
  final bool objectStorage;
  final bool serviceWorker;
  final bool miauth;

  factory MetaFeatures.fromJson(Map<String, dynamic> json) =>
      _$MetaFeaturesFromJson(json);

  Map<String, dynamic> toJson() => _$MetaFeaturesToJson(this);
}

@freezed
abstract class MetaDetailedOnly with _$MetaDetailedOnly {
  const factory MetaDetailedOnly({
    MetaFeatures? features,
    required String? proxyAccountName,
    required bool requireSetup,
    required bool cacheRemoteFiles,
    required bool cacheRemoteSensitiveFiles,
  }) = _MetaDetailedOnly;

  factory MetaDetailedOnly.fromJson(Map<String, dynamic> json) =>
      _$MetaDetailedOnlyFromJson(json);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MetaDetailedAdsItem {
  const MetaDetailedAdsItem({
    required this.id,
    required this.url,
    required this.place,
    required this.ratio,
    required this.imageUrl,
    required this.dayOfWeek,
    this.isSensitive,
  });
  final String id;
  final String url;
  final String place;
  final num ratio;
  final String imageUrl;
  final int dayOfWeek;
  final bool? isSensitive;

  factory MetaDetailedAdsItem.fromJson(Map<String, dynamic> json) =>
      _$MetaDetailedAdsItemFromJson(json);

  Map<String, dynamic> toJson() => _$MetaDetailedAdsItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MetaDetailedSentryForFrontendOptions {
  const MetaDetailedSentryForFrontendOptions({required this.dsn});
  final String dsn;

  factory MetaDetailedSentryForFrontendOptions.fromJson(
    Map<String, dynamic> json,
  ) => _$MetaDetailedSentryForFrontendOptionsFromJson(json);

  Map<String, dynamic> toJson() =>
      _$MetaDetailedSentryForFrontendOptionsToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MetaDetailedSentryForFrontend {
  const MetaDetailedSentryForFrontend({
    required this.options,
    this.vueIntegration,
    this.browserTracingIntegration,
    this.replayIntegration,
  });
  final MetaDetailedSentryForFrontendOptions options;
  final JsonMap? vueIntegration;
  final JsonMap? browserTracingIntegration;
  final JsonMap? replayIntegration;

  factory MetaDetailedSentryForFrontend.fromJson(Map<String, dynamic> json) =>
      _$MetaDetailedSentryForFrontendFromJson(json);

  Map<String, dynamic> toJson() => _$MetaDetailedSentryForFrontendToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MetaDetailedFeatures {
  const MetaDetailedFeatures({
    required this.registration,
    required this.emailRequiredForSignup,
    required this.localTimeline,
    required this.globalTimeline,
    required this.hcaptcha,
    required this.turnstile,
    required this.recaptcha,
    required this.objectStorage,
    required this.serviceWorker,
    this.miauth = true,
  });
  final bool registration;
  final bool emailRequiredForSignup;
  final bool localTimeline;
  final bool globalTimeline;
  final bool hcaptcha;
  final bool turnstile;
  final bool recaptcha;
  final bool objectStorage;
  final bool serviceWorker;
  final bool miauth;

  factory MetaDetailedFeatures.fromJson(Map<String, dynamic> json) =>
      _$MetaDetailedFeaturesFromJson(json);

  Map<String, dynamic> toJson() => _$MetaDetailedFeaturesToJson(this);
}

@freezed
abstract class MetaDetailed with _$MetaDetailed {
  const factory MetaDetailed({
    required String? maintainerName,
    required String? maintainerEmail,
    required String version,
    required bool providesTarball,
    required String? name,
    required String? shortName,
    required String uri,
    required String? description,
    required List<String> langs,
    required String? tosUrl,
    required String? repositoryUrl,
    required String? feedbackUrl,
    required String? defaultDarkTheme,
    required String? defaultLightTheme,
    required MetaClientOptions clientOptions,
    required bool disableRegistration,
    required bool emailRequiredForSignup,
    required bool enableHcaptcha,
    required String? hcaptchaSiteKey,
    required bool enableMcaptcha,
    required String? mcaptchaSiteKey,
    required String? mcaptchaInstanceUrl,
    required bool enableRecaptcha,
    required String? recaptchaSiteKey,
    required bool enableTurnstile,
    required String? turnstileSiteKey,
    required bool enableTestcaptcha,
    required String? googleAnalyticsMeasurementId,
    required String? swPublickey,
    required String mascotImageUrl,
    required String? bannerUrl,
    required String? serverErrorImageUrl,
    required String? infoImageUrl,
    required String? notFoundImageUrl,
    required String? iconUrl,
    required num maxNoteTextLength,
    required List<MetaDetailedAdsItem> ads,
    required num notesPerOneAd,
    required bool enableEmail,
    required bool enableServiceWorker,
    required bool translatorAvailable,
    required MetaDetailedSentryForFrontend? sentryForFrontend,
    required String mediaProxy,
    required bool enableUrlPreview,
    required String? backgroundImageUrl,
    required String? impressumUrl,
    required String? logoImageUrl,
    required String? privacyPolicyUrl,
    required String? inquiryUrl,
    required List<String> serverRules,
    required String? themeColor,
    required RolePolicies policies,
    required MetaDetailedNoteSearchableScope noteSearchableScope,
    required num maxFileSize,
    required MetaDetailedFederation federation,
    MetaDetailedFeatures? features,
    required String? proxyAccountName,
    required bool requireSetup,
    required bool cacheRemoteFiles,
    required bool cacheRemoteSensitiveFiles,
  }) = _MetaDetailed;

  factory MetaDetailed.fromJson(Map<String, dynamic> json) =>
      _$MetaDetailedFromJson(json);
}

@freezed
abstract class MetaClientOptions with _$MetaClientOptions {
  const factory MetaClientOptions({
    required MetaEntrancePageStyle entrancePageStyle,
    required bool showTimelineForVisitor,
    required bool showActivitiesForVisitor,
  }) = _MetaClientOptions;

  factory MetaClientOptions.fromJson(Map<String, dynamic> json) =>
      _$MetaClientOptionsFromJson(json);
}

@freezed
abstract class UserWebhook with _$UserWebhook {
  const factory UserWebhook({
    required String id,
    required String userId,
    required String name,
    @JsonKey(name: 'on') required List<UserWebhookOnItem> onValue,
    required String url,
    required String secret,
    required bool active,
    required DateTime? latestSentAt,
    required int? latestStatus,
  }) = _UserWebhook;

  factory UserWebhook.fromJson(Map<String, dynamic> json) =>
      _$UserWebhookFromJson(json);
}

@freezed
abstract class SystemWebhook with _$SystemWebhook {
  const factory SystemWebhook({
    required String id,
    required bool isActive,
    required DateTime updatedAt,
    required DateTime? latestSentAt,
    required num? latestStatus,
    required String name,
    @JsonKey(name: 'on') required List<SystemWebhookOnItem> onValue,
    required String url,
    required String secret,
  }) = _SystemWebhook;

  factory SystemWebhook.fromJson(Map<String, dynamic> json) =>
      _$SystemWebhookFromJson(json);
}

@freezed
abstract class AbuseReportNotificationRecipient
    with _$AbuseReportNotificationRecipient {
  const factory AbuseReportNotificationRecipient({
    required String id,
    required bool isActive,
    required DateTime updatedAt,
    required String name,
    required AbuseReportNotificationRecipientMethod method,
    String? userId,
    UserLite? user,
    String? systemWebhookId,
    SystemWebhook? systemWebhook,
  }) = _AbuseReportNotificationRecipient;

  factory AbuseReportNotificationRecipient.fromJson(
    Map<String, dynamic> json,
  ) => _$AbuseReportNotificationRecipientFromJson(json);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChatMessageReactionsItem {
  const ChatMessageReactionsItem({required this.reaction, required this.user});
  final String reaction;
  final UserLite user;

  factory ChatMessageReactionsItem.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageReactionsItemFromJson(json);

  Map<String, dynamic> toJson() => _$ChatMessageReactionsItemToJson(this);
}

@freezed
abstract class ChatMessage with _$ChatMessage {
  const factory ChatMessage({
    required String id,
    required DateTime createdAt,
    required String fromUserId,
    required UserLite fromUser,
    String? toUserId,
    UserLite? toUser,
    String? toRoomId,
    ChatRoom? toRoom,
    String? text,
    String? fileId,
    DriveFile? file,
    bool? isRead,
    required List<ChatMessageReactionsItem> reactions,
  }) = _ChatMessage;

  factory ChatMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageFromJson(json);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChatMessageLiteReactionsItem {
  const ChatMessageLiteReactionsItem({required this.reaction, this.user});
  final String reaction;
  final UserLite? user;

  factory ChatMessageLiteReactionsItem.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageLiteReactionsItemFromJson(json);

  Map<String, dynamic> toJson() => _$ChatMessageLiteReactionsItemToJson(this);
}

@freezed
abstract class ChatMessageLite with _$ChatMessageLite {
  const factory ChatMessageLite({
    required String id,
    required DateTime createdAt,
    required String fromUserId,
    UserLite? fromUser,
    String? toUserId,
    String? toRoomId,
    String? text,
    String? fileId,
    DriveFile? file,
    required List<ChatMessageLiteReactionsItem> reactions,
  }) = _ChatMessageLite;

  factory ChatMessageLite.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageLiteFromJson(json);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChatMessageLiteFor1on1ReactionsItem {
  const ChatMessageLiteFor1on1ReactionsItem({required this.reaction});
  final String reaction;

  factory ChatMessageLiteFor1on1ReactionsItem.fromJson(
    Map<String, dynamic> json,
  ) => _$ChatMessageLiteFor1on1ReactionsItemFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ChatMessageLiteFor1on1ReactionsItemToJson(this);
}

@freezed
abstract class ChatMessageLiteFor1on1 with _$ChatMessageLiteFor1on1 {
  const factory ChatMessageLiteFor1on1({
    required String id,
    required DateTime createdAt,
    required String fromUserId,
    required String toUserId,
    String? text,
    String? fileId,
    DriveFile? file,
    required List<ChatMessageLiteFor1on1ReactionsItem> reactions,
  }) = _ChatMessageLiteFor1on1;

  factory ChatMessageLiteFor1on1.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageLiteFor1on1FromJson(json);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChatMessageLiteForRoomReactionsItem {
  const ChatMessageLiteForRoomReactionsItem({
    required this.reaction,
    required this.user,
  });
  final String reaction;
  final UserLite user;

  factory ChatMessageLiteForRoomReactionsItem.fromJson(
    Map<String, dynamic> json,
  ) => _$ChatMessageLiteForRoomReactionsItemFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ChatMessageLiteForRoomReactionsItemToJson(this);
}

@freezed
abstract class ChatMessageLiteForRoom with _$ChatMessageLiteForRoom {
  const factory ChatMessageLiteForRoom({
    required String id,
    required DateTime createdAt,
    required String fromUserId,
    required UserLite fromUser,
    required String toRoomId,
    String? text,
    String? fileId,
    DriveFile? file,
    required List<ChatMessageLiteForRoomReactionsItem> reactions,
  }) = _ChatMessageLiteForRoom;

  factory ChatMessageLiteForRoom.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageLiteForRoomFromJson(json);
}

@freezed
abstract class ChatRoom with _$ChatRoom {
  const factory ChatRoom({
    required String id,
    required DateTime createdAt,
    required String ownerId,
    required UserLite owner,
    required String name,
    required String description,
    bool? isMuted,
    bool? invitationExists,
  }) = _ChatRoom;

  factory ChatRoom.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomFromJson(json);
}

@freezed
abstract class ChatRoomInvitation with _$ChatRoomInvitation {
  const factory ChatRoomInvitation({
    required String id,
    required DateTime createdAt,
    required String userId,
    required UserLite user,
    required String roomId,
    required ChatRoom room,
  }) = _ChatRoomInvitation;

  factory ChatRoomInvitation.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomInvitationFromJson(json);
}

@freezed
abstract class ChatRoomMembership with _$ChatRoomMembership {
  const factory ChatRoomMembership({
    required String id,
    required DateTime createdAt,
    required String userId,
    UserLite? user,
    required String roomId,
    ChatRoom? room,
  }) = _ChatRoomMembership;

  factory ChatRoomMembership.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomMembershipFromJson(json);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotificationReactionGroupedReactionsItem {
  const NotificationReactionGroupedReactionsItem({
    required this.user,
    required this.reaction,
  });
  final UserLite user;
  final String reaction;

  factory NotificationReactionGroupedReactionsItem.fromJson(
    Map<String, dynamic> json,
  ) => _$NotificationReactionGroupedReactionsItemFromJson(json);

  Map<String, dynamic> toJson() =>
      _$NotificationReactionGroupedReactionsItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotificationNote extends Notification {
  const NotificationNote({
    required this.id,
    required this.createdAt,
    required this.type,
    required this.user,
    required this.userId,
    required this.note,
  }) : super();
  final String id;
  final DateTime createdAt;
  final String type;
  final UserLite user;
  final String userId;
  final Note note;

  factory NotificationNote.fromJson(Map<String, dynamic> json) =>
      _$NotificationNoteFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$NotificationNoteToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotificationMention extends Notification {
  const NotificationMention({
    required this.id,
    required this.createdAt,
    required this.type,
    required this.user,
    required this.userId,
    required this.note,
  }) : super();
  final String id;
  final DateTime createdAt;
  final String type;
  final UserLite user;
  final String userId;
  final Note note;

  factory NotificationMention.fromJson(Map<String, dynamic> json) =>
      _$NotificationMentionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$NotificationMentionToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotificationReply extends Notification {
  const NotificationReply({
    required this.id,
    required this.createdAt,
    required this.type,
    required this.user,
    required this.userId,
    required this.note,
  }) : super();
  final String id;
  final DateTime createdAt;
  final String type;
  final UserLite user;
  final String userId;
  final Note note;

  factory NotificationReply.fromJson(Map<String, dynamic> json) =>
      _$NotificationReplyFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$NotificationReplyToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotificationRenote extends Notification {
  const NotificationRenote({
    required this.id,
    required this.createdAt,
    required this.type,
    required this.user,
    required this.userId,
    required this.note,
  }) : super();
  final String id;
  final DateTime createdAt;
  final String type;
  final UserLite user;
  final String userId;
  final Note note;

  factory NotificationRenote.fromJson(Map<String, dynamic> json) =>
      _$NotificationRenoteFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$NotificationRenoteToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotificationQuote extends Notification {
  const NotificationQuote({
    required this.id,
    required this.createdAt,
    required this.type,
    required this.user,
    required this.userId,
    required this.note,
  }) : super();
  final String id;
  final DateTime createdAt;
  final String type;
  final UserLite user;
  final String userId;
  final Note note;

  factory NotificationQuote.fromJson(Map<String, dynamic> json) =>
      _$NotificationQuoteFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$NotificationQuoteToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotificationReaction extends Notification {
  const NotificationReaction({
    required this.id,
    required this.createdAt,
    required this.type,
    required this.user,
    required this.userId,
    required this.note,
    required this.reaction,
  }) : super();
  final String id;
  final DateTime createdAt;
  final String type;
  final UserLite user;
  final String userId;
  final Note note;
  final String reaction;

  factory NotificationReaction.fromJson(Map<String, dynamic> json) =>
      _$NotificationReactionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$NotificationReactionToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotificationPollEnded extends Notification {
  const NotificationPollEnded({
    required this.id,
    required this.createdAt,
    required this.type,
    required this.user,
    required this.userId,
    required this.note,
  }) : super();
  final String id;
  final DateTime createdAt;
  final String type;
  final UserLite user;
  final String userId;
  final Note note;

  factory NotificationPollEnded.fromJson(Map<String, dynamic> json) =>
      _$NotificationPollEndedFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$NotificationPollEndedToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotificationScheduledNotePosted extends Notification {
  const NotificationScheduledNotePosted({
    required this.id,
    required this.createdAt,
    required this.type,
    required this.note,
  }) : super();
  final String id;
  final DateTime createdAt;
  final String type;
  final Note note;

  factory NotificationScheduledNotePosted.fromJson(Map<String, dynamic> json) =>
      _$NotificationScheduledNotePostedFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$NotificationScheduledNotePostedToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotificationScheduledNotePostFailed extends Notification {
  const NotificationScheduledNotePostFailed({
    required this.id,
    required this.createdAt,
    required this.type,
    required this.noteDraft,
  }) : super();
  final String id;
  final DateTime createdAt;
  final String type;
  final NoteDraft noteDraft;

  factory NotificationScheduledNotePostFailed.fromJson(
    Map<String, dynamic> json,
  ) => _$NotificationScheduledNotePostFailedFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$NotificationScheduledNotePostFailedToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotificationFollow extends Notification {
  const NotificationFollow({
    required this.id,
    required this.createdAt,
    required this.type,
    required this.user,
    required this.userId,
  }) : super();
  final String id;
  final DateTime createdAt;
  final String type;
  final UserLite user;
  final String userId;

  factory NotificationFollow.fromJson(Map<String, dynamic> json) =>
      _$NotificationFollowFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$NotificationFollowToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotificationReceiveFollowRequest extends Notification {
  const NotificationReceiveFollowRequest({
    required this.id,
    required this.createdAt,
    required this.type,
    required this.user,
    required this.userId,
  }) : super();
  final String id;
  final DateTime createdAt;
  final String type;
  final UserLite user;
  final String userId;

  factory NotificationReceiveFollowRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$NotificationReceiveFollowRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$NotificationReceiveFollowRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotificationFollowRequestAccepted extends Notification {
  const NotificationFollowRequestAccepted({
    required this.id,
    required this.createdAt,
    required this.type,
    required this.user,
    required this.userId,
    @JsonKey(name: 'message', includeIfNull: true) required this.message,
  }) : super();
  final String id;
  final DateTime createdAt;
  final String type;
  final UserLite user;
  final String userId;
  final String? message;

  factory NotificationFollowRequestAccepted.fromJson(
    Map<String, dynamic> json,
  ) => _$NotificationFollowRequestAcceptedFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$NotificationFollowRequestAcceptedToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotificationRoleAssigned extends Notification {
  const NotificationRoleAssigned({
    required this.id,
    required this.createdAt,
    required this.type,
    required this.role,
  }) : super();
  final String id;
  final DateTime createdAt;
  final String type;
  final Role role;

  factory NotificationRoleAssigned.fromJson(Map<String, dynamic> json) =>
      _$NotificationRoleAssignedFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$NotificationRoleAssignedToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotificationChatRoomInvitationReceived extends Notification {
  const NotificationChatRoomInvitationReceived({
    required this.id,
    required this.createdAt,
    required this.type,
    required this.invitation,
  }) : super();
  final String id;
  final DateTime createdAt;
  final String type;
  final ChatRoomInvitation invitation;

  factory NotificationChatRoomInvitationReceived.fromJson(
    Map<String, dynamic> json,
  ) => _$NotificationChatRoomInvitationReceivedFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$NotificationChatRoomInvitationReceivedToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotificationAchievementEarned extends Notification {
  const NotificationAchievementEarned({
    required this.id,
    required this.createdAt,
    required this.type,
    required this.achievement,
  }) : super();
  final String id;
  final DateTime createdAt;
  final String type;
  final AchievementName achievement;

  factory NotificationAchievementEarned.fromJson(Map<String, dynamic> json) =>
      _$NotificationAchievementEarnedFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$NotificationAchievementEarnedToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotificationExportCompleted extends Notification {
  const NotificationExportCompleted({
    required this.id,
    required this.createdAt,
    required this.type,
    required this.exportedEntity,
    required this.fileId,
  }) : super();
  final String id;
  final DateTime createdAt;
  final String type;
  final NotificationExportCompletedExportedEntity exportedEntity;
  final String fileId;

  factory NotificationExportCompleted.fromJson(Map<String, dynamic> json) =>
      _$NotificationExportCompletedFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$NotificationExportCompletedToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotificationLogin extends Notification {
  const NotificationLogin({
    required this.id,
    required this.createdAt,
    required this.type,
  }) : super();
  final String id;
  final DateTime createdAt;
  final String type;

  factory NotificationLogin.fromJson(Map<String, dynamic> json) =>
      _$NotificationLoginFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$NotificationLoginToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotificationCreateToken extends Notification {
  const NotificationCreateToken({
    required this.id,
    required this.createdAt,
    required this.type,
  }) : super();
  final String id;
  final DateTime createdAt;
  final String type;

  factory NotificationCreateToken.fromJson(Map<String, dynamic> json) =>
      _$NotificationCreateTokenFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$NotificationCreateTokenToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotificationApp extends Notification {
  const NotificationApp({
    required this.id,
    required this.createdAt,
    required this.type,
    required this.body,
    @JsonKey(name: 'header', includeIfNull: true) required this.header,
    @JsonKey(name: 'icon', includeIfNull: true) required this.icon,
  }) : super();
  final String id;
  final DateTime createdAt;
  final String type;
  final String body;
  final String? header;
  final String? icon;

  factory NotificationApp.fromJson(Map<String, dynamic> json) =>
      _$NotificationAppFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$NotificationAppToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotificationReactionGrouped extends Notification {
  const NotificationReactionGrouped({
    required this.id,
    required this.createdAt,
    required this.type,
    required this.note,
    required this.reactions,
  }) : super();
  final String id;
  final DateTime createdAt;
  final String type;
  final Note note;
  final List<NotificationReactionGroupedReactionsItem> reactions;

  factory NotificationReactionGrouped.fromJson(Map<String, dynamic> json) =>
      _$NotificationReactionGroupedFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$NotificationReactionGroupedToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotificationRenoteGrouped extends Notification {
  const NotificationRenoteGrouped({
    required this.id,
    required this.createdAt,
    required this.type,
    required this.note,
    required this.users,
  }) : super();
  final String id;
  final DateTime createdAt;
  final String type;
  final Note note;
  final List<UserLite> users;

  factory NotificationRenoteGrouped.fromJson(Map<String, dynamic> json) =>
      _$NotificationRenoteGroupedFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$NotificationRenoteGroupedToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotificationTest extends Notification {
  const NotificationTest({
    required this.id,
    required this.createdAt,
    required this.type,
  }) : super();
  final String id;
  final DateTime createdAt;
  final String type;

  factory NotificationTest.fromJson(Map<String, dynamic> json) =>
      _$NotificationTestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$NotificationTestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class PageBlockText extends PageBlock {
  const PageBlockText({
    required this.id,
    required this.type,
    required this.text,
  }) : super();
  final String id;
  final String type;
  final String text;

  factory PageBlockText.fromJson(Map<String, dynamic> json) =>
      _$PageBlockTextFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PageBlockTextToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class PageBlockSection extends PageBlock {
  const PageBlockSection({
    required this.id,
    required this.type,
    required this.title,
    required this.children,
  }) : super();
  final String id;
  final String type;
  final String title;
  final List<PageBlock> children;

  factory PageBlockSection.fromJson(Map<String, dynamic> json) =>
      _$PageBlockSectionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PageBlockSectionToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class PageBlockImage extends PageBlock {
  const PageBlockImage({
    required this.id,
    required this.type,
    @JsonKey(name: 'fileId', includeIfNull: true) required this.fileId,
  }) : super();
  final String id;
  final String type;
  final String? fileId;

  factory PageBlockImage.fromJson(Map<String, dynamic> json) =>
      _$PageBlockImageFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PageBlockImageToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class PageBlockNote extends PageBlock {
  const PageBlockNote({
    required this.id,
    required this.type,
    required this.detailed,
    @JsonKey(name: 'note', includeIfNull: true) required this.note,
  }) : super();
  final String id;
  final String type;
  final bool detailed;
  final String? note;

  factory PageBlockNote.fromJson(Map<String, dynamic> json) =>
      _$PageBlockNoteFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PageBlockNoteToJson(this);
}
