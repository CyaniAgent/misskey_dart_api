// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdminAbuseReportNotificationRecipientCreateRequest
_$AdminAbuseReportNotificationRecipientCreateRequestFromJson(
  Map<String, dynamic> json,
) => AdminAbuseReportNotificationRecipientCreateRequest(
  isActive: json['isActive'] as bool,
  name: json['name'] as String,
  method: $enumDecode(
    _$AdminAbuseReportNotificationRecipientCreateRequestMethodEnumMap,
    json['method'],
  ),
  userId: json['userId'] as String?,
  systemWebhookId: json['systemWebhookId'] as String?,
);

Map<String, dynamic> _$AdminAbuseReportNotificationRecipientCreateRequestToJson(
  AdminAbuseReportNotificationRecipientCreateRequest instance,
) => <String, dynamic>{
  'isActive': instance.isActive,
  'name': instance.name,
  'method':
      _$AdminAbuseReportNotificationRecipientCreateRequestMethodEnumMap[instance
          .method]!,
  'userId': ?instance.userId,
  'systemWebhookId': ?instance.systemWebhookId,
};

const _$AdminAbuseReportNotificationRecipientCreateRequestMethodEnumMap = {
  AdminAbuseReportNotificationRecipientCreateRequestMethod.email: 'email',
  AdminAbuseReportNotificationRecipientCreateRequestMethod.webhook: 'webhook',
};

AdminAbuseReportNotificationRecipientDeleteRequest
_$AdminAbuseReportNotificationRecipientDeleteRequestFromJson(
  Map<String, dynamic> json,
) => AdminAbuseReportNotificationRecipientDeleteRequest(
  id: json['id'] as String,
);

Map<String, dynamic> _$AdminAbuseReportNotificationRecipientDeleteRequestToJson(
  AdminAbuseReportNotificationRecipientDeleteRequest instance,
) => <String, dynamic>{'id': instance.id};

AdminAbuseReportNotificationRecipientListRequest
_$AdminAbuseReportNotificationRecipientListRequestFromJson(
  Map<String, dynamic> json,
) => AdminAbuseReportNotificationRecipientListRequest(
  method: (json['method'] as List<dynamic>?)
      ?.map(
        (e) => $enumDecode(
          _$AdminAbuseReportNotificationRecipientListRequestMethodItemEnumMap,
          e,
        ),
      )
      .toList(),
);

Map<String, dynamic> _$AdminAbuseReportNotificationRecipientListRequestToJson(
  AdminAbuseReportNotificationRecipientListRequest instance,
) => <String, dynamic>{
  'method': ?instance.method
      ?.map(
        (e) =>
            _$AdminAbuseReportNotificationRecipientListRequestMethodItemEnumMap[e]!,
      )
      .toList(),
};

const _$AdminAbuseReportNotificationRecipientListRequestMethodItemEnumMap = {
  AdminAbuseReportNotificationRecipientListRequestMethodItem.email: 'email',
  AdminAbuseReportNotificationRecipientListRequestMethodItem.webhook: 'webhook',
};

AdminAbuseReportNotificationRecipientShowRequest
_$AdminAbuseReportNotificationRecipientShowRequestFromJson(
  Map<String, dynamic> json,
) => AdminAbuseReportNotificationRecipientShowRequest(id: json['id'] as String);

Map<String, dynamic> _$AdminAbuseReportNotificationRecipientShowRequestToJson(
  AdminAbuseReportNotificationRecipientShowRequest instance,
) => <String, dynamic>{'id': instance.id};

AdminAbuseReportNotificationRecipientUpdateRequest
_$AdminAbuseReportNotificationRecipientUpdateRequestFromJson(
  Map<String, dynamic> json,
) => AdminAbuseReportNotificationRecipientUpdateRequest(
  id: json['id'] as String,
  isActive: json['isActive'] as bool,
  name: json['name'] as String,
  method: $enumDecode(
    _$AdminAbuseReportNotificationRecipientUpdateRequestMethodEnumMap,
    json['method'],
  ),
  userId: json['userId'] as String?,
  systemWebhookId: json['systemWebhookId'] as String?,
);

Map<String, dynamic> _$AdminAbuseReportNotificationRecipientUpdateRequestToJson(
  AdminAbuseReportNotificationRecipientUpdateRequest instance,
) => <String, dynamic>{
  'id': instance.id,
  'isActive': instance.isActive,
  'name': instance.name,
  'method':
      _$AdminAbuseReportNotificationRecipientUpdateRequestMethodEnumMap[instance
          .method]!,
  'userId': ?instance.userId,
  'systemWebhookId': ?instance.systemWebhookId,
};

const _$AdminAbuseReportNotificationRecipientUpdateRequestMethodEnumMap = {
  AdminAbuseReportNotificationRecipientUpdateRequestMethod.email: 'email',
  AdminAbuseReportNotificationRecipientUpdateRequestMethod.webhook: 'webhook',
};

AdminAbuseUserReportsRequest _$AdminAbuseUserReportsRequestFromJson(
  Map<String, dynamic> json,
) => AdminAbuseUserReportsRequest(
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
  state: json['state'] as String?,
  reporterOrigin:
      $enumDecodeNullable(
        _$AdminAbuseUserReportsRequestReporterOriginEnumMap,
        json['reporterOrigin'],
      ) ??
      AdminAbuseUserReportsRequestReporterOrigin.combined,
  targetUserOrigin:
      $enumDecodeNullable(
        _$AdminAbuseUserReportsRequestTargetUserOriginEnumMap,
        json['targetUserOrigin'],
      ) ??
      AdminAbuseUserReportsRequestTargetUserOrigin.combined,
);

Map<String, dynamic> _$AdminAbuseUserReportsRequestToJson(
  AdminAbuseUserReportsRequest instance,
) => <String, dynamic>{
  'limit': instance.limit,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
  'state': ?instance.state,
  'reporterOrigin':
      _$AdminAbuseUserReportsRequestReporterOriginEnumMap[instance
          .reporterOrigin]!,
  'targetUserOrigin':
      _$AdminAbuseUserReportsRequestTargetUserOriginEnumMap[instance
          .targetUserOrigin]!,
};

const _$AdminAbuseUserReportsRequestReporterOriginEnumMap = {
  AdminAbuseUserReportsRequestReporterOrigin.combined: 'combined',
  AdminAbuseUserReportsRequestReporterOrigin.local: 'local',
  AdminAbuseUserReportsRequestReporterOrigin.remote: 'remote',
};

const _$AdminAbuseUserReportsRequestTargetUserOriginEnumMap = {
  AdminAbuseUserReportsRequestTargetUserOrigin.combined: 'combined',
  AdminAbuseUserReportsRequestTargetUserOrigin.local: 'local',
  AdminAbuseUserReportsRequestTargetUserOrigin.remote: 'remote',
};

AdminAbuseUserReportsResponseItem _$AdminAbuseUserReportsResponseItemFromJson(
  Map<String, dynamic> json,
) => AdminAbuseUserReportsResponseItem(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  comment: json['comment'] as String,
  resolved: json['resolved'] as bool,
  reporterId: json['reporterId'] as String,
  targetUserId: json['targetUserId'] as String,
  assigneeId: json['assigneeId'] as String?,
  reporter: UserDetailedNotMe.fromJson(
    json['reporter'] as Map<String, dynamic>,
  ),
  targetUser: UserDetailedNotMe.fromJson(
    json['targetUser'] as Map<String, dynamic>,
  ),
  assignee: json['assignee'] == null
      ? null
      : UserDetailedNotMe.fromJson(json['assignee'] as Map<String, dynamic>),
  forwarded: json['forwarded'] as bool,
  resolvedAs: $enumDecodeNullable(
    _$AdminAbuseUserReportsResponseItemResolvedAsEnumMap,
    json['resolvedAs'],
  ),
  moderationNote: json['moderationNote'] as String,
);

Map<String, dynamic> _$AdminAbuseUserReportsResponseItemToJson(
  AdminAbuseUserReportsResponseItem instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'comment': instance.comment,
  'resolved': instance.resolved,
  'reporterId': instance.reporterId,
  'targetUserId': instance.targetUserId,
  'assigneeId': instance.assigneeId,
  'reporter': instance.reporter.toJson(),
  'targetUser': instance.targetUser.toJson(),
  'assignee': instance.assignee?.toJson(),
  'forwarded': instance.forwarded,
  'resolvedAs':
      _$AdminAbuseUserReportsResponseItemResolvedAsEnumMap[instance.resolvedAs],
  'moderationNote': instance.moderationNote,
};

const _$AdminAbuseUserReportsResponseItemResolvedAsEnumMap = {
  AdminAbuseUserReportsResponseItemResolvedAs.accept: 'accept',
  AdminAbuseUserReportsResponseItemResolvedAs.reject: 'reject',
};

AdminAccountsCreateRequest _$AdminAccountsCreateRequestFromJson(
  Map<String, dynamic> json,
) => AdminAccountsCreateRequest(
  username: json['username'] as String,
  password: json['password'] as String,
  setupPassword: json['setupPassword'] as String?,
);

Map<String, dynamic> _$AdminAccountsCreateRequestToJson(
  AdminAccountsCreateRequest instance,
) => <String, dynamic>{
  'username': instance.username,
  'password': instance.password,
  'setupPassword': ?instance.setupPassword,
};

AdminAccountsCreateResponseAvatarDecorationsItem
_$AdminAccountsCreateResponseAvatarDecorationsItemFromJson(
  Map<String, dynamic> json,
) => AdminAccountsCreateResponseAvatarDecorationsItem(
  id: json['id'] as String,
  angle: json['angle'] as num?,
  flipH: json['flipH'] as bool?,
  url: json['url'] as String,
  offsetX: json['offsetX'] as num?,
  offsetY: json['offsetY'] as num?,
);

Map<String, dynamic> _$AdminAccountsCreateResponseAvatarDecorationsItemToJson(
  AdminAccountsCreateResponseAvatarDecorationsItem instance,
) => <String, dynamic>{
  'id': instance.id,
  'angle': ?instance.angle,
  'flipH': ?instance.flipH,
  'url': instance.url,
  'offsetX': ?instance.offsetX,
  'offsetY': ?instance.offsetY,
};

AdminAccountsCreateResponseInstance
_$AdminAccountsCreateResponseInstanceFromJson(Map<String, dynamic> json) =>
    AdminAccountsCreateResponseInstance(
      name: json['name'] as String?,
      softwareName: json['softwareName'] as String?,
      softwareVersion: json['softwareVersion'] as String?,
      iconUrl: json['iconUrl'] as String?,
      faviconUrl: json['faviconUrl'] as String?,
      themeColor: json['themeColor'] as String?,
    );

Map<String, dynamic> _$AdminAccountsCreateResponseInstanceToJson(
  AdminAccountsCreateResponseInstance instance,
) => <String, dynamic>{
  'name': instance.name,
  'softwareName': instance.softwareName,
  'softwareVersion': instance.softwareVersion,
  'iconUrl': instance.iconUrl,
  'faviconUrl': instance.faviconUrl,
  'themeColor': instance.themeColor,
};

AdminAccountsCreateResponseBadgeRolesItem
_$AdminAccountsCreateResponseBadgeRolesItemFromJson(
  Map<String, dynamic> json,
) => AdminAccountsCreateResponseBadgeRolesItem(
  name: json['name'] as String,
  iconUrl: json['iconUrl'] as String?,
  displayOrder: json['displayOrder'] as num,
);

Map<String, dynamic> _$AdminAccountsCreateResponseBadgeRolesItemToJson(
  AdminAccountsCreateResponseBadgeRolesItem instance,
) => <String, dynamic>{
  'name': instance.name,
  'iconUrl': instance.iconUrl,
  'displayOrder': instance.displayOrder,
};

AdminAccountsCreateResponseFieldsItem
_$AdminAccountsCreateResponseFieldsItemFromJson(Map<String, dynamic> json) =>
    AdminAccountsCreateResponseFieldsItem(
      name: json['name'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$AdminAccountsCreateResponseFieldsItemToJson(
  AdminAccountsCreateResponseFieldsItem instance,
) => <String, dynamic>{'name': instance.name, 'value': instance.value};

AdminAccountsCreateResponseNotificationRecieveConfig
_$AdminAccountsCreateResponseNotificationRecieveConfigFromJson(
  Map<String, dynamic> json,
) => AdminAccountsCreateResponseNotificationRecieveConfig(
  note: json['note'] as Map<String, dynamic>?,
  follow: json['follow'] as Map<String, dynamic>?,
  mention: json['mention'] as Map<String, dynamic>?,
  reply: json['reply'] as Map<String, dynamic>?,
  renote: json['renote'] as Map<String, dynamic>?,
  quote: json['quote'] as Map<String, dynamic>?,
  reaction: json['reaction'] as Map<String, dynamic>?,
  pollEnded: json['pollEnded'] as Map<String, dynamic>?,
  scheduledNotePosted: json['scheduledNotePosted'] as Map<String, dynamic>?,
  scheduledNotePostFailed:
      json['scheduledNotePostFailed'] as Map<String, dynamic>?,
  receiveFollowRequest: json['receiveFollowRequest'] as Map<String, dynamic>?,
  followRequestAccepted: json['followRequestAccepted'] as Map<String, dynamic>?,
  roleAssigned: json['roleAssigned'] as Map<String, dynamic>?,
  chatRoomInvitationReceived:
      json['chatRoomInvitationReceived'] as Map<String, dynamic>?,
  achievementEarned: json['achievementEarned'] as Map<String, dynamic>?,
  app: json['app'] as Map<String, dynamic>?,
  test: json['test'] as Map<String, dynamic>?,
  login: json['login'] as Map<String, dynamic>?,
  createToken: json['createToken'] as Map<String, dynamic>?,
  exportCompleted: json['exportCompleted'] as Map<String, dynamic>?,
);

Map<String, dynamic>
_$AdminAccountsCreateResponseNotificationRecieveConfigToJson(
  AdminAccountsCreateResponseNotificationRecieveConfig instance,
) => <String, dynamic>{
  'note': ?instance.note,
  'follow': ?instance.follow,
  'mention': ?instance.mention,
  'reply': ?instance.reply,
  'renote': ?instance.renote,
  'quote': ?instance.quote,
  'reaction': ?instance.reaction,
  'pollEnded': ?instance.pollEnded,
  'scheduledNotePosted': ?instance.scheduledNotePosted,
  'scheduledNotePostFailed': ?instance.scheduledNotePostFailed,
  'receiveFollowRequest': ?instance.receiveFollowRequest,
  'followRequestAccepted': ?instance.followRequestAccepted,
  'roleAssigned': ?instance.roleAssigned,
  'chatRoomInvitationReceived': ?instance.chatRoomInvitationReceived,
  'achievementEarned': ?instance.achievementEarned,
  'app': ?instance.app,
  'test': ?instance.test,
  'login': ?instance.login,
  'createToken': ?instance.createToken,
  'exportCompleted': ?instance.exportCompleted,
};

AdminAccountsCreateResponseSecurityKeysListItem
_$AdminAccountsCreateResponseSecurityKeysListItemFromJson(
  Map<String, dynamic> json,
) => AdminAccountsCreateResponseSecurityKeysListItem(
  id: json['id'] as String,
  name: json['name'] as String,
  lastUsed: DateTime.parse(json['lastUsed'] as String),
);

Map<String, dynamic> _$AdminAccountsCreateResponseSecurityKeysListItemToJson(
  AdminAccountsCreateResponseSecurityKeysListItem instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'lastUsed': instance.lastUsed.toIso8601String(),
};

AdminAccountsCreateResponse _$AdminAccountsCreateResponseFromJson(
  Map<String, dynamic> json,
) => AdminAccountsCreateResponse(
  id: json['id'] as String,
  name: json['name'] as String?,
  username: json['username'] as String,
  host: json['host'] as String?,
  avatarUrl: json['avatarUrl'] as String,
  avatarBlurhash: json['avatarBlurhash'] as String?,
  avatarDecorations: (json['avatarDecorations'] as List<dynamic>)
      .map(
        (e) => AdminAccountsCreateResponseAvatarDecorationsItem.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  isBot: json['isBot'] as bool?,
  isCat: json['isCat'] as bool?,
  requireSigninToViewContents: json['requireSigninToViewContents'] as bool?,
  makeNotesFollowersOnlyBefore: json['makeNotesFollowersOnlyBefore'] as num?,
  makeNotesHiddenBefore: json['makeNotesHiddenBefore'] as num?,
  instance: json['instance'] == null
      ? null
      : AdminAccountsCreateResponseInstance.fromJson(
          json['instance'] as Map<String, dynamic>,
        ),
  emojis: Map<String, String>.from(json['emojis'] as Map),
  onlineStatus: $enumDecode(_$OnlineStatusEnumMap, json['onlineStatus']),
  badgeRoles: (json['badgeRoles'] as List<dynamic>?)
      ?.map(
        (e) => AdminAccountsCreateResponseBadgeRolesItem.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  url: json['url'] as String?,
  uri: json['uri'] as String?,
  movedTo: json['movedTo'] as String?,
  alsoKnownAs: (json['alsoKnownAs'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  lastFetchedAt: json['lastFetchedAt'] == null
      ? null
      : DateTime.parse(json['lastFetchedAt'] as String),
  bannerUrl: json['bannerUrl'] as String?,
  bannerBlurhash: json['bannerBlurhash'] as String?,
  isLocked: json['isLocked'] as bool,
  isSilenced: json['isSilenced'] as bool,
  isSuspended: json['isSuspended'] as bool,
  description: json['description'] as String?,
  location: json['location'] as String?,
  birthday: json['birthday'] as String?,
  lang: json['lang'] as String?,
  fields: (json['fields'] as List<dynamic>)
      .map(
        (e) => AdminAccountsCreateResponseFieldsItem.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  verifiedLinks: (json['verifiedLinks'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  followersCount: json['followersCount'] as num,
  followingCount: json['followingCount'] as num,
  notesCount: json['notesCount'] as num,
  pinnedNoteIds: (json['pinnedNoteIds'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  pinnedNotes: (json['pinnedNotes'] as List<dynamic>)
      .map((e) => Note.fromJson(e as Map<String, dynamic>))
      .toList(),
  pinnedPageId: json['pinnedPageId'] as String?,
  pinnedPage: json['pinnedPage'] == null
      ? null
      : Page.fromJson(json['pinnedPage'] as Map<String, dynamic>),
  publicReactions: json['publicReactions'] as bool,
  followingVisibility: $enumDecode(
    _$FollowingVisibilityEnumMap,
    json['followingVisibility'],
  ),
  followersVisibility: $enumDecode(
    _$FollowingVisibilityEnumMap,
    json['followersVisibility'],
  ),
  chatScope: $enumDecode(_$ChatScopeEnumMap, json['chatScope']),
  canChat: json['canChat'] as bool,
  roles: (json['roles'] as List<dynamic>)
      .map((e) => RoleLite.fromJson(e as Map<String, dynamic>))
      .toList(),
  followedMessage: json['followedMessage'] as String?,
  memo: json['memo'] as String?,
  moderationNote: json['moderationNote'] as String?,
  twoFactorEnabled: json['twoFactorEnabled'] as bool,
  usePasswordLessLogin: json['usePasswordLessLogin'] as bool,
  securityKeys: json['securityKeys'] as bool,
  isFollowing: json['isFollowing'] as bool?,
  isFollowed: json['isFollowed'] as bool?,
  hasPendingFollowRequestFromYou:
      json['hasPendingFollowRequestFromYou'] as bool?,
  hasPendingFollowRequestToYou: json['hasPendingFollowRequestToYou'] as bool?,
  isBlocking: json['isBlocking'] as bool?,
  isBlocked: json['isBlocked'] as bool?,
  isMuted: json['isMuted'] as bool?,
  isRenoteMuted: json['isRenoteMuted'] as bool?,
  notify: $enumDecodeNullable(_$UserNotifyEnumMap, json['notify']),
  withReplies: json['withReplies'] as bool?,
  avatarId: json['avatarId'] as String?,
  bannerId: json['bannerId'] as String?,
  isModerator: json['isModerator'] as bool,
  isAdmin: json['isAdmin'] as bool,
  injectFeaturedNote: json['injectFeaturedNote'] as bool,
  receiveAnnouncementEmail: json['receiveAnnouncementEmail'] as bool,
  alwaysMarkNsfw: json['alwaysMarkNsfw'] as bool,
  autoSensitive: json['autoSensitive'] as bool,
  carefulBot: json['carefulBot'] as bool,
  autoAcceptFollowed: json['autoAcceptFollowed'] as bool,
  noCrawle: json['noCrawle'] as bool,
  preventAiLearning: json['preventAiLearning'] as bool,
  isExplorable: json['isExplorable'] as bool,
  isDeleted: json['isDeleted'] as bool,
  twoFactorBackupCodesStock: $enumDecode(
    _$TwoFactorBackupCodesStockEnumMap,
    json['twoFactorBackupCodesStock'],
  ),
  hideOnlineStatus: json['hideOnlineStatus'] as bool,
  hasUnreadSpecifiedNotes: json['hasUnreadSpecifiedNotes'] as bool,
  hasUnreadMentions: json['hasUnreadMentions'] as bool,
  hasUnreadAnnouncement: json['hasUnreadAnnouncement'] as bool,
  unreadAnnouncements: (json['unreadAnnouncements'] as List<dynamic>)
      .map((e) => Announcement.fromJson(e as Map<String, dynamic>))
      .toList(),
  hasUnreadAntenna: json['hasUnreadAntenna'] as bool,
  hasUnreadChannel: json['hasUnreadChannel'] as bool,
  hasUnreadChatMessages: json['hasUnreadChatMessages'] as bool,
  hasUnreadNotification: json['hasUnreadNotification'] as bool,
  hasPendingReceivedFollowRequest:
      json['hasPendingReceivedFollowRequest'] as bool,
  unreadNotificationsCount: json['unreadNotificationsCount'] as num,
  mutedWords: (json['mutedWords'] as List<dynamic>)
      .map((e) => (e as List<dynamic>).map((e) => e as String).toList())
      .toList(),
  hardMutedWords: (json['hardMutedWords'] as List<dynamic>)
      .map((e) => (e as List<dynamic>).map((e) => e as String).toList())
      .toList(),
  mutedInstances: (json['mutedInstances'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  notificationRecieveConfig:
      AdminAccountsCreateResponseNotificationRecieveConfig.fromJson(
        json['notificationRecieveConfig'] as Map<String, dynamic>,
      ),
  emailNotificationTypes: (json['emailNotificationTypes'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  achievements: (json['achievements'] as List<dynamic>)
      .map((e) => Achievement.fromJson(e as Map<String, dynamic>))
      .toList(),
  loggedInDays: json['loggedInDays'] as num,
  policies: RolePolicies.fromJson(json['policies'] as Map<String, dynamic>),
  email: json['email'] as String?,
  emailVerified: json['emailVerified'] as bool?,
  securityKeysList: (json['securityKeysList'] as List<dynamic>?)
      ?.map(
        (e) => AdminAccountsCreateResponseSecurityKeysListItem.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  token: json['token'] as String,
);

Map<String, dynamic> _$AdminAccountsCreateResponseToJson(
  AdminAccountsCreateResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'username': instance.username,
  'host': instance.host,
  'avatarUrl': instance.avatarUrl,
  'avatarBlurhash': instance.avatarBlurhash,
  'avatarDecorations': instance.avatarDecorations
      .map((e) => e.toJson())
      .toList(),
  'isBot': ?instance.isBot,
  'isCat': ?instance.isCat,
  'requireSigninToViewContents': ?instance.requireSigninToViewContents,
  'makeNotesFollowersOnlyBefore': ?instance.makeNotesFollowersOnlyBefore,
  'makeNotesHiddenBefore': ?instance.makeNotesHiddenBefore,
  'instance': ?instance.instance?.toJson(),
  'emojis': instance.emojis,
  'onlineStatus': _$OnlineStatusEnumMap[instance.onlineStatus]!,
  'badgeRoles': ?instance.badgeRoles?.map((e) => e.toJson()).toList(),
  'url': instance.url,
  'uri': instance.uri,
  'movedTo': instance.movedTo,
  'alsoKnownAs': instance.alsoKnownAs,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'lastFetchedAt': instance.lastFetchedAt?.toIso8601String(),
  'bannerUrl': instance.bannerUrl,
  'bannerBlurhash': instance.bannerBlurhash,
  'isLocked': instance.isLocked,
  'isSilenced': instance.isSilenced,
  'isSuspended': instance.isSuspended,
  'description': instance.description,
  'location': instance.location,
  'birthday': instance.birthday,
  'lang': instance.lang,
  'fields': instance.fields.map((e) => e.toJson()).toList(),
  'verifiedLinks': instance.verifiedLinks,
  'followersCount': instance.followersCount,
  'followingCount': instance.followingCount,
  'notesCount': instance.notesCount,
  'pinnedNoteIds': instance.pinnedNoteIds,
  'pinnedNotes': instance.pinnedNotes.map((e) => e.toJson()).toList(),
  'pinnedPageId': instance.pinnedPageId,
  'pinnedPage': instance.pinnedPage?.toJson(),
  'publicReactions': instance.publicReactions,
  'followingVisibility':
      _$FollowingVisibilityEnumMap[instance.followingVisibility]!,
  'followersVisibility':
      _$FollowingVisibilityEnumMap[instance.followersVisibility]!,
  'chatScope': _$ChatScopeEnumMap[instance.chatScope]!,
  'canChat': instance.canChat,
  'roles': instance.roles.map((e) => e.toJson()).toList(),
  'followedMessage': instance.followedMessage,
  'memo': instance.memo,
  'moderationNote': ?instance.moderationNote,
  'twoFactorEnabled': instance.twoFactorEnabled,
  'usePasswordLessLogin': instance.usePasswordLessLogin,
  'securityKeys': instance.securityKeys,
  'isFollowing': ?instance.isFollowing,
  'isFollowed': ?instance.isFollowed,
  'hasPendingFollowRequestFromYou': ?instance.hasPendingFollowRequestFromYou,
  'hasPendingFollowRequestToYou': ?instance.hasPendingFollowRequestToYou,
  'isBlocking': ?instance.isBlocking,
  'isBlocked': ?instance.isBlocked,
  'isMuted': ?instance.isMuted,
  'isRenoteMuted': ?instance.isRenoteMuted,
  'notify': ?_$UserNotifyEnumMap[instance.notify],
  'withReplies': ?instance.withReplies,
  'avatarId': instance.avatarId,
  'bannerId': instance.bannerId,
  'isModerator': instance.isModerator,
  'isAdmin': instance.isAdmin,
  'injectFeaturedNote': instance.injectFeaturedNote,
  'receiveAnnouncementEmail': instance.receiveAnnouncementEmail,
  'alwaysMarkNsfw': instance.alwaysMarkNsfw,
  'autoSensitive': instance.autoSensitive,
  'carefulBot': instance.carefulBot,
  'autoAcceptFollowed': instance.autoAcceptFollowed,
  'noCrawle': instance.noCrawle,
  'preventAiLearning': instance.preventAiLearning,
  'isExplorable': instance.isExplorable,
  'isDeleted': instance.isDeleted,
  'twoFactorBackupCodesStock':
      _$TwoFactorBackupCodesStockEnumMap[instance.twoFactorBackupCodesStock]!,
  'hideOnlineStatus': instance.hideOnlineStatus,
  'hasUnreadSpecifiedNotes': instance.hasUnreadSpecifiedNotes,
  'hasUnreadMentions': instance.hasUnreadMentions,
  'hasUnreadAnnouncement': instance.hasUnreadAnnouncement,
  'unreadAnnouncements': instance.unreadAnnouncements
      .map((e) => e.toJson())
      .toList(),
  'hasUnreadAntenna': instance.hasUnreadAntenna,
  'hasUnreadChannel': instance.hasUnreadChannel,
  'hasUnreadChatMessages': instance.hasUnreadChatMessages,
  'hasUnreadNotification': instance.hasUnreadNotification,
  'hasPendingReceivedFollowRequest': instance.hasPendingReceivedFollowRequest,
  'unreadNotificationsCount': instance.unreadNotificationsCount,
  'mutedWords': instance.mutedWords,
  'hardMutedWords': instance.hardMutedWords,
  'mutedInstances': instance.mutedInstances,
  'notificationRecieveConfig': instance.notificationRecieveConfig.toJson(),
  'emailNotificationTypes': instance.emailNotificationTypes,
  'achievements': instance.achievements.map((e) => e.toJson()).toList(),
  'loggedInDays': instance.loggedInDays,
  'policies': instance.policies.toJson(),
  'email': ?instance.email,
  'emailVerified': ?instance.emailVerified,
  'securityKeysList': ?instance.securityKeysList
      ?.map((e) => e.toJson())
      .toList(),
  'token': instance.token,
};

const _$OnlineStatusEnumMap = {
  OnlineStatus.unknown: 'unknown',
  OnlineStatus.online: 'online',
  OnlineStatus.active: 'active',
  OnlineStatus.offline: 'offline',
};

const _$FollowingVisibilityEnumMap = {
  FollowingVisibility.public: 'public',
  FollowingVisibility.followers: 'followers',
  FollowingVisibility.private: 'private',
};

const _$ChatScopeEnumMap = {
  ChatScope.everyone: 'everyone',
  ChatScope.following: 'following',
  ChatScope.followers: 'followers',
  ChatScope.mutual: 'mutual',
  ChatScope.none: 'none',
};

const _$UserNotifyEnumMap = {
  UserNotify.normal: 'normal',
  UserNotify.none: 'none',
};

const _$TwoFactorBackupCodesStockEnumMap = {
  TwoFactorBackupCodesStock.full: 'full',
  TwoFactorBackupCodesStock.partial: 'partial',
  TwoFactorBackupCodesStock.none: 'none',
};

AdminAccountsDeleteRequest _$AdminAccountsDeleteRequestFromJson(
  Map<String, dynamic> json,
) => AdminAccountsDeleteRequest(userId: json['userId'] as String);

Map<String, dynamic> _$AdminAccountsDeleteRequestToJson(
  AdminAccountsDeleteRequest instance,
) => <String, dynamic>{'userId': instance.userId};

AdminAccountsFindByEmailRequest _$AdminAccountsFindByEmailRequestFromJson(
  Map<String, dynamic> json,
) => AdminAccountsFindByEmailRequest(email: json['email'] as String);

Map<String, dynamic> _$AdminAccountsFindByEmailRequestToJson(
  AdminAccountsFindByEmailRequest instance,
) => <String, dynamic>{'email': instance.email};

AdminAdCreateRequest _$AdminAdCreateRequestFromJson(
  Map<String, dynamic> json,
) => AdminAdCreateRequest(
  url: json['url'] as String,
  memo: json['memo'] as String,
  place: json['place'] as String,
  priority: json['priority'] as String,
  ratio: (json['ratio'] as num).toInt(),
  expiresAt: (json['expiresAt'] as num).toInt(),
  startsAt: (json['startsAt'] as num).toInt(),
  imageUrl: json['imageUrl'] as String,
  dayOfWeek: (json['dayOfWeek'] as num).toInt(),
  isSensitive: json['isSensitive'] as bool?,
);

Map<String, dynamic> _$AdminAdCreateRequestToJson(
  AdminAdCreateRequest instance,
) => <String, dynamic>{
  'url': instance.url,
  'memo': instance.memo,
  'place': instance.place,
  'priority': instance.priority,
  'ratio': instance.ratio,
  'expiresAt': instance.expiresAt,
  'startsAt': instance.startsAt,
  'imageUrl': instance.imageUrl,
  'dayOfWeek': instance.dayOfWeek,
  'isSensitive': ?instance.isSensitive,
};

AdminAdDeleteRequest _$AdminAdDeleteRequestFromJson(
  Map<String, dynamic> json,
) => AdminAdDeleteRequest(id: json['id'] as String);

Map<String, dynamic> _$AdminAdDeleteRequestToJson(
  AdminAdDeleteRequest instance,
) => <String, dynamic>{'id': instance.id};

AdminAdListRequest _$AdminAdListRequestFromJson(Map<String, dynamic> json) =>
    AdminAdListRequest(
      limit: (json['limit'] as num?)?.toInt() ?? 10,
      sinceId: json['sinceId'] as String?,
      untilId: json['untilId'] as String?,
      sinceDate: (json['sinceDate'] as num?)?.toInt(),
      untilDate: (json['untilDate'] as num?)?.toInt(),
      publishing: json['publishing'] as bool?,
    );

Map<String, dynamic> _$AdminAdListRequestToJson(AdminAdListRequest instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'sinceId': ?instance.sinceId,
      'untilId': ?instance.untilId,
      'sinceDate': ?instance.sinceDate,
      'untilDate': ?instance.untilDate,
      'publishing': ?instance.publishing,
    };

AdminAdUpdateRequest _$AdminAdUpdateRequestFromJson(
  Map<String, dynamic> json,
) => AdminAdUpdateRequest(
  id: json['id'] as String,
  memo: json['memo'] as String?,
  url: json['url'] as String?,
  imageUrl: json['imageUrl'] as String?,
  place: json['place'] as String?,
  priority: json['priority'] as String?,
  ratio: (json['ratio'] as num?)?.toInt(),
  expiresAt: (json['expiresAt'] as num?)?.toInt(),
  startsAt: (json['startsAt'] as num?)?.toInt(),
  dayOfWeek: (json['dayOfWeek'] as num?)?.toInt(),
  isSensitive: json['isSensitive'] as bool?,
);

Map<String, dynamic> _$AdminAdUpdateRequestToJson(
  AdminAdUpdateRequest instance,
) => <String, dynamic>{
  'id': instance.id,
  'memo': ?instance.memo,
  'url': ?instance.url,
  'imageUrl': ?instance.imageUrl,
  'place': ?instance.place,
  'priority': ?instance.priority,
  'ratio': ?instance.ratio,
  'expiresAt': ?instance.expiresAt,
  'startsAt': ?instance.startsAt,
  'dayOfWeek': ?instance.dayOfWeek,
  'isSensitive': ?instance.isSensitive,
};

AdminAnnouncementsCreateRequest _$AdminAnnouncementsCreateRequestFromJson(
  Map<String, dynamic> json,
) => AdminAnnouncementsCreateRequest(
  title: json['title'] as String,
  text: json['text'] as String,
  imageUrl: json['imageUrl'] as String?,
  icon:
      $enumDecodeNullable(
        _$AdminAnnouncementsCreateRequestIconEnumMap,
        json['icon'],
      ) ??
      AdminAnnouncementsCreateRequestIcon.info,
  display:
      $enumDecodeNullable(
        _$AdminAnnouncementsCreateRequestDisplayEnumMap,
        json['display'],
      ) ??
      AdminAnnouncementsCreateRequestDisplay.normal,
  forExistingUsers: json['forExistingUsers'] as bool? ?? false,
  silence: json['silence'] as bool? ?? false,
  needConfirmationToRead: json['needConfirmationToRead'] as bool? ?? false,
  userId: json['userId'] as String?,
);

Map<String, dynamic> _$AdminAnnouncementsCreateRequestToJson(
  AdminAnnouncementsCreateRequest instance,
) => <String, dynamic>{
  'title': instance.title,
  'text': instance.text,
  'imageUrl': instance.imageUrl,
  'icon': _$AdminAnnouncementsCreateRequestIconEnumMap[instance.icon]!,
  'display': _$AdminAnnouncementsCreateRequestDisplayEnumMap[instance.display]!,
  'forExistingUsers': instance.forExistingUsers,
  'silence': instance.silence,
  'needConfirmationToRead': instance.needConfirmationToRead,
  'userId': ?instance.userId,
};

const _$AdminAnnouncementsCreateRequestIconEnumMap = {
  AdminAnnouncementsCreateRequestIcon.info: 'info',
  AdminAnnouncementsCreateRequestIcon.warning: 'warning',
  AdminAnnouncementsCreateRequestIcon.error: 'error',
  AdminAnnouncementsCreateRequestIcon.success: 'success',
};

const _$AdminAnnouncementsCreateRequestDisplayEnumMap = {
  AdminAnnouncementsCreateRequestDisplay.normal: 'normal',
  AdminAnnouncementsCreateRequestDisplay.banner: 'banner',
  AdminAnnouncementsCreateRequestDisplay.dialog: 'dialog',
};

AdminAnnouncementsCreateResponse _$AdminAnnouncementsCreateResponseFromJson(
  Map<String, dynamic> json,
) => AdminAnnouncementsCreateResponse(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  title: json['title'] as String,
  text: json['text'] as String,
  imageUrl: json['imageUrl'] as String?,
);

Map<String, dynamic> _$AdminAnnouncementsCreateResponseToJson(
  AdminAnnouncementsCreateResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'title': instance.title,
  'text': instance.text,
  'imageUrl': instance.imageUrl,
};

AdminAnnouncementsDeleteRequest _$AdminAnnouncementsDeleteRequestFromJson(
  Map<String, dynamic> json,
) => AdminAnnouncementsDeleteRequest(id: json['id'] as String);

Map<String, dynamic> _$AdminAnnouncementsDeleteRequestToJson(
  AdminAnnouncementsDeleteRequest instance,
) => <String, dynamic>{'id': instance.id};

AdminAnnouncementsListRequest _$AdminAnnouncementsListRequestFromJson(
  Map<String, dynamic> json,
) => AdminAnnouncementsListRequest(
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
  userId: json['userId'] as String?,
  status:
      $enumDecodeNullable(
        _$AdminAnnouncementsListRequestStatusEnumMap,
        json['status'],
      ) ??
      AdminAnnouncementsListRequestStatus.active,
);

Map<String, dynamic> _$AdminAnnouncementsListRequestToJson(
  AdminAnnouncementsListRequest instance,
) => <String, dynamic>{
  'limit': instance.limit,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
  'userId': ?instance.userId,
  'status': _$AdminAnnouncementsListRequestStatusEnumMap[instance.status]!,
};

const _$AdminAnnouncementsListRequestStatusEnumMap = {
  AdminAnnouncementsListRequestStatus.all: 'all',
  AdminAnnouncementsListRequestStatus.active: 'active',
  AdminAnnouncementsListRequestStatus.archived: 'archived',
};

AdminAnnouncementsListResponseItem _$AdminAnnouncementsListResponseItemFromJson(
  Map<String, dynamic> json,
) => AdminAnnouncementsListResponseItem(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  text: json['text'] as String,
  title: json['title'] as String,
  icon: $enumDecode(
    _$AdminAnnouncementsListResponseItemIconEnumMap,
    json['icon'],
  ),
  display: $enumDecode(
    _$AdminAnnouncementsListResponseItemDisplayEnumMap,
    json['display'],
  ),
  isActive: json['isActive'] as bool,
  forExistingUsers: json['forExistingUsers'] as bool,
  silence: json['silence'] as bool,
  needConfirmationToRead: json['needConfirmationToRead'] as bool,
  userId: json['userId'] as String?,
  imageUrl: json['imageUrl'] as String?,
  reads: json['reads'] as num,
);

Map<String, dynamic> _$AdminAnnouncementsListResponseItemToJson(
  AdminAnnouncementsListResponseItem instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'text': instance.text,
  'title': instance.title,
  'icon': _$AdminAnnouncementsListResponseItemIconEnumMap[instance.icon]!,
  'display':
      _$AdminAnnouncementsListResponseItemDisplayEnumMap[instance.display]!,
  'isActive': instance.isActive,
  'forExistingUsers': instance.forExistingUsers,
  'silence': instance.silence,
  'needConfirmationToRead': instance.needConfirmationToRead,
  'userId': instance.userId,
  'imageUrl': instance.imageUrl,
  'reads': instance.reads,
};

const _$AdminAnnouncementsListResponseItemIconEnumMap = {
  AdminAnnouncementsListResponseItemIcon.info: 'info',
  AdminAnnouncementsListResponseItemIcon.warning: 'warning',
  AdminAnnouncementsListResponseItemIcon.error: 'error',
  AdminAnnouncementsListResponseItemIcon.success: 'success',
};

const _$AdminAnnouncementsListResponseItemDisplayEnumMap = {
  AdminAnnouncementsListResponseItemDisplay.normal: 'normal',
  AdminAnnouncementsListResponseItemDisplay.banner: 'banner',
  AdminAnnouncementsListResponseItemDisplay.dialog: 'dialog',
};

AdminAnnouncementsUpdateRequest _$AdminAnnouncementsUpdateRequestFromJson(
  Map<String, dynamic> json,
) => AdminAnnouncementsUpdateRequest(
  id: json['id'] as String,
  title: json['title'] as String?,
  text: json['text'] as String?,
  imageUrl: json['imageUrl'] as String?,
  icon: $enumDecodeNullable(
    _$AdminAnnouncementsUpdateRequestIconEnumMap,
    json['icon'],
  ),
  display: $enumDecodeNullable(
    _$AdminAnnouncementsUpdateRequestDisplayEnumMap,
    json['display'],
  ),
  forExistingUsers: json['forExistingUsers'] as bool?,
  silence: json['silence'] as bool?,
  needConfirmationToRead: json['needConfirmationToRead'] as bool?,
  isActive: json['isActive'] as bool?,
);

Map<String, dynamic> _$AdminAnnouncementsUpdateRequestToJson(
  AdminAnnouncementsUpdateRequest instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': ?instance.title,
  'text': ?instance.text,
  'imageUrl': ?instance.imageUrl,
  'icon': ?_$AdminAnnouncementsUpdateRequestIconEnumMap[instance.icon],
  'display': ?_$AdminAnnouncementsUpdateRequestDisplayEnumMap[instance.display],
  'forExistingUsers': ?instance.forExistingUsers,
  'silence': ?instance.silence,
  'needConfirmationToRead': ?instance.needConfirmationToRead,
  'isActive': ?instance.isActive,
};

const _$AdminAnnouncementsUpdateRequestIconEnumMap = {
  AdminAnnouncementsUpdateRequestIcon.info: 'info',
  AdminAnnouncementsUpdateRequestIcon.warning: 'warning',
  AdminAnnouncementsUpdateRequestIcon.error: 'error',
  AdminAnnouncementsUpdateRequestIcon.success: 'success',
};

const _$AdminAnnouncementsUpdateRequestDisplayEnumMap = {
  AdminAnnouncementsUpdateRequestDisplay.normal: 'normal',
  AdminAnnouncementsUpdateRequestDisplay.banner: 'banner',
  AdminAnnouncementsUpdateRequestDisplay.dialog: 'dialog',
};

AdminAvatarDecorationsCreateRequest
_$AdminAvatarDecorationsCreateRequestFromJson(Map<String, dynamic> json) =>
    AdminAvatarDecorationsCreateRequest(
      name: json['name'] as String,
      description: json['description'] as String,
      url: json['url'] as String,
      roleIdsThatCanBeUsedThisDecoration:
          (json['roleIdsThatCanBeUsedThisDecoration'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      category: json['category'] as String?,
    );

Map<String, dynamic> _$AdminAvatarDecorationsCreateRequestToJson(
  AdminAvatarDecorationsCreateRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'description': instance.description,
  'url': instance.url,
  'roleIdsThatCanBeUsedThisDecoration':
      ?instance.roleIdsThatCanBeUsedThisDecoration,
  'category': ?instance.category,
};

AdminAvatarDecorationsCreateResponse
_$AdminAvatarDecorationsCreateResponseFromJson(Map<String, dynamic> json) =>
    AdminAvatarDecorationsCreateResponse(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      name: json['name'] as String,
      description: json['description'] as String,
      url: json['url'] as String,
      roleIdsThatCanBeUsedThisDecoration:
          (json['roleIdsThatCanBeUsedThisDecoration'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
      category: json['category'] as String?,
    );

Map<String, dynamic> _$AdminAvatarDecorationsCreateResponseToJson(
  AdminAvatarDecorationsCreateResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'name': instance.name,
  'description': instance.description,
  'url': instance.url,
  'roleIdsThatCanBeUsedThisDecoration':
      instance.roleIdsThatCanBeUsedThisDecoration,
  'category': instance.category,
};

AdminAvatarDecorationsDeleteRequest
_$AdminAvatarDecorationsDeleteRequestFromJson(Map<String, dynamic> json) =>
    AdminAvatarDecorationsDeleteRequest(id: json['id'] as String);

Map<String, dynamic> _$AdminAvatarDecorationsDeleteRequestToJson(
  AdminAvatarDecorationsDeleteRequest instance,
) => <String, dynamic>{'id': instance.id};

AdminAvatarDecorationsListRequest _$AdminAvatarDecorationsListRequestFromJson(
  Map<String, dynamic> json,
) => AdminAvatarDecorationsListRequest(
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
  userId: json['userId'] as String?,
);

Map<String, dynamic> _$AdminAvatarDecorationsListRequestToJson(
  AdminAvatarDecorationsListRequest instance,
) => <String, dynamic>{
  'limit': instance.limit,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
  'userId': ?instance.userId,
};

AdminAvatarDecorationsListResponseItem
_$AdminAvatarDecorationsListResponseItemFromJson(Map<String, dynamic> json) =>
    AdminAvatarDecorationsListResponseItem(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      name: json['name'] as String,
      description: json['description'] as String,
      url: json['url'] as String,
      roleIdsThatCanBeUsedThisDecoration:
          (json['roleIdsThatCanBeUsedThisDecoration'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
      category: json['category'] as String?,
    );

Map<String, dynamic> _$AdminAvatarDecorationsListResponseItemToJson(
  AdminAvatarDecorationsListResponseItem instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'name': instance.name,
  'description': instance.description,
  'url': instance.url,
  'roleIdsThatCanBeUsedThisDecoration':
      instance.roleIdsThatCanBeUsedThisDecoration,
  'category': ?instance.category,
};

AdminAvatarDecorationsUpdateRequest
_$AdminAvatarDecorationsUpdateRequestFromJson(Map<String, dynamic> json) =>
    AdminAvatarDecorationsUpdateRequest(
      id: json['id'] as String,
      name: json['name'] as String?,
      description: json['description'] as String?,
      url: json['url'] as String?,
      roleIdsThatCanBeUsedThisDecoration:
          (json['roleIdsThatCanBeUsedThisDecoration'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      category: json['category'] as String?,
    );

Map<String, dynamic> _$AdminAvatarDecorationsUpdateRequestToJson(
  AdminAvatarDecorationsUpdateRequest instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': ?instance.name,
  'description': ?instance.description,
  'url': ?instance.url,
  'roleIdsThatCanBeUsedThisDecoration':
      ?instance.roleIdsThatCanBeUsedThisDecoration,
  'category': ?instance.category,
};

AdminCaptchaCurrentResponseHcaptcha
_$AdminCaptchaCurrentResponseHcaptchaFromJson(Map<String, dynamic> json) =>
    AdminCaptchaCurrentResponseHcaptcha(
      siteKey: json['siteKey'] as String?,
      secretKey: json['secretKey'] as String?,
    );

Map<String, dynamic> _$AdminCaptchaCurrentResponseHcaptchaToJson(
  AdminCaptchaCurrentResponseHcaptcha instance,
) => <String, dynamic>{
  'siteKey': instance.siteKey,
  'secretKey': instance.secretKey,
};

AdminCaptchaCurrentResponseMcaptcha
_$AdminCaptchaCurrentResponseMcaptchaFromJson(Map<String, dynamic> json) =>
    AdminCaptchaCurrentResponseMcaptcha(
      siteKey: json['siteKey'] as String?,
      secretKey: json['secretKey'] as String?,
      instanceUrl: json['instanceUrl'] as String?,
    );

Map<String, dynamic> _$AdminCaptchaCurrentResponseMcaptchaToJson(
  AdminCaptchaCurrentResponseMcaptcha instance,
) => <String, dynamic>{
  'siteKey': instance.siteKey,
  'secretKey': instance.secretKey,
  'instanceUrl': instance.instanceUrl,
};

AdminCaptchaCurrentResponseRecaptcha
_$AdminCaptchaCurrentResponseRecaptchaFromJson(Map<String, dynamic> json) =>
    AdminCaptchaCurrentResponseRecaptcha(
      siteKey: json['siteKey'] as String?,
      secretKey: json['secretKey'] as String?,
    );

Map<String, dynamic> _$AdminCaptchaCurrentResponseRecaptchaToJson(
  AdminCaptchaCurrentResponseRecaptcha instance,
) => <String, dynamic>{
  'siteKey': instance.siteKey,
  'secretKey': instance.secretKey,
};

AdminCaptchaCurrentResponseTurnstile
_$AdminCaptchaCurrentResponseTurnstileFromJson(Map<String, dynamic> json) =>
    AdminCaptchaCurrentResponseTurnstile(
      siteKey: json['siteKey'] as String?,
      secretKey: json['secretKey'] as String?,
    );

Map<String, dynamic> _$AdminCaptchaCurrentResponseTurnstileToJson(
  AdminCaptchaCurrentResponseTurnstile instance,
) => <String, dynamic>{
  'siteKey': instance.siteKey,
  'secretKey': instance.secretKey,
};

AdminCaptchaCurrentResponse _$AdminCaptchaCurrentResponseFromJson(
  Map<String, dynamic> json,
) => AdminCaptchaCurrentResponse(
  provider: $enumDecode(
    _$AdminCaptchaCurrentResponseProviderEnumMap,
    json['provider'],
  ),
  hcaptcha: AdminCaptchaCurrentResponseHcaptcha.fromJson(
    json['hcaptcha'] as Map<String, dynamic>,
  ),
  mcaptcha: AdminCaptchaCurrentResponseMcaptcha.fromJson(
    json['mcaptcha'] as Map<String, dynamic>,
  ),
  recaptcha: AdminCaptchaCurrentResponseRecaptcha.fromJson(
    json['recaptcha'] as Map<String, dynamic>,
  ),
  turnstile: AdminCaptchaCurrentResponseTurnstile.fromJson(
    json['turnstile'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$AdminCaptchaCurrentResponseToJson(
  AdminCaptchaCurrentResponse instance,
) => <String, dynamic>{
  'provider': _$AdminCaptchaCurrentResponseProviderEnumMap[instance.provider]!,
  'hcaptcha': instance.hcaptcha.toJson(),
  'mcaptcha': instance.mcaptcha.toJson(),
  'recaptcha': instance.recaptcha.toJson(),
  'turnstile': instance.turnstile.toJson(),
};

const _$AdminCaptchaCurrentResponseProviderEnumMap = {
  AdminCaptchaCurrentResponseProvider.none: 'none',
  AdminCaptchaCurrentResponseProvider.hcaptcha: 'hcaptcha',
  AdminCaptchaCurrentResponseProvider.mcaptcha: 'mcaptcha',
  AdminCaptchaCurrentResponseProvider.recaptcha: 'recaptcha',
  AdminCaptchaCurrentResponseProvider.turnstile: 'turnstile',
  AdminCaptchaCurrentResponseProvider.testcaptcha: 'testcaptcha',
};

AdminCaptchaSaveRequest _$AdminCaptchaSaveRequestFromJson(
  Map<String, dynamic> json,
) => AdminCaptchaSaveRequest(
  provider: $enumDecode(
    _$AdminCaptchaSaveRequestProviderEnumMap,
    json['provider'],
  ),
  captchaResult: json['captchaResult'] as String?,
  sitekey: json['sitekey'] as String?,
  secret: json['secret'] as String?,
  instanceUrl: json['instanceUrl'] as String?,
);

Map<String, dynamic> _$AdminCaptchaSaveRequestToJson(
  AdminCaptchaSaveRequest instance,
) => <String, dynamic>{
  'provider': _$AdminCaptchaSaveRequestProviderEnumMap[instance.provider]!,
  'captchaResult': ?instance.captchaResult,
  'sitekey': ?instance.sitekey,
  'secret': ?instance.secret,
  'instanceUrl': ?instance.instanceUrl,
};

const _$AdminCaptchaSaveRequestProviderEnumMap = {
  AdminCaptchaSaveRequestProvider.none: 'none',
  AdminCaptchaSaveRequestProvider.hcaptcha: 'hcaptcha',
  AdminCaptchaSaveRequestProvider.mcaptcha: 'mcaptcha',
  AdminCaptchaSaveRequestProvider.recaptcha: 'recaptcha',
  AdminCaptchaSaveRequestProvider.turnstile: 'turnstile',
  AdminCaptchaSaveRequestProvider.testcaptcha: 'testcaptcha',
};

AdminDeleteAccountRequest _$AdminDeleteAccountRequestFromJson(
  Map<String, dynamic> json,
) => AdminDeleteAccountRequest(userId: json['userId'] as String);

Map<String, dynamic> _$AdminDeleteAccountRequestToJson(
  AdminDeleteAccountRequest instance,
) => <String, dynamic>{'userId': instance.userId};

AdminDeleteAllFilesOfAUserRequest _$AdminDeleteAllFilesOfAUserRequestFromJson(
  Map<String, dynamic> json,
) => AdminDeleteAllFilesOfAUserRequest(userId: json['userId'] as String);

Map<String, dynamic> _$AdminDeleteAllFilesOfAUserRequestToJson(
  AdminDeleteAllFilesOfAUserRequest instance,
) => <String, dynamic>{'userId': instance.userId};

AdminDriveFilesRequest _$AdminDriveFilesRequestFromJson(
  Map<String, dynamic> json,
) => AdminDriveFilesRequest(
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
  userId: json['userId'] as String?,
  type: json['type'] as String?,
  origin:
      $enumDecodeNullable(
        _$AdminDriveFilesRequestOriginEnumMap,
        json['origin'],
      ) ??
      AdminDriveFilesRequestOrigin.local,
  hostname: json['hostname'] as String?,
);

Map<String, dynamic> _$AdminDriveFilesRequestToJson(
  AdminDriveFilesRequest instance,
) => <String, dynamic>{
  'limit': instance.limit,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
  'userId': ?instance.userId,
  'type': ?instance.type,
  'origin': _$AdminDriveFilesRequestOriginEnumMap[instance.origin]!,
  'hostname': ?instance.hostname,
};

const _$AdminDriveFilesRequestOriginEnumMap = {
  AdminDriveFilesRequestOrigin.combined: 'combined',
  AdminDriveFilesRequestOrigin.local: 'local',
  AdminDriveFilesRequestOrigin.remote: 'remote',
};

AdminDriveShowFileRequestByFileId _$AdminDriveShowFileRequestByFileIdFromJson(
  Map<String, dynamic> json,
) => AdminDriveShowFileRequestByFileId(fileId: json['fileId'] as String);

Map<String, dynamic> _$AdminDriveShowFileRequestByFileIdToJson(
  AdminDriveShowFileRequestByFileId instance,
) => <String, dynamic>{'fileId': instance.fileId};

AdminDriveShowFileRequestByUrl _$AdminDriveShowFileRequestByUrlFromJson(
  Map<String, dynamic> json,
) => AdminDriveShowFileRequestByUrl(url: json['url'] as String);

Map<String, dynamic> _$AdminDriveShowFileRequestByUrlToJson(
  AdminDriveShowFileRequestByUrl instance,
) => <String, dynamic>{'url': instance.url};

AdminDriveShowFileResponseProperties
_$AdminDriveShowFileResponsePropertiesFromJson(Map<String, dynamic> json) =>
    AdminDriveShowFileResponseProperties(
      width: json['width'] as num?,
      height: json['height'] as num?,
      orientation: json['orientation'] as num?,
      avgColor: json['avgColor'] as String?,
    );

Map<String, dynamic> _$AdminDriveShowFileResponsePropertiesToJson(
  AdminDriveShowFileResponseProperties instance,
) => <String, dynamic>{
  'width': ?instance.width,
  'height': ?instance.height,
  'orientation': ?instance.orientation,
  'avgColor': ?instance.avgColor,
};

AdminDriveShowFileResponse _$AdminDriveShowFileResponseFromJson(
  Map<String, dynamic> json,
) => AdminDriveShowFileResponse(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  userId: json['userId'] as String?,
  userHost: json['userHost'] as String?,
  md5: json['md5'] as String,
  name: json['name'] as String,
  type: json['type'] as String,
  size: json['size'] as num,
  comment: json['comment'] as String?,
  blurhash: json['blurhash'] as String?,
  properties: AdminDriveShowFileResponseProperties.fromJson(
    json['properties'] as Map<String, dynamic>,
  ),
  storedInternal: json['storedInternal'] as bool?,
  url: json['url'] as String?,
  thumbnailUrl: json['thumbnailUrl'] as String?,
  webpublicUrl: json['webpublicUrl'] as String?,
  accessKey: json['accessKey'] as String?,
  thumbnailAccessKey: json['thumbnailAccessKey'] as String?,
  webpublicAccessKey: json['webpublicAccessKey'] as String?,
  uri: json['uri'] as String?,
  src: json['src'] as String?,
  folderId: json['folderId'] as String?,
  isSensitive: json['isSensitive'] as bool,
  isLink: json['isLink'] as bool,
  maybeSensitive: json['maybeSensitive'] as bool,
  maybePorn: json['maybePorn'] as bool,
  requestIp: json['requestIp'] as String?,
  requestHeaders: json['requestHeaders'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$AdminDriveShowFileResponseToJson(
  AdminDriveShowFileResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'userId': instance.userId,
  'userHost': instance.userHost,
  'md5': instance.md5,
  'name': instance.name,
  'type': instance.type,
  'size': instance.size,
  'comment': instance.comment,
  'blurhash': instance.blurhash,
  'properties': instance.properties.toJson(),
  'storedInternal': instance.storedInternal,
  'url': instance.url,
  'thumbnailUrl': instance.thumbnailUrl,
  'webpublicUrl': instance.webpublicUrl,
  'accessKey': instance.accessKey,
  'thumbnailAccessKey': instance.thumbnailAccessKey,
  'webpublicAccessKey': instance.webpublicAccessKey,
  'uri': instance.uri,
  'src': instance.src,
  'folderId': instance.folderId,
  'isSensitive': instance.isSensitive,
  'isLink': instance.isLink,
  'maybeSensitive': instance.maybeSensitive,
  'maybePorn': instance.maybePorn,
  'requestIp': instance.requestIp,
  'requestHeaders': instance.requestHeaders,
};

AdminEmojiAddRequest _$AdminEmojiAddRequestFromJson(
  Map<String, dynamic> json,
) => AdminEmojiAddRequest(
  name: json['name'] as String,
  fileId: json['fileId'] as String,
  category: json['category'] as String?,
  aliases: (json['aliases'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  license: json['license'] as String?,
  isSensitive: json['isSensitive'] as bool?,
  localOnly: json['localOnly'] as bool?,
  roleIdsThatCanBeUsedThisEmojiAsReaction:
      (json['roleIdsThatCanBeUsedThisEmojiAsReaction'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
);

Map<String, dynamic> _$AdminEmojiAddRequestToJson(
  AdminEmojiAddRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'fileId': instance.fileId,
  'category': ?instance.category,
  'aliases': ?instance.aliases,
  'license': ?instance.license,
  'isSensitive': ?instance.isSensitive,
  'localOnly': ?instance.localOnly,
  'roleIdsThatCanBeUsedThisEmojiAsReaction':
      ?instance.roleIdsThatCanBeUsedThisEmojiAsReaction,
};

AdminEmojiAddAliasesBulkRequest _$AdminEmojiAddAliasesBulkRequestFromJson(
  Map<String, dynamic> json,
) => AdminEmojiAddAliasesBulkRequest(
  ids: (json['ids'] as List<dynamic>).map((e) => e as String).toList(),
  aliases: (json['aliases'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$AdminEmojiAddAliasesBulkRequestToJson(
  AdminEmojiAddAliasesBulkRequest instance,
) => <String, dynamic>{'ids': instance.ids, 'aliases': instance.aliases};

AdminEmojiCopyRequest _$AdminEmojiCopyRequestFromJson(
  Map<String, dynamic> json,
) => AdminEmojiCopyRequest(emojiId: json['emojiId'] as String);

Map<String, dynamic> _$AdminEmojiCopyRequestToJson(
  AdminEmojiCopyRequest instance,
) => <String, dynamic>{'emojiId': instance.emojiId};

AdminEmojiCopyResponse _$AdminEmojiCopyResponseFromJson(
  Map<String, dynamic> json,
) => AdminEmojiCopyResponse(id: json['id'] as String);

Map<String, dynamic> _$AdminEmojiCopyResponseToJson(
  AdminEmojiCopyResponse instance,
) => <String, dynamic>{'id': instance.id};

AdminEmojiDeleteRequest _$AdminEmojiDeleteRequestFromJson(
  Map<String, dynamic> json,
) => AdminEmojiDeleteRequest(id: json['id'] as String);

Map<String, dynamic> _$AdminEmojiDeleteRequestToJson(
  AdminEmojiDeleteRequest instance,
) => <String, dynamic>{'id': instance.id};

AdminEmojiDeleteBulkRequest _$AdminEmojiDeleteBulkRequestFromJson(
  Map<String, dynamic> json,
) => AdminEmojiDeleteBulkRequest(
  ids: (json['ids'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$AdminEmojiDeleteBulkRequestToJson(
  AdminEmojiDeleteBulkRequest instance,
) => <String, dynamic>{'ids': instance.ids};

AdminEmojiImportZipRequest _$AdminEmojiImportZipRequestFromJson(
  Map<String, dynamic> json,
) => AdminEmojiImportZipRequest(fileId: json['fileId'] as String);

Map<String, dynamic> _$AdminEmojiImportZipRequestToJson(
  AdminEmojiImportZipRequest instance,
) => <String, dynamic>{'fileId': instance.fileId};

AdminEmojiListRequest _$AdminEmojiListRequestFromJson(
  Map<String, dynamic> json,
) => AdminEmojiListRequest(
  query: json['query'] as String?,
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
);

Map<String, dynamic> _$AdminEmojiListRequestToJson(
  AdminEmojiListRequest instance,
) => <String, dynamic>{
  'query': ?instance.query,
  'limit': instance.limit,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
};

AdminEmojiListRemoteRequest _$AdminEmojiListRemoteRequestFromJson(
  Map<String, dynamic> json,
) => AdminEmojiListRemoteRequest(
  query: json['query'] as String?,
  host: json['host'] as String?,
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
);

Map<String, dynamic> _$AdminEmojiListRemoteRequestToJson(
  AdminEmojiListRemoteRequest instance,
) => <String, dynamic>{
  'query': ?instance.query,
  'host': ?instance.host,
  'limit': instance.limit,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
};

AdminEmojiRemoveAliasesBulkRequest _$AdminEmojiRemoveAliasesBulkRequestFromJson(
  Map<String, dynamic> json,
) => AdminEmojiRemoveAliasesBulkRequest(
  ids: (json['ids'] as List<dynamic>).map((e) => e as String).toList(),
  aliases: (json['aliases'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$AdminEmojiRemoveAliasesBulkRequestToJson(
  AdminEmojiRemoveAliasesBulkRequest instance,
) => <String, dynamic>{'ids': instance.ids, 'aliases': instance.aliases};

AdminEmojiSetAliasesBulkRequest _$AdminEmojiSetAliasesBulkRequestFromJson(
  Map<String, dynamic> json,
) => AdminEmojiSetAliasesBulkRequest(
  ids: (json['ids'] as List<dynamic>).map((e) => e as String).toList(),
  aliases: (json['aliases'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$AdminEmojiSetAliasesBulkRequestToJson(
  AdminEmojiSetAliasesBulkRequest instance,
) => <String, dynamic>{'ids': instance.ids, 'aliases': instance.aliases};

AdminEmojiSetCategoryBulkRequest _$AdminEmojiSetCategoryBulkRequestFromJson(
  Map<String, dynamic> json,
) => AdminEmojiSetCategoryBulkRequest(
  ids: (json['ids'] as List<dynamic>).map((e) => e as String).toList(),
  category: json['category'] as String?,
);

Map<String, dynamic> _$AdminEmojiSetCategoryBulkRequestToJson(
  AdminEmojiSetCategoryBulkRequest instance,
) => <String, dynamic>{'ids': instance.ids, 'category': ?instance.category};

AdminEmojiSetLicenseBulkRequest _$AdminEmojiSetLicenseBulkRequestFromJson(
  Map<String, dynamic> json,
) => AdminEmojiSetLicenseBulkRequest(
  ids: (json['ids'] as List<dynamic>).map((e) => e as String).toList(),
  license: json['license'] as String?,
);

Map<String, dynamic> _$AdminEmojiSetLicenseBulkRequestToJson(
  AdminEmojiSetLicenseBulkRequest instance,
) => <String, dynamic>{'ids': instance.ids, 'license': ?instance.license};

AdminEmojiUpdateRequestById _$AdminEmojiUpdateRequestByIdFromJson(
  Map<String, dynamic> json,
) => AdminEmojiUpdateRequestById(
  fileId: json['fileId'] as String?,
  category: json['category'] as String?,
  aliases: (json['aliases'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  license: json['license'] as String?,
  isSensitive: json['isSensitive'] as bool?,
  localOnly: json['localOnly'] as bool?,
  roleIdsThatCanBeUsedThisEmojiAsReaction:
      (json['roleIdsThatCanBeUsedThisEmojiAsReaction'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
  id: json['id'] as String,
);

Map<String, dynamic> _$AdminEmojiUpdateRequestByIdToJson(
  AdminEmojiUpdateRequestById instance,
) => <String, dynamic>{
  'fileId': ?instance.fileId,
  'category': ?instance.category,
  'aliases': ?instance.aliases,
  'license': ?instance.license,
  'isSensitive': ?instance.isSensitive,
  'localOnly': ?instance.localOnly,
  'roleIdsThatCanBeUsedThisEmojiAsReaction':
      ?instance.roleIdsThatCanBeUsedThisEmojiAsReaction,
  'id': instance.id,
};

AdminEmojiUpdateRequestByName _$AdminEmojiUpdateRequestByNameFromJson(
  Map<String, dynamic> json,
) => AdminEmojiUpdateRequestByName(
  fileId: json['fileId'] as String?,
  category: json['category'] as String?,
  aliases: (json['aliases'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  license: json['license'] as String?,
  isSensitive: json['isSensitive'] as bool?,
  localOnly: json['localOnly'] as bool?,
  roleIdsThatCanBeUsedThisEmojiAsReaction:
      (json['roleIdsThatCanBeUsedThisEmojiAsReaction'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
  name: json['name'] as String,
);

Map<String, dynamic> _$AdminEmojiUpdateRequestByNameToJson(
  AdminEmojiUpdateRequestByName instance,
) => <String, dynamic>{
  'fileId': ?instance.fileId,
  'category': ?instance.category,
  'aliases': ?instance.aliases,
  'license': ?instance.license,
  'isSensitive': ?instance.isSensitive,
  'localOnly': ?instance.localOnly,
  'roleIdsThatCanBeUsedThisEmojiAsReaction':
      ?instance.roleIdsThatCanBeUsedThisEmojiAsReaction,
  'name': instance.name,
};

AdminFederationDeleteAllFilesRequest
_$AdminFederationDeleteAllFilesRequestFromJson(Map<String, dynamic> json) =>
    AdminFederationDeleteAllFilesRequest(host: json['host'] as String);

Map<String, dynamic> _$AdminFederationDeleteAllFilesRequestToJson(
  AdminFederationDeleteAllFilesRequest instance,
) => <String, dynamic>{'host': instance.host};

AdminFederationRefreshRemoteInstanceMetadataRequest
_$AdminFederationRefreshRemoteInstanceMetadataRequestFromJson(
  Map<String, dynamic> json,
) => AdminFederationRefreshRemoteInstanceMetadataRequest(
  host: json['host'] as String,
);

Map<String, dynamic>
_$AdminFederationRefreshRemoteInstanceMetadataRequestToJson(
  AdminFederationRefreshRemoteInstanceMetadataRequest instance,
) => <String, dynamic>{'host': instance.host};

AdminFederationRemoveAllFollowingRequest
_$AdminFederationRemoveAllFollowingRequestFromJson(Map<String, dynamic> json) =>
    AdminFederationRemoveAllFollowingRequest(host: json['host'] as String);

Map<String, dynamic> _$AdminFederationRemoveAllFollowingRequestToJson(
  AdminFederationRemoveAllFollowingRequest instance,
) => <String, dynamic>{'host': instance.host};

AdminFederationUpdateInstanceRequest
_$AdminFederationUpdateInstanceRequestFromJson(Map<String, dynamic> json) =>
    AdminFederationUpdateInstanceRequest(
      host: json['host'] as String,
      isSuspended: json['isSuspended'] as bool?,
      moderationNote: json['moderationNote'] as String?,
    );

Map<String, dynamic> _$AdminFederationUpdateInstanceRequestToJson(
  AdminFederationUpdateInstanceRequest instance,
) => <String, dynamic>{
  'host': instance.host,
  'isSuspended': ?instance.isSuspended,
  'moderationNote': ?instance.moderationNote,
};

AdminForwardAbuseUserReportRequest _$AdminForwardAbuseUserReportRequestFromJson(
  Map<String, dynamic> json,
) => AdminForwardAbuseUserReportRequest(reportId: json['reportId'] as String);

Map<String, dynamic> _$AdminForwardAbuseUserReportRequestToJson(
  AdminForwardAbuseUserReportRequest instance,
) => <String, dynamic>{'reportId': instance.reportId};

AdminGetIndexStatsResponseItem _$AdminGetIndexStatsResponseItemFromJson(
  Map<String, dynamic> json,
) => AdminGetIndexStatsResponseItem(
  tablename: json['tablename'] as String,
  indexname: json['indexname'] as String,
);

Map<String, dynamic> _$AdminGetIndexStatsResponseItemToJson(
  AdminGetIndexStatsResponseItem instance,
) => <String, dynamic>{
  'tablename': instance.tablename,
  'indexname': instance.indexname,
};

AdminGetUserIpsRequest _$AdminGetUserIpsRequestFromJson(
  Map<String, dynamic> json,
) => AdminGetUserIpsRequest(userId: json['userId'] as String);

Map<String, dynamic> _$AdminGetUserIpsRequestToJson(
  AdminGetUserIpsRequest instance,
) => <String, dynamic>{'userId': instance.userId};

AdminGetUserIpsResponseItem _$AdminGetUserIpsResponseItemFromJson(
  Map<String, dynamic> json,
) => AdminGetUserIpsResponseItem(
  ip: json['ip'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$AdminGetUserIpsResponseItemToJson(
  AdminGetUserIpsResponseItem instance,
) => <String, dynamic>{
  'ip': instance.ip,
  'createdAt': instance.createdAt.toIso8601String(),
};

AdminInviteCreateRequest _$AdminInviteCreateRequestFromJson(
  Map<String, dynamic> json,
) => AdminInviteCreateRequest(
  count: (json['count'] as num?)?.toInt() ?? 1,
  expiresAt: json['expiresAt'] as String?,
);

Map<String, dynamic> _$AdminInviteCreateRequestToJson(
  AdminInviteCreateRequest instance,
) => <String, dynamic>{
  'count': instance.count,
  'expiresAt': ?instance.expiresAt,
};

AdminInviteListRequest _$AdminInviteListRequestFromJson(
  Map<String, dynamic> json,
) => AdminInviteListRequest(
  limit: (json['limit'] as num?)?.toInt() ?? 30,
  offset: (json['offset'] as num?)?.toInt() ?? 0,
  type:
      $enumDecodeNullable(_$AdminInviteListRequestTypeEnumMap, json['type']) ??
      AdminInviteListRequestType.all,
  sort: $enumDecodeNullable(_$AdminInviteListRequestSortEnumMap, json['sort']),
);

Map<String, dynamic> _$AdminInviteListRequestToJson(
  AdminInviteListRequest instance,
) => <String, dynamic>{
  'limit': instance.limit,
  'offset': instance.offset,
  'type': _$AdminInviteListRequestTypeEnumMap[instance.type]!,
  'sort': ?_$AdminInviteListRequestSortEnumMap[instance.sort],
};

const _$AdminInviteListRequestTypeEnumMap = {
  AdminInviteListRequestType.unused: 'unused',
  AdminInviteListRequestType.used: 'used',
  AdminInviteListRequestType.expired: 'expired',
  AdminInviteListRequestType.all: 'all',
};

const _$AdminInviteListRequestSortEnumMap = {
  AdminInviteListRequestSort.pluscreatedAt: '+createdAt',
  AdminInviteListRequestSort.minuscreatedAt: '-createdAt',
  AdminInviteListRequestSort.plususedAt: '+usedAt',
  AdminInviteListRequestSort.minususedAt: '-usedAt',
};

AdminMetaResponseDeliverSuspendedSoftwareItem
_$AdminMetaResponseDeliverSuspendedSoftwareItemFromJson(
  Map<String, dynamic> json,
) => AdminMetaResponseDeliverSuspendedSoftwareItem(
  software: json['software'] as String,
  versionRange: json['versionRange'] as String,
);

Map<String, dynamic> _$AdminMetaResponseDeliverSuspendedSoftwareItemToJson(
  AdminMetaResponseDeliverSuspendedSoftwareItem instance,
) => <String, dynamic>{
  'software': instance.software,
  'versionRange': instance.versionRange,
};

AdminMetaResponse _$AdminMetaResponseFromJson(
  Map<String, dynamic> json,
) => AdminMetaResponse(
  cacheRemoteFiles: json['cacheRemoteFiles'] as bool,
  cacheRemoteSensitiveFiles: json['cacheRemoteSensitiveFiles'] as bool,
  emailRequiredForSignup: json['emailRequiredForSignup'] as bool,
  enableHcaptcha: json['enableHcaptcha'] as bool,
  hcaptchaSiteKey: json['hcaptchaSiteKey'] as String?,
  enableMcaptcha: json['enableMcaptcha'] as bool,
  mcaptchaSiteKey: json['mcaptchaSiteKey'] as String?,
  mcaptchaInstanceUrl: json['mcaptchaInstanceUrl'] as String?,
  enableRecaptcha: json['enableRecaptcha'] as bool,
  recaptchaSiteKey: json['recaptchaSiteKey'] as String?,
  enableTurnstile: json['enableTurnstile'] as bool,
  turnstileSiteKey: json['turnstileSiteKey'] as String?,
  enableTestcaptcha: json['enableTestcaptcha'] as bool,
  googleAnalyticsMeasurementId: json['googleAnalyticsMeasurementId'] as String?,
  swPublickey: json['swPublickey'] as String?,
  mascotImageUrl: json['mascotImageUrl'] as String?,
  bannerUrl: json['bannerUrl'] as String?,
  serverErrorImageUrl: json['serverErrorImageUrl'] as String?,
  infoImageUrl: json['infoImageUrl'] as String?,
  notFoundImageUrl: json['notFoundImageUrl'] as String?,
  iconUrl: json['iconUrl'] as String?,
  app192IconUrl: json['app192IconUrl'] as String?,
  app512IconUrl: json['app512IconUrl'] as String?,
  enableEmail: json['enableEmail'] as bool,
  enableServiceWorker: json['enableServiceWorker'] as bool,
  translatorAvailable: json['translatorAvailable'] as bool,
  silencedHosts: (json['silencedHosts'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  mediaSilencedHosts: (json['mediaSilencedHosts'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  pinnedUsers: (json['pinnedUsers'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  hiddenTags: (json['hiddenTags'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  blockedHosts: (json['blockedHosts'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  sensitiveWords: (json['sensitiveWords'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  prohibitedWords: (json['prohibitedWords'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  prohibitedWordsForNameOfUser:
      (json['prohibitedWordsForNameOfUser'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
  bannedEmailDomains: (json['bannedEmailDomains'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  preservedUsernames: (json['preservedUsernames'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  hcaptchaSecretKey: json['hcaptchaSecretKey'] as String?,
  mcaptchaSecretKey: json['mcaptchaSecretKey'] as String?,
  recaptchaSecretKey: json['recaptchaSecretKey'] as String?,
  turnstileSecretKey: json['turnstileSecretKey'] as String?,
  sensitiveMediaDetection: $enumDecode(
    _$AdminMetaResponseSensitiveMediaDetectionEnumMap,
    json['sensitiveMediaDetection'],
  ),
  sensitiveMediaDetectionSensitivity: $enumDecode(
    _$AdminMetaResponseSensitiveMediaDetectionSensitivityEnumMap,
    json['sensitiveMediaDetectionSensitivity'],
  ),
  setSensitiveFlagAutomatically: json['setSensitiveFlagAutomatically'] as bool,
  enableSensitiveMediaDetectionForVideos:
      json['enableSensitiveMediaDetectionForVideos'] as bool,
  sensitiveMediaDetectionApiUrl:
      json['sensitiveMediaDetectionApiUrl'] as String?,
  sensitiveMediaDetectionApiKey:
      json['sensitiveMediaDetectionApiKey'] as String?,
  sensitiveMediaDetectionTimeout: json['sensitiveMediaDetectionTimeout'] as num,
  sensitiveMediaDetectionMaxImagesPerRequest:
      json['sensitiveMediaDetectionMaxImagesPerRequest'] as num,
  proxyAccountId: json['proxyAccountId'] as String,
  email: json['email'] as String?,
  smtpSecure: json['smtpSecure'] as bool,
  smtpHost: json['smtpHost'] as String?,
  smtpPort: json['smtpPort'] as num?,
  smtpUser: json['smtpUser'] as String?,
  smtpPass: json['smtpPass'] as String?,
  swPrivateKey: json['swPrivateKey'] as String?,
  useObjectStorage: json['useObjectStorage'] as bool,
  objectStorageBaseUrl: json['objectStorageBaseUrl'] as String?,
  objectStorageBucket: json['objectStorageBucket'] as String?,
  objectStoragePrefix: json['objectStoragePrefix'] as String?,
  objectStorageEndpoint: json['objectStorageEndpoint'] as String?,
  objectStorageRegion: json['objectStorageRegion'] as String?,
  objectStoragePort: json['objectStoragePort'] as num?,
  objectStorageAccessKey: json['objectStorageAccessKey'] as String?,
  objectStorageSecretKey: json['objectStorageSecretKey'] as String?,
  objectStorageUseSSL: json['objectStorageUseSSL'] as bool,
  objectStorageUseProxy: json['objectStorageUseProxy'] as bool,
  objectStorageSetPublicRead: json['objectStorageSetPublicRead'] as bool,
  enableIpLogging: json['enableIpLogging'] as bool,
  enableActiveEmailValidation: json['enableActiveEmailValidation'] as bool,
  enableVerifymailApi: json['enableVerifymailApi'] as bool,
  verifymailAuthKey: json['verifymailAuthKey'] as String?,
  enableTruemailApi: json['enableTruemailApi'] as bool,
  truemailInstance: json['truemailInstance'] as String?,
  truemailAuthKey: json['truemailAuthKey'] as String?,
  enableChartsForRemoteUser: json['enableChartsForRemoteUser'] as bool,
  enableChartsForFederatedInstances:
      json['enableChartsForFederatedInstances'] as bool,
  enableStatsForFederatedInstances:
      json['enableStatsForFederatedInstances'] as bool,
  enableServerMachineStats: json['enableServerMachineStats'] as bool,
  enableIdenticonGeneration: json['enableIdenticonGeneration'] as bool,
  manifestJsonOverride: json['manifestJsonOverride'] as String,
  policies: json['policies'] as Map<String, dynamic>,
  enableFanoutTimeline: json['enableFanoutTimeline'] as bool,
  enableFanoutTimelineDbFallback:
      json['enableFanoutTimelineDbFallback'] as bool,
  perLocalUserUserTimelineCacheMax:
      json['perLocalUserUserTimelineCacheMax'] as num,
  perRemoteUserUserTimelineCacheMax:
      json['perRemoteUserUserTimelineCacheMax'] as num,
  perUserHomeTimelineCacheMax: json['perUserHomeTimelineCacheMax'] as num,
  perUserListTimelineCacheMax: json['perUserListTimelineCacheMax'] as num,
  enableReactionsBuffering: json['enableReactionsBuffering'] as bool,
  notesPerOneAd: json['notesPerOneAd'] as num,
  backgroundImageUrl: json['backgroundImageUrl'] as String?,
  deeplAuthKey: json['deeplAuthKey'] as String?,
  deeplIsPro: json['deeplIsPro'] as bool,
  defaultDarkTheme: json['defaultDarkTheme'] as String?,
  defaultLightTheme: json['defaultLightTheme'] as String?,
  clientOptions: MetaClientOptions.fromJson(
    json['clientOptions'] as Map<String, dynamic>,
  ),
  description: json['description'] as String?,
  disableRegistration: json['disableRegistration'] as bool,
  impressumUrl: json['impressumUrl'] as String?,
  maintainerEmail: json['maintainerEmail'] as String?,
  maintainerName: json['maintainerName'] as String?,
  name: json['name'] as String?,
  shortName: json['shortName'] as String?,
  objectStorageS3ForcePathStyle: json['objectStorageS3ForcePathStyle'] as bool,
  privacyPolicyUrl: json['privacyPolicyUrl'] as String?,
  inquiryUrl: json['inquiryUrl'] as String?,
  repositoryUrl: json['repositoryUrl'] as String?,
  feedbackUrl: json['feedbackUrl'] as String?,
  summalyProxy: json['summalyProxy'] as String?,
  themeColor: json['themeColor'] as String?,
  tosUrl: json['tosUrl'] as String?,
  uri: json['uri'] as String,
  version: json['version'] as String,
  urlPreviewEnabled: json['urlPreviewEnabled'] as bool,
  urlPreviewAllowRedirect: json['urlPreviewAllowRedirect'] as bool,
  urlPreviewTimeout: json['urlPreviewTimeout'] as num,
  urlPreviewMaximumContentLength: json['urlPreviewMaximumContentLength'] as num,
  urlPreviewRequireContentLength:
      json['urlPreviewRequireContentLength'] as bool,
  urlPreviewUserAgent: json['urlPreviewUserAgent'] as String?,
  urlPreviewSummaryProxyUrl: json['urlPreviewSummaryProxyUrl'] as String?,
  urlPreviewSensitiveList: (json['urlPreviewSensitiveList'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  federation: $enumDecode(
    _$AdminMetaResponseFederationEnumMap,
    json['federation'],
  ),
  federationHosts: (json['federationHosts'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  deliverSuspendedSoftware: (json['deliverSuspendedSoftware'] as List<dynamic>)
      .map(
        (e) => AdminMetaResponseDeliverSuspendedSoftwareItem.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  singleUserMode: json['singleUserMode'] as bool,
  ugcVisibilityForVisitor: $enumDecode(
    _$AdminMetaResponseUgcVisibilityForVisitorEnumMap,
    json['ugcVisibilityForVisitor'],
  ),
  proxyRemoteFiles: json['proxyRemoteFiles'] as bool,
  signToActivityPubGet: json['signToActivityPubGet'] as bool,
  allowExternalApRedirect: json['allowExternalApRedirect'] as bool,
  enableRemoteNotesCleaning: json['enableRemoteNotesCleaning'] as bool,
  remoteNotesCleaningExpiryDaysForEachNotes:
      json['remoteNotesCleaningExpiryDaysForEachNotes'] as num,
  remoteNotesCleaningMaxProcessingDurationInMinutes:
      json['remoteNotesCleaningMaxProcessingDurationInMinutes'] as num,
  showRoleBadgesOfRemoteUsers: json['showRoleBadgesOfRemoteUsers'] as bool,
);

Map<String, dynamic> _$AdminMetaResponseToJson(
  AdminMetaResponse instance,
) => <String, dynamic>{
  'cacheRemoteFiles': instance.cacheRemoteFiles,
  'cacheRemoteSensitiveFiles': instance.cacheRemoteSensitiveFiles,
  'emailRequiredForSignup': instance.emailRequiredForSignup,
  'enableHcaptcha': instance.enableHcaptcha,
  'hcaptchaSiteKey': instance.hcaptchaSiteKey,
  'enableMcaptcha': instance.enableMcaptcha,
  'mcaptchaSiteKey': instance.mcaptchaSiteKey,
  'mcaptchaInstanceUrl': instance.mcaptchaInstanceUrl,
  'enableRecaptcha': instance.enableRecaptcha,
  'recaptchaSiteKey': instance.recaptchaSiteKey,
  'enableTurnstile': instance.enableTurnstile,
  'turnstileSiteKey': instance.turnstileSiteKey,
  'enableTestcaptcha': instance.enableTestcaptcha,
  'googleAnalyticsMeasurementId': instance.googleAnalyticsMeasurementId,
  'swPublickey': instance.swPublickey,
  'mascotImageUrl': instance.mascotImageUrl,
  'bannerUrl': instance.bannerUrl,
  'serverErrorImageUrl': instance.serverErrorImageUrl,
  'infoImageUrl': instance.infoImageUrl,
  'notFoundImageUrl': instance.notFoundImageUrl,
  'iconUrl': instance.iconUrl,
  'app192IconUrl': instance.app192IconUrl,
  'app512IconUrl': instance.app512IconUrl,
  'enableEmail': instance.enableEmail,
  'enableServiceWorker': instance.enableServiceWorker,
  'translatorAvailable': instance.translatorAvailable,
  'silencedHosts': ?instance.silencedHosts,
  'mediaSilencedHosts': instance.mediaSilencedHosts,
  'pinnedUsers': instance.pinnedUsers,
  'hiddenTags': instance.hiddenTags,
  'blockedHosts': instance.blockedHosts,
  'sensitiveWords': instance.sensitiveWords,
  'prohibitedWords': instance.prohibitedWords,
  'prohibitedWordsForNameOfUser': instance.prohibitedWordsForNameOfUser,
  'bannedEmailDomains': ?instance.bannedEmailDomains,
  'preservedUsernames': instance.preservedUsernames,
  'hcaptchaSecretKey': instance.hcaptchaSecretKey,
  'mcaptchaSecretKey': instance.mcaptchaSecretKey,
  'recaptchaSecretKey': instance.recaptchaSecretKey,
  'turnstileSecretKey': instance.turnstileSecretKey,
  'sensitiveMediaDetection':
      _$AdminMetaResponseSensitiveMediaDetectionEnumMap[instance
          .sensitiveMediaDetection]!,
  'sensitiveMediaDetectionSensitivity':
      _$AdminMetaResponseSensitiveMediaDetectionSensitivityEnumMap[instance
          .sensitiveMediaDetectionSensitivity]!,
  'setSensitiveFlagAutomatically': instance.setSensitiveFlagAutomatically,
  'enableSensitiveMediaDetectionForVideos':
      instance.enableSensitiveMediaDetectionForVideos,
  'sensitiveMediaDetectionApiUrl': instance.sensitiveMediaDetectionApiUrl,
  'sensitiveMediaDetectionApiKey': instance.sensitiveMediaDetectionApiKey,
  'sensitiveMediaDetectionTimeout': instance.sensitiveMediaDetectionTimeout,
  'sensitiveMediaDetectionMaxImagesPerRequest':
      instance.sensitiveMediaDetectionMaxImagesPerRequest,
  'proxyAccountId': instance.proxyAccountId,
  'email': instance.email,
  'smtpSecure': instance.smtpSecure,
  'smtpHost': instance.smtpHost,
  'smtpPort': instance.smtpPort,
  'smtpUser': instance.smtpUser,
  'smtpPass': instance.smtpPass,
  'swPrivateKey': instance.swPrivateKey,
  'useObjectStorage': instance.useObjectStorage,
  'objectStorageBaseUrl': instance.objectStorageBaseUrl,
  'objectStorageBucket': instance.objectStorageBucket,
  'objectStoragePrefix': instance.objectStoragePrefix,
  'objectStorageEndpoint': instance.objectStorageEndpoint,
  'objectStorageRegion': instance.objectStorageRegion,
  'objectStoragePort': instance.objectStoragePort,
  'objectStorageAccessKey': instance.objectStorageAccessKey,
  'objectStorageSecretKey': instance.objectStorageSecretKey,
  'objectStorageUseSSL': instance.objectStorageUseSSL,
  'objectStorageUseProxy': instance.objectStorageUseProxy,
  'objectStorageSetPublicRead': instance.objectStorageSetPublicRead,
  'enableIpLogging': instance.enableIpLogging,
  'enableActiveEmailValidation': instance.enableActiveEmailValidation,
  'enableVerifymailApi': instance.enableVerifymailApi,
  'verifymailAuthKey': instance.verifymailAuthKey,
  'enableTruemailApi': instance.enableTruemailApi,
  'truemailInstance': instance.truemailInstance,
  'truemailAuthKey': instance.truemailAuthKey,
  'enableChartsForRemoteUser': instance.enableChartsForRemoteUser,
  'enableChartsForFederatedInstances':
      instance.enableChartsForFederatedInstances,
  'enableStatsForFederatedInstances': instance.enableStatsForFederatedInstances,
  'enableServerMachineStats': instance.enableServerMachineStats,
  'enableIdenticonGeneration': instance.enableIdenticonGeneration,
  'manifestJsonOverride': instance.manifestJsonOverride,
  'policies': instance.policies,
  'enableFanoutTimeline': instance.enableFanoutTimeline,
  'enableFanoutTimelineDbFallback': instance.enableFanoutTimelineDbFallback,
  'perLocalUserUserTimelineCacheMax': instance.perLocalUserUserTimelineCacheMax,
  'perRemoteUserUserTimelineCacheMax':
      instance.perRemoteUserUserTimelineCacheMax,
  'perUserHomeTimelineCacheMax': instance.perUserHomeTimelineCacheMax,
  'perUserListTimelineCacheMax': instance.perUserListTimelineCacheMax,
  'enableReactionsBuffering': instance.enableReactionsBuffering,
  'notesPerOneAd': instance.notesPerOneAd,
  'backgroundImageUrl': instance.backgroundImageUrl,
  'deeplAuthKey': instance.deeplAuthKey,
  'deeplIsPro': instance.deeplIsPro,
  'defaultDarkTheme': instance.defaultDarkTheme,
  'defaultLightTheme': instance.defaultLightTheme,
  'clientOptions': instance.clientOptions.toJson(),
  'description': instance.description,
  'disableRegistration': instance.disableRegistration,
  'impressumUrl': instance.impressumUrl,
  'maintainerEmail': instance.maintainerEmail,
  'maintainerName': instance.maintainerName,
  'name': instance.name,
  'shortName': instance.shortName,
  'objectStorageS3ForcePathStyle': instance.objectStorageS3ForcePathStyle,
  'privacyPolicyUrl': instance.privacyPolicyUrl,
  'inquiryUrl': instance.inquiryUrl,
  'repositoryUrl': instance.repositoryUrl,
  'feedbackUrl': instance.feedbackUrl,
  'summalyProxy': instance.summalyProxy,
  'themeColor': instance.themeColor,
  'tosUrl': instance.tosUrl,
  'uri': instance.uri,
  'version': instance.version,
  'urlPreviewEnabled': instance.urlPreviewEnabled,
  'urlPreviewAllowRedirect': instance.urlPreviewAllowRedirect,
  'urlPreviewTimeout': instance.urlPreviewTimeout,
  'urlPreviewMaximumContentLength': instance.urlPreviewMaximumContentLength,
  'urlPreviewRequireContentLength': instance.urlPreviewRequireContentLength,
  'urlPreviewUserAgent': instance.urlPreviewUserAgent,
  'urlPreviewSummaryProxyUrl': instance.urlPreviewSummaryProxyUrl,
  'urlPreviewSensitiveList': instance.urlPreviewSensitiveList,
  'federation': _$AdminMetaResponseFederationEnumMap[instance.federation]!,
  'federationHosts': instance.federationHosts,
  'deliverSuspendedSoftware': instance.deliverSuspendedSoftware
      .map((e) => e.toJson())
      .toList(),
  'singleUserMode': instance.singleUserMode,
  'ugcVisibilityForVisitor':
      _$AdminMetaResponseUgcVisibilityForVisitorEnumMap[instance
          .ugcVisibilityForVisitor]!,
  'proxyRemoteFiles': instance.proxyRemoteFiles,
  'signToActivityPubGet': instance.signToActivityPubGet,
  'allowExternalApRedirect': instance.allowExternalApRedirect,
  'enableRemoteNotesCleaning': instance.enableRemoteNotesCleaning,
  'remoteNotesCleaningExpiryDaysForEachNotes':
      instance.remoteNotesCleaningExpiryDaysForEachNotes,
  'remoteNotesCleaningMaxProcessingDurationInMinutes':
      instance.remoteNotesCleaningMaxProcessingDurationInMinutes,
  'showRoleBadgesOfRemoteUsers': instance.showRoleBadgesOfRemoteUsers,
};

const _$AdminMetaResponseSensitiveMediaDetectionEnumMap = {
  AdminMetaResponseSensitiveMediaDetection.none: 'none',
  AdminMetaResponseSensitiveMediaDetection.all: 'all',
  AdminMetaResponseSensitiveMediaDetection.local: 'local',
  AdminMetaResponseSensitiveMediaDetection.remote: 'remote',
};

const _$AdminMetaResponseSensitiveMediaDetectionSensitivityEnumMap = {
  AdminMetaResponseSensitiveMediaDetectionSensitivity.medium: 'medium',
  AdminMetaResponseSensitiveMediaDetectionSensitivity.low: 'low',
  AdminMetaResponseSensitiveMediaDetectionSensitivity.high: 'high',
  AdminMetaResponseSensitiveMediaDetectionSensitivity.veryLow: 'veryLow',
  AdminMetaResponseSensitiveMediaDetectionSensitivity.veryHigh: 'veryHigh',
};

const _$AdminMetaResponseFederationEnumMap = {
  AdminMetaResponseFederation.all: 'all',
  AdminMetaResponseFederation.specified: 'specified',
  AdminMetaResponseFederation.none: 'none',
};

const _$AdminMetaResponseUgcVisibilityForVisitorEnumMap = {
  AdminMetaResponseUgcVisibilityForVisitor.all: 'all',
  AdminMetaResponseUgcVisibilityForVisitor.local: 'local',
  AdminMetaResponseUgcVisibilityForVisitor.none: 'none',
};

AdminPromoCreateRequest _$AdminPromoCreateRequestFromJson(
  Map<String, dynamic> json,
) => AdminPromoCreateRequest(
  noteId: json['noteId'] as String,
  expiresAt: (json['expiresAt'] as num).toInt(),
);

Map<String, dynamic> _$AdminPromoCreateRequestToJson(
  AdminPromoCreateRequest instance,
) => <String, dynamic>{
  'noteId': instance.noteId,
  'expiresAt': instance.expiresAt,
};

AdminQueueClearRequest _$AdminQueueClearRequestFromJson(
  Map<String, dynamic> json,
) => AdminQueueClearRequest(
  queue: $enumDecode(_$AdminQueueClearRequestQueueEnumMap, json['queue']),
  state: $enumDecode(_$AdminQueueClearRequestStateEnumMap, json['state']),
);

Map<String, dynamic> _$AdminQueueClearRequestToJson(
  AdminQueueClearRequest instance,
) => <String, dynamic>{
  'queue': _$AdminQueueClearRequestQueueEnumMap[instance.queue]!,
  'state': _$AdminQueueClearRequestStateEnumMap[instance.state]!,
};

const _$AdminQueueClearRequestQueueEnumMap = {
  AdminQueueClearRequestQueue.system: 'system',
  AdminQueueClearRequestQueue.endedPollNotification: 'endedPollNotification',
  AdminQueueClearRequestQueue.postScheduledNote: 'postScheduledNote',
  AdminQueueClearRequestQueue.deliver: 'deliver',
  AdminQueueClearRequestQueue.inbox: 'inbox',
  AdminQueueClearRequestQueue.db: 'db',
  AdminQueueClearRequestQueue.relationship: 'relationship',
  AdminQueueClearRequestQueue.objectStorage: 'objectStorage',
  AdminQueueClearRequestQueue.userWebhookDeliver: 'userWebhookDeliver',
  AdminQueueClearRequestQueue.systemWebhookDeliver: 'systemWebhookDeliver',
};

const _$AdminQueueClearRequestStateEnumMap = {
  AdminQueueClearRequestState.value: '*',
  AdminQueueClearRequestState.completed: 'completed',
  AdminQueueClearRequestState.wait: 'wait',
  AdminQueueClearRequestState.active: 'active',
  AdminQueueClearRequestState.paused: 'paused',
  AdminQueueClearRequestState.prioritized: 'prioritized',
  AdminQueueClearRequestState.delayed: 'delayed',
  AdminQueueClearRequestState.failed: 'failed',
};

AdminQueueJobsRequest _$AdminQueueJobsRequestFromJson(
  Map<String, dynamic> json,
) => AdminQueueJobsRequest(
  queue: $enumDecode(_$AdminQueueJobsRequestQueueEnumMap, json['queue']),
  state: (json['state'] as List<dynamic>)
      .map((e) => $enumDecode(_$AdminQueueJobsRequestStateItemEnumMap, e))
      .toList(),
  search: json['search'] as String?,
);

Map<String, dynamic> _$AdminQueueJobsRequestToJson(
  AdminQueueJobsRequest instance,
) => <String, dynamic>{
  'queue': _$AdminQueueJobsRequestQueueEnumMap[instance.queue]!,
  'state': instance.state
      .map((e) => _$AdminQueueJobsRequestStateItemEnumMap[e]!)
      .toList(),
  'search': ?instance.search,
};

const _$AdminQueueJobsRequestQueueEnumMap = {
  AdminQueueJobsRequestQueue.system: 'system',
  AdminQueueJobsRequestQueue.endedPollNotification: 'endedPollNotification',
  AdminQueueJobsRequestQueue.postScheduledNote: 'postScheduledNote',
  AdminQueueJobsRequestQueue.deliver: 'deliver',
  AdminQueueJobsRequestQueue.inbox: 'inbox',
  AdminQueueJobsRequestQueue.db: 'db',
  AdminQueueJobsRequestQueue.relationship: 'relationship',
  AdminQueueJobsRequestQueue.objectStorage: 'objectStorage',
  AdminQueueJobsRequestQueue.userWebhookDeliver: 'userWebhookDeliver',
  AdminQueueJobsRequestQueue.systemWebhookDeliver: 'systemWebhookDeliver',
};

const _$AdminQueueJobsRequestStateItemEnumMap = {
  AdminQueueJobsRequestStateItem.active: 'active',
  AdminQueueJobsRequestStateItem.wait: 'wait',
  AdminQueueJobsRequestStateItem.delayed: 'delayed',
  AdminQueueJobsRequestStateItem.completed: 'completed',
  AdminQueueJobsRequestStateItem.failed: 'failed',
};

AdminQueuePauseRequest _$AdminQueuePauseRequestFromJson(
  Map<String, dynamic> json,
) => AdminQueuePauseRequest(
  queue: $enumDecode(_$AdminQueuePauseRequestQueueEnumMap, json['queue']),
);

Map<String, dynamic> _$AdminQueuePauseRequestToJson(
  AdminQueuePauseRequest instance,
) => <String, dynamic>{
  'queue': _$AdminQueuePauseRequestQueueEnumMap[instance.queue]!,
};

const _$AdminQueuePauseRequestQueueEnumMap = {
  AdminQueuePauseRequestQueue.system: 'system',
  AdminQueuePauseRequestQueue.endedPollNotification: 'endedPollNotification',
  AdminQueuePauseRequestQueue.postScheduledNote: 'postScheduledNote',
  AdminQueuePauseRequestQueue.deliver: 'deliver',
  AdminQueuePauseRequestQueue.inbox: 'inbox',
  AdminQueuePauseRequestQueue.db: 'db',
  AdminQueuePauseRequestQueue.relationship: 'relationship',
  AdminQueuePauseRequestQueue.objectStorage: 'objectStorage',
  AdminQueuePauseRequestQueue.userWebhookDeliver: 'userWebhookDeliver',
  AdminQueuePauseRequestQueue.systemWebhookDeliver: 'systemWebhookDeliver',
};

AdminQueuePromoteJobsRequest _$AdminQueuePromoteJobsRequestFromJson(
  Map<String, dynamic> json,
) => AdminQueuePromoteJobsRequest(
  queue: $enumDecode(_$AdminQueuePromoteJobsRequestQueueEnumMap, json['queue']),
);

Map<String, dynamic> _$AdminQueuePromoteJobsRequestToJson(
  AdminQueuePromoteJobsRequest instance,
) => <String, dynamic>{
  'queue': _$AdminQueuePromoteJobsRequestQueueEnumMap[instance.queue]!,
};

const _$AdminQueuePromoteJobsRequestQueueEnumMap = {
  AdminQueuePromoteJobsRequestQueue.system: 'system',
  AdminQueuePromoteJobsRequestQueue.endedPollNotification:
      'endedPollNotification',
  AdminQueuePromoteJobsRequestQueue.postScheduledNote: 'postScheduledNote',
  AdminQueuePromoteJobsRequestQueue.deliver: 'deliver',
  AdminQueuePromoteJobsRequestQueue.inbox: 'inbox',
  AdminQueuePromoteJobsRequestQueue.db: 'db',
  AdminQueuePromoteJobsRequestQueue.relationship: 'relationship',
  AdminQueuePromoteJobsRequestQueue.objectStorage: 'objectStorage',
  AdminQueuePromoteJobsRequestQueue.userWebhookDeliver: 'userWebhookDeliver',
  AdminQueuePromoteJobsRequestQueue.systemWebhookDeliver:
      'systemWebhookDeliver',
};

AdminQueueQueueStatsRequest _$AdminQueueQueueStatsRequestFromJson(
  Map<String, dynamic> json,
) => AdminQueueQueueStatsRequest(
  queue: $enumDecode(_$AdminQueueQueueStatsRequestQueueEnumMap, json['queue']),
);

Map<String, dynamic> _$AdminQueueQueueStatsRequestToJson(
  AdminQueueQueueStatsRequest instance,
) => <String, dynamic>{
  'queue': _$AdminQueueQueueStatsRequestQueueEnumMap[instance.queue]!,
};

const _$AdminQueueQueueStatsRequestQueueEnumMap = {
  AdminQueueQueueStatsRequestQueue.system: 'system',
  AdminQueueQueueStatsRequestQueue.endedPollNotification:
      'endedPollNotification',
  AdminQueueQueueStatsRequestQueue.postScheduledNote: 'postScheduledNote',
  AdminQueueQueueStatsRequestQueue.deliver: 'deliver',
  AdminQueueQueueStatsRequestQueue.inbox: 'inbox',
  AdminQueueQueueStatsRequestQueue.db: 'db',
  AdminQueueQueueStatsRequestQueue.relationship: 'relationship',
  AdminQueueQueueStatsRequestQueue.objectStorage: 'objectStorage',
  AdminQueueQueueStatsRequestQueue.userWebhookDeliver: 'userWebhookDeliver',
  AdminQueueQueueStatsRequestQueue.systemWebhookDeliver: 'systemWebhookDeliver',
};

AdminQueueQueueStatsResponseMetrics
_$AdminQueueQueueStatsResponseMetricsFromJson(Map<String, dynamic> json) =>
    AdminQueueQueueStatsResponseMetrics(
      completed: QueueMetrics.fromJson(
        json['completed'] as Map<String, dynamic>,
      ),
      failed: QueueMetrics.fromJson(json['failed'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminQueueQueueStatsResponseMetricsToJson(
  AdminQueueQueueStatsResponseMetrics instance,
) => <String, dynamic>{
  'completed': instance.completed.toJson(),
  'failed': instance.failed.toJson(),
};

AdminQueueQueueStatsResponseDbMemory
_$AdminQueueQueueStatsResponseDbMemoryFromJson(Map<String, dynamic> json) =>
    AdminQueueQueueStatsResponseDbMemory(
      total: json['total'] as num,
      used: json['used'] as num,
      fragmentationRatio: json['fragmentationRatio'] as num,
      peak: json['peak'] as num,
    );

Map<String, dynamic> _$AdminQueueQueueStatsResponseDbMemoryToJson(
  AdminQueueQueueStatsResponseDbMemory instance,
) => <String, dynamic>{
  'total': instance.total,
  'used': instance.used,
  'fragmentationRatio': instance.fragmentationRatio,
  'peak': instance.peak,
};

AdminQueueQueueStatsResponseDbClients
_$AdminQueueQueueStatsResponseDbClientsFromJson(Map<String, dynamic> json) =>
    AdminQueueQueueStatsResponseDbClients(
      blocked: json['blocked'] as num,
      connected: json['connected'] as num,
    );

Map<String, dynamic> _$AdminQueueQueueStatsResponseDbClientsToJson(
  AdminQueueQueueStatsResponseDbClients instance,
) => <String, dynamic>{
  'blocked': instance.blocked,
  'connected': instance.connected,
};

AdminQueueQueueStatsResponseDb _$AdminQueueQueueStatsResponseDbFromJson(
  Map<String, dynamic> json,
) => AdminQueueQueueStatsResponseDb(
  version: json['version'] as String,
  mode: $enumDecode(_$AdminQueueQueueStatsResponseDbModeEnumMap, json['mode']),
  runId: json['runId'] as String,
  processId: json['processId'] as String,
  port: json['port'] as num,
  os: json['os'] as String,
  uptime: json['uptime'] as num,
  memory: AdminQueueQueueStatsResponseDbMemory.fromJson(
    json['memory'] as Map<String, dynamic>,
  ),
  clients: AdminQueueQueueStatsResponseDbClients.fromJson(
    json['clients'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$AdminQueueQueueStatsResponseDbToJson(
  AdminQueueQueueStatsResponseDb instance,
) => <String, dynamic>{
  'version': instance.version,
  'mode': _$AdminQueueQueueStatsResponseDbModeEnumMap[instance.mode]!,
  'runId': instance.runId,
  'processId': instance.processId,
  'port': instance.port,
  'os': instance.os,
  'uptime': instance.uptime,
  'memory': instance.memory.toJson(),
  'clients': instance.clients.toJson(),
};

const _$AdminQueueQueueStatsResponseDbModeEnumMap = {
  AdminQueueQueueStatsResponseDbMode.cluster: 'cluster',
  AdminQueueQueueStatsResponseDbMode.standalone: 'standalone',
  AdminQueueQueueStatsResponseDbMode.sentinel: 'sentinel',
};

AdminQueueQueueStatsResponse _$AdminQueueQueueStatsResponseFromJson(
  Map<String, dynamic> json,
) => AdminQueueQueueStatsResponse(
  name: $enumDecode(_$AdminQueueQueueStatsResponseNameEnumMap, json['name']),
  qualifiedName: json['qualifiedName'] as String,
  counts: Map<String, num>.from(json['counts'] as Map),
  isPaused: json['isPaused'] as bool,
  metrics: AdminQueueQueueStatsResponseMetrics.fromJson(
    json['metrics'] as Map<String, dynamic>,
  ),
  db: AdminQueueQueueStatsResponseDb.fromJson(
    json['db'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$AdminQueueQueueStatsResponseToJson(
  AdminQueueQueueStatsResponse instance,
) => <String, dynamic>{
  'name': _$AdminQueueQueueStatsResponseNameEnumMap[instance.name]!,
  'qualifiedName': instance.qualifiedName,
  'counts': instance.counts,
  'isPaused': instance.isPaused,
  'metrics': instance.metrics.toJson(),
  'db': instance.db.toJson(),
};

const _$AdminQueueQueueStatsResponseNameEnumMap = {
  AdminQueueQueueStatsResponseName.system: 'system',
  AdminQueueQueueStatsResponseName.endedPollNotification:
      'endedPollNotification',
  AdminQueueQueueStatsResponseName.postScheduledNote: 'postScheduledNote',
  AdminQueueQueueStatsResponseName.deliver: 'deliver',
  AdminQueueQueueStatsResponseName.inbox: 'inbox',
  AdminQueueQueueStatsResponseName.db: 'db',
  AdminQueueQueueStatsResponseName.relationship: 'relationship',
  AdminQueueQueueStatsResponseName.objectStorage: 'objectStorage',
  AdminQueueQueueStatsResponseName.userWebhookDeliver: 'userWebhookDeliver',
  AdminQueueQueueStatsResponseName.systemWebhookDeliver: 'systemWebhookDeliver',
};

AdminQueueQueuesResponseItemMetrics
_$AdminQueueQueuesResponseItemMetricsFromJson(Map<String, dynamic> json) =>
    AdminQueueQueuesResponseItemMetrics(
      completed: QueueMetrics.fromJson(
        json['completed'] as Map<String, dynamic>,
      ),
      failed: QueueMetrics.fromJson(json['failed'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminQueueQueuesResponseItemMetricsToJson(
  AdminQueueQueuesResponseItemMetrics instance,
) => <String, dynamic>{
  'completed': instance.completed.toJson(),
  'failed': instance.failed.toJson(),
};

AdminQueueQueuesResponseItem _$AdminQueueQueuesResponseItemFromJson(
  Map<String, dynamic> json,
) => AdminQueueQueuesResponseItem(
  name: $enumDecode(_$AdminQueueQueuesResponseItemNameEnumMap, json['name']),
  counts: Map<String, num>.from(json['counts'] as Map),
  isPaused: json['isPaused'] as bool,
  metrics: AdminQueueQueuesResponseItemMetrics.fromJson(
    json['metrics'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$AdminQueueQueuesResponseItemToJson(
  AdminQueueQueuesResponseItem instance,
) => <String, dynamic>{
  'name': _$AdminQueueQueuesResponseItemNameEnumMap[instance.name]!,
  'counts': instance.counts,
  'isPaused': instance.isPaused,
  'metrics': instance.metrics.toJson(),
};

const _$AdminQueueQueuesResponseItemNameEnumMap = {
  AdminQueueQueuesResponseItemName.system: 'system',
  AdminQueueQueuesResponseItemName.endedPollNotification:
      'endedPollNotification',
  AdminQueueQueuesResponseItemName.postScheduledNote: 'postScheduledNote',
  AdminQueueQueuesResponseItemName.deliver: 'deliver',
  AdminQueueQueuesResponseItemName.inbox: 'inbox',
  AdminQueueQueuesResponseItemName.db: 'db',
  AdminQueueQueuesResponseItemName.relationship: 'relationship',
  AdminQueueQueuesResponseItemName.objectStorage: 'objectStorage',
  AdminQueueQueuesResponseItemName.userWebhookDeliver: 'userWebhookDeliver',
  AdminQueueQueuesResponseItemName.systemWebhookDeliver: 'systemWebhookDeliver',
};

AdminQueueRemoveJobRequest _$AdminQueueRemoveJobRequestFromJson(
  Map<String, dynamic> json,
) => AdminQueueRemoveJobRequest(
  queue: $enumDecode(_$AdminQueueRemoveJobRequestQueueEnumMap, json['queue']),
  jobId: json['jobId'] as String,
);

Map<String, dynamic> _$AdminQueueRemoveJobRequestToJson(
  AdminQueueRemoveJobRequest instance,
) => <String, dynamic>{
  'queue': _$AdminQueueRemoveJobRequestQueueEnumMap[instance.queue]!,
  'jobId': instance.jobId,
};

const _$AdminQueueRemoveJobRequestQueueEnumMap = {
  AdminQueueRemoveJobRequestQueue.system: 'system',
  AdminQueueRemoveJobRequestQueue.endedPollNotification:
      'endedPollNotification',
  AdminQueueRemoveJobRequestQueue.postScheduledNote: 'postScheduledNote',
  AdminQueueRemoveJobRequestQueue.deliver: 'deliver',
  AdminQueueRemoveJobRequestQueue.inbox: 'inbox',
  AdminQueueRemoveJobRequestQueue.db: 'db',
  AdminQueueRemoveJobRequestQueue.relationship: 'relationship',
  AdminQueueRemoveJobRequestQueue.objectStorage: 'objectStorage',
  AdminQueueRemoveJobRequestQueue.userWebhookDeliver: 'userWebhookDeliver',
  AdminQueueRemoveJobRequestQueue.systemWebhookDeliver: 'systemWebhookDeliver',
};

AdminQueueResumeRequest _$AdminQueueResumeRequestFromJson(
  Map<String, dynamic> json,
) => AdminQueueResumeRequest(
  queue: $enumDecode(_$AdminQueueResumeRequestQueueEnumMap, json['queue']),
);

Map<String, dynamic> _$AdminQueueResumeRequestToJson(
  AdminQueueResumeRequest instance,
) => <String, dynamic>{
  'queue': _$AdminQueueResumeRequestQueueEnumMap[instance.queue]!,
};

const _$AdminQueueResumeRequestQueueEnumMap = {
  AdminQueueResumeRequestQueue.system: 'system',
  AdminQueueResumeRequestQueue.endedPollNotification: 'endedPollNotification',
  AdminQueueResumeRequestQueue.postScheduledNote: 'postScheduledNote',
  AdminQueueResumeRequestQueue.deliver: 'deliver',
  AdminQueueResumeRequestQueue.inbox: 'inbox',
  AdminQueueResumeRequestQueue.db: 'db',
  AdminQueueResumeRequestQueue.relationship: 'relationship',
  AdminQueueResumeRequestQueue.objectStorage: 'objectStorage',
  AdminQueueResumeRequestQueue.userWebhookDeliver: 'userWebhookDeliver',
  AdminQueueResumeRequestQueue.systemWebhookDeliver: 'systemWebhookDeliver',
};

AdminQueueRetryJobRequest _$AdminQueueRetryJobRequestFromJson(
  Map<String, dynamic> json,
) => AdminQueueRetryJobRequest(
  queue: $enumDecode(_$AdminQueueRetryJobRequestQueueEnumMap, json['queue']),
  jobId: json['jobId'] as String,
);

Map<String, dynamic> _$AdminQueueRetryJobRequestToJson(
  AdminQueueRetryJobRequest instance,
) => <String, dynamic>{
  'queue': _$AdminQueueRetryJobRequestQueueEnumMap[instance.queue]!,
  'jobId': instance.jobId,
};

const _$AdminQueueRetryJobRequestQueueEnumMap = {
  AdminQueueRetryJobRequestQueue.system: 'system',
  AdminQueueRetryJobRequestQueue.endedPollNotification: 'endedPollNotification',
  AdminQueueRetryJobRequestQueue.postScheduledNote: 'postScheduledNote',
  AdminQueueRetryJobRequestQueue.deliver: 'deliver',
  AdminQueueRetryJobRequestQueue.inbox: 'inbox',
  AdminQueueRetryJobRequestQueue.db: 'db',
  AdminQueueRetryJobRequestQueue.relationship: 'relationship',
  AdminQueueRetryJobRequestQueue.objectStorage: 'objectStorage',
  AdminQueueRetryJobRequestQueue.userWebhookDeliver: 'userWebhookDeliver',
  AdminQueueRetryJobRequestQueue.systemWebhookDeliver: 'systemWebhookDeliver',
};

AdminQueueShowJobRequest _$AdminQueueShowJobRequestFromJson(
  Map<String, dynamic> json,
) => AdminQueueShowJobRequest(
  queue: $enumDecode(_$AdminQueueShowJobRequestQueueEnumMap, json['queue']),
  jobId: json['jobId'] as String,
);

Map<String, dynamic> _$AdminQueueShowJobRequestToJson(
  AdminQueueShowJobRequest instance,
) => <String, dynamic>{
  'queue': _$AdminQueueShowJobRequestQueueEnumMap[instance.queue]!,
  'jobId': instance.jobId,
};

const _$AdminQueueShowJobRequestQueueEnumMap = {
  AdminQueueShowJobRequestQueue.system: 'system',
  AdminQueueShowJobRequestQueue.endedPollNotification: 'endedPollNotification',
  AdminQueueShowJobRequestQueue.postScheduledNote: 'postScheduledNote',
  AdminQueueShowJobRequestQueue.deliver: 'deliver',
  AdminQueueShowJobRequestQueue.inbox: 'inbox',
  AdminQueueShowJobRequestQueue.db: 'db',
  AdminQueueShowJobRequestQueue.relationship: 'relationship',
  AdminQueueShowJobRequestQueue.objectStorage: 'objectStorage',
  AdminQueueShowJobRequestQueue.userWebhookDeliver: 'userWebhookDeliver',
  AdminQueueShowJobRequestQueue.systemWebhookDeliver: 'systemWebhookDeliver',
};

AdminQueueShowJobLogsRequest _$AdminQueueShowJobLogsRequestFromJson(
  Map<String, dynamic> json,
) => AdminQueueShowJobLogsRequest(
  queue: $enumDecode(_$AdminQueueShowJobLogsRequestQueueEnumMap, json['queue']),
  jobId: json['jobId'] as String,
);

Map<String, dynamic> _$AdminQueueShowJobLogsRequestToJson(
  AdminQueueShowJobLogsRequest instance,
) => <String, dynamic>{
  'queue': _$AdminQueueShowJobLogsRequestQueueEnumMap[instance.queue]!,
  'jobId': instance.jobId,
};

const _$AdminQueueShowJobLogsRequestQueueEnumMap = {
  AdminQueueShowJobLogsRequestQueue.system: 'system',
  AdminQueueShowJobLogsRequestQueue.endedPollNotification:
      'endedPollNotification',
  AdminQueueShowJobLogsRequestQueue.postScheduledNote: 'postScheduledNote',
  AdminQueueShowJobLogsRequestQueue.deliver: 'deliver',
  AdminQueueShowJobLogsRequestQueue.inbox: 'inbox',
  AdminQueueShowJobLogsRequestQueue.db: 'db',
  AdminQueueShowJobLogsRequestQueue.relationship: 'relationship',
  AdminQueueShowJobLogsRequestQueue.objectStorage: 'objectStorage',
  AdminQueueShowJobLogsRequestQueue.userWebhookDeliver: 'userWebhookDeliver',
  AdminQueueShowJobLogsRequestQueue.systemWebhookDeliver:
      'systemWebhookDeliver',
};

AdminQueueStatsResponse _$AdminQueueStatsResponseFromJson(
  Map<String, dynamic> json,
) => AdminQueueStatsResponse(
  deliver: QueueCount.fromJson(json['deliver'] as Map<String, dynamic>),
  inbox: QueueCount.fromJson(json['inbox'] as Map<String, dynamic>),
  db: QueueCount.fromJson(json['db'] as Map<String, dynamic>),
  objectStorage: QueueCount.fromJson(
    json['objectStorage'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$AdminQueueStatsResponseToJson(
  AdminQueueStatsResponse instance,
) => <String, dynamic>{
  'deliver': instance.deliver.toJson(),
  'inbox': instance.inbox.toJson(),
  'db': instance.db.toJson(),
  'objectStorage': instance.objectStorage.toJson(),
};

AdminRelaysAddRequest _$AdminRelaysAddRequestFromJson(
  Map<String, dynamic> json,
) => AdminRelaysAddRequest(inbox: json['inbox'] as String);

Map<String, dynamic> _$AdminRelaysAddRequestToJson(
  AdminRelaysAddRequest instance,
) => <String, dynamic>{'inbox': instance.inbox};

AdminRelaysAddResponse _$AdminRelaysAddResponseFromJson(
  Map<String, dynamic> json,
) => AdminRelaysAddResponse(
  id: json['id'] as String,
  inbox: json['inbox'] as String,
  status: $enumDecode(_$AdminRelaysAddResponseStatusEnumMap, json['status']),
);

Map<String, dynamic> _$AdminRelaysAddResponseToJson(
  AdminRelaysAddResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'inbox': instance.inbox,
  'status': _$AdminRelaysAddResponseStatusEnumMap[instance.status]!,
};

const _$AdminRelaysAddResponseStatusEnumMap = {
  AdminRelaysAddResponseStatus.requesting: 'requesting',
  AdminRelaysAddResponseStatus.accepted: 'accepted',
  AdminRelaysAddResponseStatus.rejected: 'rejected',
};

AdminRelaysListResponseItem _$AdminRelaysListResponseItemFromJson(
  Map<String, dynamic> json,
) => AdminRelaysListResponseItem(
  id: json['id'] as String,
  inbox: json['inbox'] as String,
  status: $enumDecode(
    _$AdminRelaysListResponseItemStatusEnumMap,
    json['status'],
  ),
);

Map<String, dynamic> _$AdminRelaysListResponseItemToJson(
  AdminRelaysListResponseItem instance,
) => <String, dynamic>{
  'id': instance.id,
  'inbox': instance.inbox,
  'status': _$AdminRelaysListResponseItemStatusEnumMap[instance.status]!,
};

const _$AdminRelaysListResponseItemStatusEnumMap = {
  AdminRelaysListResponseItemStatus.requesting: 'requesting',
  AdminRelaysListResponseItemStatus.accepted: 'accepted',
  AdminRelaysListResponseItemStatus.rejected: 'rejected',
};

AdminRelaysRemoveRequest _$AdminRelaysRemoveRequestFromJson(
  Map<String, dynamic> json,
) => AdminRelaysRemoveRequest(inbox: json['inbox'] as String);

Map<String, dynamic> _$AdminRelaysRemoveRequestToJson(
  AdminRelaysRemoveRequest instance,
) => <String, dynamic>{'inbox': instance.inbox};

AdminResetPasswordRequest _$AdminResetPasswordRequestFromJson(
  Map<String, dynamic> json,
) => AdminResetPasswordRequest(userId: json['userId'] as String);

Map<String, dynamic> _$AdminResetPasswordRequestToJson(
  AdminResetPasswordRequest instance,
) => <String, dynamic>{'userId': instance.userId};

AdminResetPasswordResponse _$AdminResetPasswordResponseFromJson(
  Map<String, dynamic> json,
) => AdminResetPasswordResponse(password: json['password'] as String);

Map<String, dynamic> _$AdminResetPasswordResponseToJson(
  AdminResetPasswordResponse instance,
) => <String, dynamic>{'password': instance.password};

AdminResolveAbuseUserReportRequest _$AdminResolveAbuseUserReportRequestFromJson(
  Map<String, dynamic> json,
) => AdminResolveAbuseUserReportRequest(
  reportId: json['reportId'] as String,
  resolvedAs: $enumDecodeNullable(
    _$AdminResolveAbuseUserReportRequestResolvedAsEnumMap,
    json['resolvedAs'],
  ),
);

Map<String, dynamic> _$AdminResolveAbuseUserReportRequestToJson(
  AdminResolveAbuseUserReportRequest instance,
) => <String, dynamic>{
  'reportId': instance.reportId,
  'resolvedAs':
      ?_$AdminResolveAbuseUserReportRequestResolvedAsEnumMap[instance
          .resolvedAs],
};

const _$AdminResolveAbuseUserReportRequestResolvedAsEnumMap = {
  AdminResolveAbuseUserReportRequestResolvedAs.accept: 'accept',
  AdminResolveAbuseUserReportRequestResolvedAs.reject: 'reject',
};

AdminRolesAssignRequest _$AdminRolesAssignRequestFromJson(
  Map<String, dynamic> json,
) => AdminRolesAssignRequest(
  roleId: json['roleId'] as String,
  userId: json['userId'] as String,
  expiresAt: (json['expiresAt'] as num?)?.toInt(),
);

Map<String, dynamic> _$AdminRolesAssignRequestToJson(
  AdminRolesAssignRequest instance,
) => <String, dynamic>{
  'roleId': instance.roleId,
  'userId': instance.userId,
  'expiresAt': ?instance.expiresAt,
};

AdminRolesCreateRequest _$AdminRolesCreateRequestFromJson(
  Map<String, dynamic> json,
) => AdminRolesCreateRequest(
  name: json['name'] as String,
  description: json['description'] as String,
  color: json['color'] as String?,
  iconUrl: json['iconUrl'] as String?,
  target: $enumDecode(_$AdminRolesCreateRequestTargetEnumMap, json['target']),
  condFormula: json['condFormula'] as Map<String, dynamic>,
  isPublic: json['isPublic'] as bool,
  isModerator: json['isModerator'] as bool,
  isAdministrator: json['isAdministrator'] as bool,
  isExplorable: json['isExplorable'] as bool? ?? false,
  asBadge: json['asBadge'] as bool,
  preserveAssignmentOnMoveAccount:
      json['preserveAssignmentOnMoveAccount'] as bool?,
  canEditMembersByModerator: json['canEditMembersByModerator'] as bool,
  displayOrder: json['displayOrder'] as num,
  policies: json['policies'] as Map<String, dynamic>,
);

Map<String, dynamic> _$AdminRolesCreateRequestToJson(
  AdminRolesCreateRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'description': instance.description,
  'color': instance.color,
  'iconUrl': instance.iconUrl,
  'target': _$AdminRolesCreateRequestTargetEnumMap[instance.target]!,
  'condFormula': instance.condFormula,
  'isPublic': instance.isPublic,
  'isModerator': instance.isModerator,
  'isAdministrator': instance.isAdministrator,
  'isExplorable': instance.isExplorable,
  'asBadge': instance.asBadge,
  'preserveAssignmentOnMoveAccount': ?instance.preserveAssignmentOnMoveAccount,
  'canEditMembersByModerator': instance.canEditMembersByModerator,
  'displayOrder': instance.displayOrder,
  'policies': instance.policies,
};

const _$AdminRolesCreateRequestTargetEnumMap = {
  AdminRolesCreateRequestTarget.manual: 'manual',
  AdminRolesCreateRequestTarget.conditional: 'conditional',
};

AdminRolesDeleteRequest _$AdminRolesDeleteRequestFromJson(
  Map<String, dynamic> json,
) => AdminRolesDeleteRequest(roleId: json['roleId'] as String);

Map<String, dynamic> _$AdminRolesDeleteRequestToJson(
  AdminRolesDeleteRequest instance,
) => <String, dynamic>{'roleId': instance.roleId};

AdminRolesShowRequest _$AdminRolesShowRequestFromJson(
  Map<String, dynamic> json,
) => AdminRolesShowRequest(roleId: json['roleId'] as String);

Map<String, dynamic> _$AdminRolesShowRequestToJson(
  AdminRolesShowRequest instance,
) => <String, dynamic>{'roleId': instance.roleId};

AdminRolesUnassignRequest _$AdminRolesUnassignRequestFromJson(
  Map<String, dynamic> json,
) => AdminRolesUnassignRequest(
  roleId: json['roleId'] as String,
  userId: json['userId'] as String,
);

Map<String, dynamic> _$AdminRolesUnassignRequestToJson(
  AdminRolesUnassignRequest instance,
) => <String, dynamic>{'roleId': instance.roleId, 'userId': instance.userId};

AdminRolesUpdateRequest _$AdminRolesUpdateRequestFromJson(
  Map<String, dynamic> json,
) => AdminRolesUpdateRequest(
  roleId: json['roleId'] as String,
  name: json['name'] as String?,
  description: json['description'] as String?,
  color: json['color'] as String?,
  iconUrl: json['iconUrl'] as String?,
  target: $enumDecodeNullable(
    _$AdminRolesUpdateRequestTargetEnumMap,
    json['target'],
  ),
  condFormula: json['condFormula'] as Map<String, dynamic>?,
  isPublic: json['isPublic'] as bool?,
  isModerator: json['isModerator'] as bool?,
  isAdministrator: json['isAdministrator'] as bool?,
  isExplorable: json['isExplorable'] as bool?,
  asBadge: json['asBadge'] as bool?,
  preserveAssignmentOnMoveAccount:
      json['preserveAssignmentOnMoveAccount'] as bool?,
  canEditMembersByModerator: json['canEditMembersByModerator'] as bool?,
  displayOrder: json['displayOrder'] as num?,
  policies: json['policies'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$AdminRolesUpdateRequestToJson(
  AdminRolesUpdateRequest instance,
) => <String, dynamic>{
  'roleId': instance.roleId,
  'name': ?instance.name,
  'description': ?instance.description,
  'color': ?instance.color,
  'iconUrl': ?instance.iconUrl,
  'target': ?_$AdminRolesUpdateRequestTargetEnumMap[instance.target],
  'condFormula': ?instance.condFormula,
  'isPublic': ?instance.isPublic,
  'isModerator': ?instance.isModerator,
  'isAdministrator': ?instance.isAdministrator,
  'isExplorable': ?instance.isExplorable,
  'asBadge': ?instance.asBadge,
  'preserveAssignmentOnMoveAccount': ?instance.preserveAssignmentOnMoveAccount,
  'canEditMembersByModerator': ?instance.canEditMembersByModerator,
  'displayOrder': ?instance.displayOrder,
  'policies': ?instance.policies,
};

const _$AdminRolesUpdateRequestTargetEnumMap = {
  AdminRolesUpdateRequestTarget.manual: 'manual',
  AdminRolesUpdateRequestTarget.conditional: 'conditional',
};

AdminRolesUpdateDefaultPoliciesRequest
_$AdminRolesUpdateDefaultPoliciesRequestFromJson(Map<String, dynamic> json) =>
    AdminRolesUpdateDefaultPoliciesRequest(
      policies: json['policies'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$AdminRolesUpdateDefaultPoliciesRequestToJson(
  AdminRolesUpdateDefaultPoliciesRequest instance,
) => <String, dynamic>{'policies': instance.policies};

AdminRolesUsersRequest _$AdminRolesUsersRequestFromJson(
  Map<String, dynamic> json,
) => AdminRolesUsersRequest(
  roleId: json['roleId'] as String,
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
  limit: (json['limit'] as num?)?.toInt() ?? 10,
);

Map<String, dynamic> _$AdminRolesUsersRequestToJson(
  AdminRolesUsersRequest instance,
) => <String, dynamic>{
  'roleId': instance.roleId,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
  'limit': instance.limit,
};

AdminRolesUsersResponseItem _$AdminRolesUsersResponseItemFromJson(
  Map<String, dynamic> json,
) => AdminRolesUsersResponseItem(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  user: UserDetailed.fromJson(json['user'] as Map<String, dynamic>),
  expiresAt: json['expiresAt'] == null
      ? null
      : DateTime.parse(json['expiresAt'] as String),
);

Map<String, dynamic> _$AdminRolesUsersResponseItemToJson(
  AdminRolesUsersResponseItem instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'user': instance.user.toJson(),
  'expiresAt': instance.expiresAt?.toIso8601String(),
};

AdminSendEmailRequest _$AdminSendEmailRequestFromJson(
  Map<String, dynamic> json,
) => AdminSendEmailRequest(
  to: json['to'] as String,
  subject: json['subject'] as String,
  text: json['text'] as String,
);

Map<String, dynamic> _$AdminSendEmailRequestToJson(
  AdminSendEmailRequest instance,
) => <String, dynamic>{
  'to': instance.to,
  'subject': instance.subject,
  'text': instance.text,
};

AdminServerInfoResponseCpu _$AdminServerInfoResponseCpuFromJson(
  Map<String, dynamic> json,
) => AdminServerInfoResponseCpu(
  model: json['model'] as String,
  cores: json['cores'] as num,
);

Map<String, dynamic> _$AdminServerInfoResponseCpuToJson(
  AdminServerInfoResponseCpu instance,
) => <String, dynamic>{'model': instance.model, 'cores': instance.cores};

AdminServerInfoResponseMem _$AdminServerInfoResponseMemFromJson(
  Map<String, dynamic> json,
) => AdminServerInfoResponseMem(total: json['total'] as num);

Map<String, dynamic> _$AdminServerInfoResponseMemToJson(
  AdminServerInfoResponseMem instance,
) => <String, dynamic>{'total': instance.total};

AdminServerInfoResponseFs _$AdminServerInfoResponseFsFromJson(
  Map<String, dynamic> json,
) => AdminServerInfoResponseFs(
  total: json['total'] as num,
  used: json['used'] as num,
);

Map<String, dynamic> _$AdminServerInfoResponseFsToJson(
  AdminServerInfoResponseFs instance,
) => <String, dynamic>{'total': instance.total, 'used': instance.used};

AdminServerInfoResponseNet _$AdminServerInfoResponseNetFromJson(
  Map<String, dynamic> json,
) => AdminServerInfoResponseNet(interface_: json['interface'] as String);

Map<String, dynamic> _$AdminServerInfoResponseNetToJson(
  AdminServerInfoResponseNet instance,
) => <String, dynamic>{'interface': instance.interface_};

AdminServerInfoResponse _$AdminServerInfoResponseFromJson(
  Map<String, dynamic> json,
) => AdminServerInfoResponse(
  machine: json['machine'] as String,
  os: json['os'] as String,
  node: json['node'] as String,
  psql: json['psql'] as String,
  cpu: AdminServerInfoResponseCpu.fromJson(json['cpu'] as Map<String, dynamic>),
  mem: AdminServerInfoResponseMem.fromJson(json['mem'] as Map<String, dynamic>),
  fs: AdminServerInfoResponseFs.fromJson(json['fs'] as Map<String, dynamic>),
  net: AdminServerInfoResponseNet.fromJson(json['net'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminServerInfoResponseToJson(
  AdminServerInfoResponse instance,
) => <String, dynamic>{
  'machine': instance.machine,
  'os': instance.os,
  'node': instance.node,
  'psql': instance.psql,
  'cpu': instance.cpu.toJson(),
  'mem': instance.mem.toJson(),
  'fs': instance.fs.toJson(),
  'net': instance.net.toJson(),
};

AdminShowModerationLogsRequest _$AdminShowModerationLogsRequestFromJson(
  Map<String, dynamic> json,
) => AdminShowModerationLogsRequest(
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
  type: json['type'] as String?,
  userId: json['userId'] as String?,
  search: json['search'] as String?,
);

Map<String, dynamic> _$AdminShowModerationLogsRequestToJson(
  AdminShowModerationLogsRequest instance,
) => <String, dynamic>{
  'limit': instance.limit,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
  'type': ?instance.type,
  'userId': ?instance.userId,
  'search': ?instance.search,
};

AdminShowModerationLogsResponseItem
_$AdminShowModerationLogsResponseItemFromJson(Map<String, dynamic> json) =>
    AdminShowModerationLogsResponseItem(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      type: json['type'] as String,
      info: json['info'] as Map<String, dynamic>,
      userId: json['userId'] as String,
      user: UserDetailedNotMe.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminShowModerationLogsResponseItemToJson(
  AdminShowModerationLogsResponseItem instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'type': instance.type,
  'info': instance.info,
  'userId': instance.userId,
  'user': instance.user.toJson(),
};

AdminShowUserRequest _$AdminShowUserRequestFromJson(
  Map<String, dynamic> json,
) => AdminShowUserRequest(userId: json['userId'] as String);

Map<String, dynamic> _$AdminShowUserRequestToJson(
  AdminShowUserRequest instance,
) => <String, dynamic>{'userId': instance.userId};

AdminShowUserResponseNotificationRecieveConfig
_$AdminShowUserResponseNotificationRecieveConfigFromJson(
  Map<String, dynamic> json,
) => AdminShowUserResponseNotificationRecieveConfig(
  note: json['note'] as Map<String, dynamic>?,
  follow: json['follow'] as Map<String, dynamic>?,
  mention: json['mention'] as Map<String, dynamic>?,
  reply: json['reply'] as Map<String, dynamic>?,
  renote: json['renote'] as Map<String, dynamic>?,
  quote: json['quote'] as Map<String, dynamic>?,
  reaction: json['reaction'] as Map<String, dynamic>?,
  pollEnded: json['pollEnded'] as Map<String, dynamic>?,
  scheduledNotePosted: json['scheduledNotePosted'] as Map<String, dynamic>?,
  scheduledNotePostFailed:
      json['scheduledNotePostFailed'] as Map<String, dynamic>?,
  receiveFollowRequest: json['receiveFollowRequest'] as Map<String, dynamic>?,
  followRequestAccepted: json['followRequestAccepted'] as Map<String, dynamic>?,
  roleAssigned: json['roleAssigned'] as Map<String, dynamic>?,
  chatRoomInvitationReceived:
      json['chatRoomInvitationReceived'] as Map<String, dynamic>?,
  achievementEarned: json['achievementEarned'] as Map<String, dynamic>?,
  app: json['app'] as Map<String, dynamic>?,
  test: json['test'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$AdminShowUserResponseNotificationRecieveConfigToJson(
  AdminShowUserResponseNotificationRecieveConfig instance,
) => <String, dynamic>{
  'note': ?instance.note,
  'follow': ?instance.follow,
  'mention': ?instance.mention,
  'reply': ?instance.reply,
  'renote': ?instance.renote,
  'quote': ?instance.quote,
  'reaction': ?instance.reaction,
  'pollEnded': ?instance.pollEnded,
  'scheduledNotePosted': ?instance.scheduledNotePosted,
  'scheduledNotePostFailed': ?instance.scheduledNotePostFailed,
  'receiveFollowRequest': ?instance.receiveFollowRequest,
  'followRequestAccepted': ?instance.followRequestAccepted,
  'roleAssigned': ?instance.roleAssigned,
  'chatRoomInvitationReceived': ?instance.chatRoomInvitationReceived,
  'achievementEarned': ?instance.achievementEarned,
  'app': ?instance.app,
  'test': ?instance.test,
};

AdminShowUserResponseRoleAssignsItem
_$AdminShowUserResponseRoleAssignsItemFromJson(Map<String, dynamic> json) =>
    AdminShowUserResponseRoleAssignsItem(
      createdAt: json['createdAt'] as String,
      expiresAt: json['expiresAt'] as String?,
      roleId: json['roleId'] as String,
    );

Map<String, dynamic> _$AdminShowUserResponseRoleAssignsItemToJson(
  AdminShowUserResponseRoleAssignsItem instance,
) => <String, dynamic>{
  'createdAt': instance.createdAt,
  'expiresAt': instance.expiresAt,
  'roleId': instance.roleId,
};

AdminShowUserResponse _$AdminShowUserResponseFromJson(
  Map<String, dynamic> json,
) => AdminShowUserResponse(
  email: json['email'] as String?,
  emailVerified: json['emailVerified'] as bool,
  followedMessage: json['followedMessage'] as String?,
  autoAcceptFollowed: json['autoAcceptFollowed'] as bool,
  noCrawle: json['noCrawle'] as bool,
  preventAiLearning: json['preventAiLearning'] as bool,
  alwaysMarkNsfw: json['alwaysMarkNsfw'] as bool,
  autoSensitive: json['autoSensitive'] as bool,
  carefulBot: json['carefulBot'] as bool,
  injectFeaturedNote: json['injectFeaturedNote'] as bool,
  receiveAnnouncementEmail: json['receiveAnnouncementEmail'] as bool,
  mutedWords: json['mutedWords'] as List<dynamic>,
  mutedInstances: (json['mutedInstances'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  notificationRecieveConfig:
      AdminShowUserResponseNotificationRecieveConfig.fromJson(
        json['notificationRecieveConfig'] as Map<String, dynamic>,
      ),
  isModerator: json['isModerator'] as bool,
  isSilenced: json['isSilenced'] as bool,
  isSuspended: json['isSuspended'] as bool,
  isHibernated: json['isHibernated'] as bool,
  lastActiveDate: json['lastActiveDate'] as String?,
  moderationNote: json['moderationNote'] as String,
  signins: (json['signins'] as List<dynamic>)
      .map((e) => Signin.fromJson(e as Map<String, dynamic>))
      .toList(),
  policies: RolePolicies.fromJson(json['policies'] as Map<String, dynamic>),
  roles: (json['roles'] as List<dynamic>)
      .map((e) => Role.fromJson(e as Map<String, dynamic>))
      .toList(),
  roleAssigns: (json['roleAssigns'] as List<dynamic>)
      .map(
        (e) => AdminShowUserResponseRoleAssignsItem.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
);

Map<String, dynamic> _$AdminShowUserResponseToJson(
  AdminShowUserResponse instance,
) => <String, dynamic>{
  'email': instance.email,
  'emailVerified': instance.emailVerified,
  'followedMessage': instance.followedMessage,
  'autoAcceptFollowed': instance.autoAcceptFollowed,
  'noCrawle': instance.noCrawle,
  'preventAiLearning': instance.preventAiLearning,
  'alwaysMarkNsfw': instance.alwaysMarkNsfw,
  'autoSensitive': instance.autoSensitive,
  'carefulBot': instance.carefulBot,
  'injectFeaturedNote': instance.injectFeaturedNote,
  'receiveAnnouncementEmail': instance.receiveAnnouncementEmail,
  'mutedWords': instance.mutedWords,
  'mutedInstances': instance.mutedInstances,
  'notificationRecieveConfig': instance.notificationRecieveConfig.toJson(),
  'isModerator': instance.isModerator,
  'isSilenced': instance.isSilenced,
  'isSuspended': instance.isSuspended,
  'isHibernated': instance.isHibernated,
  'lastActiveDate': instance.lastActiveDate,
  'moderationNote': instance.moderationNote,
  'signins': instance.signins.map((e) => e.toJson()).toList(),
  'policies': instance.policies.toJson(),
  'roles': instance.roles.map((e) => e.toJson()).toList(),
  'roleAssigns': instance.roleAssigns.map((e) => e.toJson()).toList(),
};

AdminShowUsersRequest _$AdminShowUsersRequestFromJson(
  Map<String, dynamic> json,
) => AdminShowUsersRequest(
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  offset: (json['offset'] as num?)?.toInt() ?? 0,
  sort: $enumDecodeNullable(_$AdminShowUsersRequestSortEnumMap, json['sort']),
  state:
      $enumDecodeNullable(_$AdminShowUsersRequestStateEnumMap, json['state']) ??
      AdminShowUsersRequestState.all,
  origin:
      $enumDecodeNullable(
        _$AdminShowUsersRequestOriginEnumMap,
        json['origin'],
      ) ??
      AdminShowUsersRequestOrigin.combined,
  username: json['username'] as String?,
  hostname: json['hostname'] as String?,
);

Map<String, dynamic> _$AdminShowUsersRequestToJson(
  AdminShowUsersRequest instance,
) => <String, dynamic>{
  'limit': instance.limit,
  'offset': instance.offset,
  'sort': ?_$AdminShowUsersRequestSortEnumMap[instance.sort],
  'state': _$AdminShowUsersRequestStateEnumMap[instance.state]!,
  'origin': _$AdminShowUsersRequestOriginEnumMap[instance.origin]!,
  'username': ?instance.username,
  'hostname': ?instance.hostname,
};

const _$AdminShowUsersRequestSortEnumMap = {
  AdminShowUsersRequestSort.plusfollower: '+follower',
  AdminShowUsersRequestSort.minusfollower: '-follower',
  AdminShowUsersRequestSort.pluscreatedAt: '+createdAt',
  AdminShowUsersRequestSort.minuscreatedAt: '-createdAt',
  AdminShowUsersRequestSort.plusupdatedAt: '+updatedAt',
  AdminShowUsersRequestSort.minusupdatedAt: '-updatedAt',
  AdminShowUsersRequestSort.pluslastActiveDate: '+lastActiveDate',
  AdminShowUsersRequestSort.minuslastActiveDate: '-lastActiveDate',
};

const _$AdminShowUsersRequestStateEnumMap = {
  AdminShowUsersRequestState.all: 'all',
  AdminShowUsersRequestState.alive: 'alive',
  AdminShowUsersRequestState.available: 'available',
  AdminShowUsersRequestState.admin: 'admin',
  AdminShowUsersRequestState.moderator: 'moderator',
  AdminShowUsersRequestState.adminOrModerator: 'adminOrModerator',
  AdminShowUsersRequestState.suspended: 'suspended',
};

const _$AdminShowUsersRequestOriginEnumMap = {
  AdminShowUsersRequestOrigin.combined: 'combined',
  AdminShowUsersRequestOrigin.local: 'local',
  AdminShowUsersRequestOrigin.remote: 'remote',
};

AdminSuspendUserRequest _$AdminSuspendUserRequestFromJson(
  Map<String, dynamic> json,
) => AdminSuspendUserRequest(userId: json['userId'] as String);

Map<String, dynamic> _$AdminSuspendUserRequestToJson(
  AdminSuspendUserRequest instance,
) => <String, dynamic>{'userId': instance.userId};

AdminSystemWebhookCreateRequest _$AdminSystemWebhookCreateRequestFromJson(
  Map<String, dynamic> json,
) => AdminSystemWebhookCreateRequest(
  isActive: json['isActive'] as bool,
  name: json['name'] as String,
  onValue: (json['on'] as List<dynamic>)
      .map(
        (e) => $enumDecode(_$AdminSystemWebhookCreateRequestOnItemEnumMap, e),
      )
      .toList(),
  url: json['url'] as String,
  secret: json['secret'] as String? ?? '',
);

Map<String, dynamic> _$AdminSystemWebhookCreateRequestToJson(
  AdminSystemWebhookCreateRequest instance,
) => <String, dynamic>{
  'isActive': instance.isActive,
  'name': instance.name,
  'on': instance.onValue
      .map((e) => _$AdminSystemWebhookCreateRequestOnItemEnumMap[e]!)
      .toList(),
  'url': instance.url,
  'secret': instance.secret,
};

const _$AdminSystemWebhookCreateRequestOnItemEnumMap = {
  AdminSystemWebhookCreateRequestOnItem.abuseReport: 'abuseReport',
  AdminSystemWebhookCreateRequestOnItem.abuseReportResolved:
      'abuseReportResolved',
  AdminSystemWebhookCreateRequestOnItem.userCreated: 'userCreated',
  AdminSystemWebhookCreateRequestOnItem.inactiveModeratorsWarning:
      'inactiveModeratorsWarning',
  AdminSystemWebhookCreateRequestOnItem.inactiveModeratorsInvitationOnlyChanged:
      'inactiveModeratorsInvitationOnlyChanged',
};

AdminSystemWebhookDeleteRequest _$AdminSystemWebhookDeleteRequestFromJson(
  Map<String, dynamic> json,
) => AdminSystemWebhookDeleteRequest(id: json['id'] as String);

Map<String, dynamic> _$AdminSystemWebhookDeleteRequestToJson(
  AdminSystemWebhookDeleteRequest instance,
) => <String, dynamic>{'id': instance.id};

AdminSystemWebhookListRequest _$AdminSystemWebhookListRequestFromJson(
  Map<String, dynamic> json,
) => AdminSystemWebhookListRequest(
  isActive: json['isActive'] as bool?,
  onValue: (json['on'] as List<dynamic>?)
      ?.map((e) => $enumDecode(_$AdminSystemWebhookListRequestOnItemEnumMap, e))
      .toList(),
);

Map<String, dynamic> _$AdminSystemWebhookListRequestToJson(
  AdminSystemWebhookListRequest instance,
) => <String, dynamic>{
  'isActive': ?instance.isActive,
  'on': ?instance.onValue
      ?.map((e) => _$AdminSystemWebhookListRequestOnItemEnumMap[e]!)
      .toList(),
};

const _$AdminSystemWebhookListRequestOnItemEnumMap = {
  AdminSystemWebhookListRequestOnItem.abuseReport: 'abuseReport',
  AdminSystemWebhookListRequestOnItem.abuseReportResolved:
      'abuseReportResolved',
  AdminSystemWebhookListRequestOnItem.userCreated: 'userCreated',
  AdminSystemWebhookListRequestOnItem.inactiveModeratorsWarning:
      'inactiveModeratorsWarning',
  AdminSystemWebhookListRequestOnItem.inactiveModeratorsInvitationOnlyChanged:
      'inactiveModeratorsInvitationOnlyChanged',
};

AdminSystemWebhookShowRequest _$AdminSystemWebhookShowRequestFromJson(
  Map<String, dynamic> json,
) => AdminSystemWebhookShowRequest(id: json['id'] as String);

Map<String, dynamic> _$AdminSystemWebhookShowRequestToJson(
  AdminSystemWebhookShowRequest instance,
) => <String, dynamic>{'id': instance.id};

AdminSystemWebhookTestRequestOverride
_$AdminSystemWebhookTestRequestOverrideFromJson(Map<String, dynamic> json) =>
    AdminSystemWebhookTestRequestOverride(
      url: json['url'] as String?,
      secret: json['secret'] as String?,
    );

Map<String, dynamic> _$AdminSystemWebhookTestRequestOverrideToJson(
  AdminSystemWebhookTestRequestOverride instance,
) => <String, dynamic>{'url': ?instance.url, 'secret': ?instance.secret};

AdminSystemWebhookTestRequest _$AdminSystemWebhookTestRequestFromJson(
  Map<String, dynamic> json,
) => AdminSystemWebhookTestRequest(
  webhookId: json['webhookId'] as String,
  type: $enumDecode(_$AdminSystemWebhookTestRequestTypeEnumMap, json['type']),
  override: json['override'] == null
      ? null
      : AdminSystemWebhookTestRequestOverride.fromJson(
          json['override'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$AdminSystemWebhookTestRequestToJson(
  AdminSystemWebhookTestRequest instance,
) => <String, dynamic>{
  'webhookId': instance.webhookId,
  'type': _$AdminSystemWebhookTestRequestTypeEnumMap[instance.type]!,
  'override': ?instance.override?.toJson(),
};

const _$AdminSystemWebhookTestRequestTypeEnumMap = {
  AdminSystemWebhookTestRequestType.abuseReport: 'abuseReport',
  AdminSystemWebhookTestRequestType.abuseReportResolved: 'abuseReportResolved',
  AdminSystemWebhookTestRequestType.userCreated: 'userCreated',
  AdminSystemWebhookTestRequestType.inactiveModeratorsWarning:
      'inactiveModeratorsWarning',
  AdminSystemWebhookTestRequestType.inactiveModeratorsInvitationOnlyChanged:
      'inactiveModeratorsInvitationOnlyChanged',
};

AdminSystemWebhookUpdateRequest _$AdminSystemWebhookUpdateRequestFromJson(
  Map<String, dynamic> json,
) => AdminSystemWebhookUpdateRequest(
  id: json['id'] as String,
  isActive: json['isActive'] as bool,
  name: json['name'] as String,
  onValue: (json['on'] as List<dynamic>)
      .map(
        (e) => $enumDecode(_$AdminSystemWebhookUpdateRequestOnItemEnumMap, e),
      )
      .toList(),
  url: json['url'] as String,
  secret: json['secret'] as String? ?? '',
);

Map<String, dynamic> _$AdminSystemWebhookUpdateRequestToJson(
  AdminSystemWebhookUpdateRequest instance,
) => <String, dynamic>{
  'id': instance.id,
  'isActive': instance.isActive,
  'name': instance.name,
  'on': instance.onValue
      .map((e) => _$AdminSystemWebhookUpdateRequestOnItemEnumMap[e]!)
      .toList(),
  'url': instance.url,
  'secret': instance.secret,
};

const _$AdminSystemWebhookUpdateRequestOnItemEnumMap = {
  AdminSystemWebhookUpdateRequestOnItem.abuseReport: 'abuseReport',
  AdminSystemWebhookUpdateRequestOnItem.abuseReportResolved:
      'abuseReportResolved',
  AdminSystemWebhookUpdateRequestOnItem.userCreated: 'userCreated',
  AdminSystemWebhookUpdateRequestOnItem.inactiveModeratorsWarning:
      'inactiveModeratorsWarning',
  AdminSystemWebhookUpdateRequestOnItem.inactiveModeratorsInvitationOnlyChanged:
      'inactiveModeratorsInvitationOnlyChanged',
};

AdminUnsetMfaRequest _$AdminUnsetMfaRequestFromJson(
  Map<String, dynamic> json,
) => AdminUnsetMfaRequest(userId: json['userId'] as String);

Map<String, dynamic> _$AdminUnsetMfaRequestToJson(
  AdminUnsetMfaRequest instance,
) => <String, dynamic>{'userId': instance.userId};

AdminUnsetUserAvatarRequest _$AdminUnsetUserAvatarRequestFromJson(
  Map<String, dynamic> json,
) => AdminUnsetUserAvatarRequest(userId: json['userId'] as String);

Map<String, dynamic> _$AdminUnsetUserAvatarRequestToJson(
  AdminUnsetUserAvatarRequest instance,
) => <String, dynamic>{'userId': instance.userId};

AdminUnsetUserBannerRequest _$AdminUnsetUserBannerRequestFromJson(
  Map<String, dynamic> json,
) => AdminUnsetUserBannerRequest(userId: json['userId'] as String);

Map<String, dynamic> _$AdminUnsetUserBannerRequestToJson(
  AdminUnsetUserBannerRequest instance,
) => <String, dynamic>{'userId': instance.userId};

AdminUnsuspendUserRequest _$AdminUnsuspendUserRequestFromJson(
  Map<String, dynamic> json,
) => AdminUnsuspendUserRequest(userId: json['userId'] as String);

Map<String, dynamic> _$AdminUnsuspendUserRequestToJson(
  AdminUnsuspendUserRequest instance,
) => <String, dynamic>{'userId': instance.userId};

AdminUpdateAbuseUserReportRequest _$AdminUpdateAbuseUserReportRequestFromJson(
  Map<String, dynamic> json,
) => AdminUpdateAbuseUserReportRequest(
  reportId: json['reportId'] as String,
  moderationNote: json['moderationNote'] as String?,
);

Map<String, dynamic> _$AdminUpdateAbuseUserReportRequestToJson(
  AdminUpdateAbuseUserReportRequest instance,
) => <String, dynamic>{
  'reportId': instance.reportId,
  'moderationNote': ?instance.moderationNote,
};

AdminUpdateMetaRequestClientOptions
_$AdminUpdateMetaRequestClientOptionsFromJson(Map<String, dynamic> json) =>
    AdminUpdateMetaRequestClientOptions(
      entrancePageStyle: $enumDecodeNullable(
        _$AdminUpdateMetaRequestClientOptionsEntrancePageStyleEnumMap,
        json['entrancePageStyle'],
      ),
      showTimelineForVisitor: json['showTimelineForVisitor'] as bool?,
      showActivitiesForVisitor: json['showActivitiesForVisitor'] as bool?,
    );

Map<String, dynamic> _$AdminUpdateMetaRequestClientOptionsToJson(
  AdminUpdateMetaRequestClientOptions instance,
) => <String, dynamic>{
  'entrancePageStyle':
      ?_$AdminUpdateMetaRequestClientOptionsEntrancePageStyleEnumMap[instance
          .entrancePageStyle],
  'showTimelineForVisitor': ?instance.showTimelineForVisitor,
  'showActivitiesForVisitor': ?instance.showActivitiesForVisitor,
};

const _$AdminUpdateMetaRequestClientOptionsEntrancePageStyleEnumMap = {
  AdminUpdateMetaRequestClientOptionsEntrancePageStyle.classic: 'classic',
  AdminUpdateMetaRequestClientOptionsEntrancePageStyle.simple: 'simple',
};

AdminUpdateMetaRequestDeliverSuspendedSoftwareItem
_$AdminUpdateMetaRequestDeliverSuspendedSoftwareItemFromJson(
  Map<String, dynamic> json,
) => AdminUpdateMetaRequestDeliverSuspendedSoftwareItem(
  software: json['software'] as String,
  versionRange: json['versionRange'] as String,
);

Map<String, dynamic> _$AdminUpdateMetaRequestDeliverSuspendedSoftwareItemToJson(
  AdminUpdateMetaRequestDeliverSuspendedSoftwareItem instance,
) => <String, dynamic>{
  'software': instance.software,
  'versionRange': instance.versionRange,
};

AdminUpdateMetaRequest _$AdminUpdateMetaRequestFromJson(
  Map<String, dynamic> json,
) => AdminUpdateMetaRequest(
  disableRegistration: json['disableRegistration'] as bool?,
  pinnedUsers: (json['pinnedUsers'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  hiddenTags: (json['hiddenTags'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  blockedHosts: (json['blockedHosts'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  sensitiveWords: (json['sensitiveWords'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  prohibitedWords: (json['prohibitedWords'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  prohibitedWordsForNameOfUser:
      (json['prohibitedWordsForNameOfUser'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
  themeColor: json['themeColor'] as String?,
  mascotImageUrl: json['mascotImageUrl'] as String?,
  bannerUrl: json['bannerUrl'] as String?,
  serverErrorImageUrl: json['serverErrorImageUrl'] as String?,
  infoImageUrl: json['infoImageUrl'] as String?,
  notFoundImageUrl: json['notFoundImageUrl'] as String?,
  iconUrl: json['iconUrl'] as String?,
  app192IconUrl: json['app192IconUrl'] as String?,
  app512IconUrl: json['app512IconUrl'] as String?,
  backgroundImageUrl: json['backgroundImageUrl'] as String?,
  logoImageUrl: json['logoImageUrl'] as String?,
  name: json['name'] as String?,
  shortName: json['shortName'] as String?,
  description: json['description'] as String?,
  defaultLightTheme: json['defaultLightTheme'] as String?,
  defaultDarkTheme: json['defaultDarkTheme'] as String?,
  clientOptions: json['clientOptions'] == null
      ? null
      : AdminUpdateMetaRequestClientOptions.fromJson(
          json['clientOptions'] as Map<String, dynamic>,
        ),
  cacheRemoteFiles: json['cacheRemoteFiles'] as bool?,
  cacheRemoteSensitiveFiles: json['cacheRemoteSensitiveFiles'] as bool?,
  emailRequiredForSignup: json['emailRequiredForSignup'] as bool?,
  enableHcaptcha: json['enableHcaptcha'] as bool?,
  hcaptchaSiteKey: json['hcaptchaSiteKey'] as String?,
  hcaptchaSecretKey: json['hcaptchaSecretKey'] as String?,
  enableMcaptcha: json['enableMcaptcha'] as bool?,
  mcaptchaSiteKey: json['mcaptchaSiteKey'] as String?,
  mcaptchaInstanceUrl: json['mcaptchaInstanceUrl'] as String?,
  mcaptchaSecretKey: json['mcaptchaSecretKey'] as String?,
  enableRecaptcha: json['enableRecaptcha'] as bool?,
  recaptchaSiteKey: json['recaptchaSiteKey'] as String?,
  recaptchaSecretKey: json['recaptchaSecretKey'] as String?,
  enableTurnstile: json['enableTurnstile'] as bool?,
  turnstileSiteKey: json['turnstileSiteKey'] as String?,
  turnstileSecretKey: json['turnstileSecretKey'] as String?,
  enableTestcaptcha: json['enableTestcaptcha'] as bool?,
  googleAnalyticsMeasurementId: json['googleAnalyticsMeasurementId'] as String?,
  sensitiveMediaDetection: $enumDecodeNullable(
    _$AdminUpdateMetaRequestSensitiveMediaDetectionEnumMap,
    json['sensitiveMediaDetection'],
  ),
  sensitiveMediaDetectionSensitivity: $enumDecodeNullable(
    _$AdminUpdateMetaRequestSensitiveMediaDetectionSensitivityEnumMap,
    json['sensitiveMediaDetectionSensitivity'],
  ),
  setSensitiveFlagAutomatically: json['setSensitiveFlagAutomatically'] as bool?,
  enableSensitiveMediaDetectionForVideos:
      json['enableSensitiveMediaDetectionForVideos'] as bool?,
  sensitiveMediaDetectionApiUrl:
      json['sensitiveMediaDetectionApiUrl'] as String?,
  sensitiveMediaDetectionApiKey:
      json['sensitiveMediaDetectionApiKey'] as String?,
  sensitiveMediaDetectionTimeout:
      (json['sensitiveMediaDetectionTimeout'] as num?)?.toInt(),
  sensitiveMediaDetectionMaxImagesPerRequest:
      (json['sensitiveMediaDetectionMaxImagesPerRequest'] as num?)?.toInt(),
  maintainerName: json['maintainerName'] as String?,
  maintainerEmail: json['maintainerEmail'] as String?,
  langs: (json['langs'] as List<dynamic>?)?.map((e) => e as String).toList(),
  deeplAuthKey: json['deeplAuthKey'] as String?,
  deeplIsPro: json['deeplIsPro'] as bool?,
  enableEmail: json['enableEmail'] as bool?,
  email: json['email'] as String?,
  smtpSecure: json['smtpSecure'] as bool?,
  smtpHost: json['smtpHost'] as String?,
  smtpPort: (json['smtpPort'] as num?)?.toInt(),
  smtpUser: json['smtpUser'] as String?,
  smtpPass: json['smtpPass'] as String?,
  enableServiceWorker: json['enableServiceWorker'] as bool?,
  swPublicKey: json['swPublicKey'] as String?,
  swPrivateKey: json['swPrivateKey'] as String?,
  tosUrl: json['tosUrl'] as String?,
  repositoryUrl: json['repositoryUrl'] as String?,
  feedbackUrl: json['feedbackUrl'] as String?,
  impressumUrl: json['impressumUrl'] as String?,
  privacyPolicyUrl: json['privacyPolicyUrl'] as String?,
  inquiryUrl: json['inquiryUrl'] as String?,
  useObjectStorage: json['useObjectStorage'] as bool?,
  objectStorageBaseUrl: json['objectStorageBaseUrl'] as String?,
  objectStorageBucket: json['objectStorageBucket'] as String?,
  objectStoragePrefix: json['objectStoragePrefix'] as String?,
  objectStorageEndpoint: json['objectStorageEndpoint'] as String?,
  objectStorageRegion: json['objectStorageRegion'] as String?,
  objectStoragePort: (json['objectStoragePort'] as num?)?.toInt(),
  objectStorageAccessKey: json['objectStorageAccessKey'] as String?,
  objectStorageSecretKey: json['objectStorageSecretKey'] as String?,
  objectStorageUseSSL: json['objectStorageUseSSL'] as bool?,
  objectStorageUseProxy: json['objectStorageUseProxy'] as bool?,
  objectStorageSetPublicRead: json['objectStorageSetPublicRead'] as bool?,
  objectStorageS3ForcePathStyle: json['objectStorageS3ForcePathStyle'] as bool?,
  enableIpLogging: json['enableIpLogging'] as bool?,
  enableActiveEmailValidation: json['enableActiveEmailValidation'] as bool?,
  enableVerifymailApi: json['enableVerifymailApi'] as bool?,
  verifymailAuthKey: json['verifymailAuthKey'] as String?,
  enableTruemailApi: json['enableTruemailApi'] as bool?,
  truemailInstance: json['truemailInstance'] as String?,
  truemailAuthKey: json['truemailAuthKey'] as String?,
  enableChartsForRemoteUser: json['enableChartsForRemoteUser'] as bool?,
  enableChartsForFederatedInstances:
      json['enableChartsForFederatedInstances'] as bool?,
  enableStatsForFederatedInstances:
      json['enableStatsForFederatedInstances'] as bool?,
  enableServerMachineStats: json['enableServerMachineStats'] as bool?,
  enableIdenticonGeneration: json['enableIdenticonGeneration'] as bool?,
  serverRules: (json['serverRules'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  bannedEmailDomains: (json['bannedEmailDomains'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  preservedUsernames: (json['preservedUsernames'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  manifestJsonOverride: json['manifestJsonOverride'] as String?,
  enableFanoutTimeline: json['enableFanoutTimeline'] as bool?,
  enableFanoutTimelineDbFallback:
      json['enableFanoutTimelineDbFallback'] as bool?,
  perLocalUserUserTimelineCacheMax:
      (json['perLocalUserUserTimelineCacheMax'] as num?)?.toInt(),
  perRemoteUserUserTimelineCacheMax:
      (json['perRemoteUserUserTimelineCacheMax'] as num?)?.toInt(),
  perUserHomeTimelineCacheMax: (json['perUserHomeTimelineCacheMax'] as num?)
      ?.toInt(),
  perUserListTimelineCacheMax: (json['perUserListTimelineCacheMax'] as num?)
      ?.toInt(),
  enableReactionsBuffering: json['enableReactionsBuffering'] as bool?,
  notesPerOneAd: (json['notesPerOneAd'] as num?)?.toInt(),
  silencedHosts: (json['silencedHosts'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  mediaSilencedHosts: (json['mediaSilencedHosts'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  summalyProxy: json['summalyProxy'] as String?,
  urlPreviewEnabled: json['urlPreviewEnabled'] as bool?,
  urlPreviewAllowRedirect: json['urlPreviewAllowRedirect'] as bool?,
  urlPreviewTimeout: (json['urlPreviewTimeout'] as num?)?.toInt(),
  urlPreviewMaximumContentLength:
      (json['urlPreviewMaximumContentLength'] as num?)?.toInt(),
  urlPreviewRequireContentLength:
      json['urlPreviewRequireContentLength'] as bool?,
  urlPreviewUserAgent: json['urlPreviewUserAgent'] as String?,
  urlPreviewSummaryProxyUrl: json['urlPreviewSummaryProxyUrl'] as String?,
  urlPreviewSensitiveList: (json['urlPreviewSensitiveList'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  federation: $enumDecodeNullable(
    _$AdminUpdateMetaRequestFederationEnumMap,
    json['federation'],
  ),
  federationHosts: (json['federationHosts'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  deliverSuspendedSoftware: (json['deliverSuspendedSoftware'] as List<dynamic>?)
      ?.map(
        (e) => AdminUpdateMetaRequestDeliverSuspendedSoftwareItem.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  singleUserMode: json['singleUserMode'] as bool?,
  ugcVisibilityForVisitor: $enumDecodeNullable(
    _$AdminUpdateMetaRequestUgcVisibilityForVisitorEnumMap,
    json['ugcVisibilityForVisitor'],
  ),
  proxyRemoteFiles: json['proxyRemoteFiles'] as bool?,
  signToActivityPubGet: json['signToActivityPubGet'] as bool?,
  allowExternalApRedirect: json['allowExternalApRedirect'] as bool?,
  enableRemoteNotesCleaning: json['enableRemoteNotesCleaning'] as bool?,
  remoteNotesCleaningExpiryDaysForEachNotes:
      json['remoteNotesCleaningExpiryDaysForEachNotes'] as num?,
  remoteNotesCleaningMaxProcessingDurationInMinutes:
      json['remoteNotesCleaningMaxProcessingDurationInMinutes'] as num?,
  showRoleBadgesOfRemoteUsers: json['showRoleBadgesOfRemoteUsers'] as bool?,
);

Map<String, dynamic> _$AdminUpdateMetaRequestToJson(
  AdminUpdateMetaRequest instance,
) => <String, dynamic>{
  'disableRegistration': ?instance.disableRegistration,
  'pinnedUsers': ?instance.pinnedUsers,
  'hiddenTags': ?instance.hiddenTags,
  'blockedHosts': ?instance.blockedHosts,
  'sensitiveWords': ?instance.sensitiveWords,
  'prohibitedWords': ?instance.prohibitedWords,
  'prohibitedWordsForNameOfUser': ?instance.prohibitedWordsForNameOfUser,
  'themeColor': ?instance.themeColor,
  'mascotImageUrl': ?instance.mascotImageUrl,
  'bannerUrl': ?instance.bannerUrl,
  'serverErrorImageUrl': ?instance.serverErrorImageUrl,
  'infoImageUrl': ?instance.infoImageUrl,
  'notFoundImageUrl': ?instance.notFoundImageUrl,
  'iconUrl': ?instance.iconUrl,
  'app192IconUrl': ?instance.app192IconUrl,
  'app512IconUrl': ?instance.app512IconUrl,
  'backgroundImageUrl': ?instance.backgroundImageUrl,
  'logoImageUrl': ?instance.logoImageUrl,
  'name': ?instance.name,
  'shortName': ?instance.shortName,
  'description': ?instance.description,
  'defaultLightTheme': ?instance.defaultLightTheme,
  'defaultDarkTheme': ?instance.defaultDarkTheme,
  'clientOptions': ?instance.clientOptions?.toJson(),
  'cacheRemoteFiles': ?instance.cacheRemoteFiles,
  'cacheRemoteSensitiveFiles': ?instance.cacheRemoteSensitiveFiles,
  'emailRequiredForSignup': ?instance.emailRequiredForSignup,
  'enableHcaptcha': ?instance.enableHcaptcha,
  'hcaptchaSiteKey': ?instance.hcaptchaSiteKey,
  'hcaptchaSecretKey': ?instance.hcaptchaSecretKey,
  'enableMcaptcha': ?instance.enableMcaptcha,
  'mcaptchaSiteKey': ?instance.mcaptchaSiteKey,
  'mcaptchaInstanceUrl': ?instance.mcaptchaInstanceUrl,
  'mcaptchaSecretKey': ?instance.mcaptchaSecretKey,
  'enableRecaptcha': ?instance.enableRecaptcha,
  'recaptchaSiteKey': ?instance.recaptchaSiteKey,
  'recaptchaSecretKey': ?instance.recaptchaSecretKey,
  'enableTurnstile': ?instance.enableTurnstile,
  'turnstileSiteKey': ?instance.turnstileSiteKey,
  'turnstileSecretKey': ?instance.turnstileSecretKey,
  'enableTestcaptcha': ?instance.enableTestcaptcha,
  'googleAnalyticsMeasurementId': ?instance.googleAnalyticsMeasurementId,
  'sensitiveMediaDetection':
      ?_$AdminUpdateMetaRequestSensitiveMediaDetectionEnumMap[instance
          .sensitiveMediaDetection],
  'sensitiveMediaDetectionSensitivity':
      ?_$AdminUpdateMetaRequestSensitiveMediaDetectionSensitivityEnumMap[instance
          .sensitiveMediaDetectionSensitivity],
  'setSensitiveFlagAutomatically': ?instance.setSensitiveFlagAutomatically,
  'enableSensitiveMediaDetectionForVideos':
      ?instance.enableSensitiveMediaDetectionForVideos,
  'sensitiveMediaDetectionApiUrl': ?instance.sensitiveMediaDetectionApiUrl,
  'sensitiveMediaDetectionApiKey': ?instance.sensitiveMediaDetectionApiKey,
  'sensitiveMediaDetectionTimeout': ?instance.sensitiveMediaDetectionTimeout,
  'sensitiveMediaDetectionMaxImagesPerRequest':
      ?instance.sensitiveMediaDetectionMaxImagesPerRequest,
  'maintainerName': ?instance.maintainerName,
  'maintainerEmail': ?instance.maintainerEmail,
  'langs': ?instance.langs,
  'deeplAuthKey': ?instance.deeplAuthKey,
  'deeplIsPro': ?instance.deeplIsPro,
  'enableEmail': ?instance.enableEmail,
  'email': ?instance.email,
  'smtpSecure': ?instance.smtpSecure,
  'smtpHost': ?instance.smtpHost,
  'smtpPort': ?instance.smtpPort,
  'smtpUser': ?instance.smtpUser,
  'smtpPass': ?instance.smtpPass,
  'enableServiceWorker': ?instance.enableServiceWorker,
  'swPublicKey': ?instance.swPublicKey,
  'swPrivateKey': ?instance.swPrivateKey,
  'tosUrl': ?instance.tosUrl,
  'repositoryUrl': ?instance.repositoryUrl,
  'feedbackUrl': ?instance.feedbackUrl,
  'impressumUrl': ?instance.impressumUrl,
  'privacyPolicyUrl': ?instance.privacyPolicyUrl,
  'inquiryUrl': ?instance.inquiryUrl,
  'useObjectStorage': ?instance.useObjectStorage,
  'objectStorageBaseUrl': ?instance.objectStorageBaseUrl,
  'objectStorageBucket': ?instance.objectStorageBucket,
  'objectStoragePrefix': ?instance.objectStoragePrefix,
  'objectStorageEndpoint': ?instance.objectStorageEndpoint,
  'objectStorageRegion': ?instance.objectStorageRegion,
  'objectStoragePort': ?instance.objectStoragePort,
  'objectStorageAccessKey': ?instance.objectStorageAccessKey,
  'objectStorageSecretKey': ?instance.objectStorageSecretKey,
  'objectStorageUseSSL': ?instance.objectStorageUseSSL,
  'objectStorageUseProxy': ?instance.objectStorageUseProxy,
  'objectStorageSetPublicRead': ?instance.objectStorageSetPublicRead,
  'objectStorageS3ForcePathStyle': ?instance.objectStorageS3ForcePathStyle,
  'enableIpLogging': ?instance.enableIpLogging,
  'enableActiveEmailValidation': ?instance.enableActiveEmailValidation,
  'enableVerifymailApi': ?instance.enableVerifymailApi,
  'verifymailAuthKey': ?instance.verifymailAuthKey,
  'enableTruemailApi': ?instance.enableTruemailApi,
  'truemailInstance': ?instance.truemailInstance,
  'truemailAuthKey': ?instance.truemailAuthKey,
  'enableChartsForRemoteUser': ?instance.enableChartsForRemoteUser,
  'enableChartsForFederatedInstances':
      ?instance.enableChartsForFederatedInstances,
  'enableStatsForFederatedInstances':
      ?instance.enableStatsForFederatedInstances,
  'enableServerMachineStats': ?instance.enableServerMachineStats,
  'enableIdenticonGeneration': ?instance.enableIdenticonGeneration,
  'serverRules': ?instance.serverRules,
  'bannedEmailDomains': ?instance.bannedEmailDomains,
  'preservedUsernames': ?instance.preservedUsernames,
  'manifestJsonOverride': ?instance.manifestJsonOverride,
  'enableFanoutTimeline': ?instance.enableFanoutTimeline,
  'enableFanoutTimelineDbFallback': ?instance.enableFanoutTimelineDbFallback,
  'perLocalUserUserTimelineCacheMax':
      ?instance.perLocalUserUserTimelineCacheMax,
  'perRemoteUserUserTimelineCacheMax':
      ?instance.perRemoteUserUserTimelineCacheMax,
  'perUserHomeTimelineCacheMax': ?instance.perUserHomeTimelineCacheMax,
  'perUserListTimelineCacheMax': ?instance.perUserListTimelineCacheMax,
  'enableReactionsBuffering': ?instance.enableReactionsBuffering,
  'notesPerOneAd': ?instance.notesPerOneAd,
  'silencedHosts': ?instance.silencedHosts,
  'mediaSilencedHosts': ?instance.mediaSilencedHosts,
  'summalyProxy': ?instance.summalyProxy,
  'urlPreviewEnabled': ?instance.urlPreviewEnabled,
  'urlPreviewAllowRedirect': ?instance.urlPreviewAllowRedirect,
  'urlPreviewTimeout': ?instance.urlPreviewTimeout,
  'urlPreviewMaximumContentLength': ?instance.urlPreviewMaximumContentLength,
  'urlPreviewRequireContentLength': ?instance.urlPreviewRequireContentLength,
  'urlPreviewUserAgent': ?instance.urlPreviewUserAgent,
  'urlPreviewSummaryProxyUrl': ?instance.urlPreviewSummaryProxyUrl,
  'urlPreviewSensitiveList': ?instance.urlPreviewSensitiveList,
  'federation': ?_$AdminUpdateMetaRequestFederationEnumMap[instance.federation],
  'federationHosts': ?instance.federationHosts,
  'deliverSuspendedSoftware': ?instance.deliverSuspendedSoftware
      ?.map((e) => e.toJson())
      .toList(),
  'singleUserMode': ?instance.singleUserMode,
  'ugcVisibilityForVisitor':
      ?_$AdminUpdateMetaRequestUgcVisibilityForVisitorEnumMap[instance
          .ugcVisibilityForVisitor],
  'proxyRemoteFiles': ?instance.proxyRemoteFiles,
  'signToActivityPubGet': ?instance.signToActivityPubGet,
  'allowExternalApRedirect': ?instance.allowExternalApRedirect,
  'enableRemoteNotesCleaning': ?instance.enableRemoteNotesCleaning,
  'remoteNotesCleaningExpiryDaysForEachNotes':
      ?instance.remoteNotesCleaningExpiryDaysForEachNotes,
  'remoteNotesCleaningMaxProcessingDurationInMinutes':
      ?instance.remoteNotesCleaningMaxProcessingDurationInMinutes,
  'showRoleBadgesOfRemoteUsers': ?instance.showRoleBadgesOfRemoteUsers,
};

const _$AdminUpdateMetaRequestSensitiveMediaDetectionEnumMap = {
  AdminUpdateMetaRequestSensitiveMediaDetection.none: 'none',
  AdminUpdateMetaRequestSensitiveMediaDetection.all: 'all',
  AdminUpdateMetaRequestSensitiveMediaDetection.local: 'local',
  AdminUpdateMetaRequestSensitiveMediaDetection.remote: 'remote',
};

const _$AdminUpdateMetaRequestSensitiveMediaDetectionSensitivityEnumMap = {
  AdminUpdateMetaRequestSensitiveMediaDetectionSensitivity.medium: 'medium',
  AdminUpdateMetaRequestSensitiveMediaDetectionSensitivity.low: 'low',
  AdminUpdateMetaRequestSensitiveMediaDetectionSensitivity.high: 'high',
  AdminUpdateMetaRequestSensitiveMediaDetectionSensitivity.veryLow: 'veryLow',
  AdminUpdateMetaRequestSensitiveMediaDetectionSensitivity.veryHigh: 'veryHigh',
};

const _$AdminUpdateMetaRequestFederationEnumMap = {
  AdminUpdateMetaRequestFederation.all: 'all',
  AdminUpdateMetaRequestFederation.none: 'none',
  AdminUpdateMetaRequestFederation.specified: 'specified',
};

const _$AdminUpdateMetaRequestUgcVisibilityForVisitorEnumMap = {
  AdminUpdateMetaRequestUgcVisibilityForVisitor.all: 'all',
  AdminUpdateMetaRequestUgcVisibilityForVisitor.local: 'local',
  AdminUpdateMetaRequestUgcVisibilityForVisitor.none: 'none',
};

AdminUpdateProxyAccountRequest _$AdminUpdateProxyAccountRequestFromJson(
  Map<String, dynamic> json,
) =>
    AdminUpdateProxyAccountRequest(description: json['description'] as String?);

Map<String, dynamic> _$AdminUpdateProxyAccountRequestToJson(
  AdminUpdateProxyAccountRequest instance,
) => <String, dynamic>{'description': ?instance.description};

AdminUpdateUserNoteRequest _$AdminUpdateUserNoteRequestFromJson(
  Map<String, dynamic> json,
) => AdminUpdateUserNoteRequest(
  userId: json['userId'] as String,
  text: json['text'] as String,
);

Map<String, dynamic> _$AdminUpdateUserNoteRequestToJson(
  AdminUpdateUserNoteRequest instance,
) => <String, dynamic>{'userId': instance.userId, 'text': instance.text};

AdminV2EmojiListRequestQuery _$AdminV2EmojiListRequestQueryFromJson(
  Map<String, dynamic> json,
) => AdminV2EmojiListRequestQuery(
  updatedAtFrom: json['updatedAtFrom'] as String?,
  updatedAtTo: json['updatedAtTo'] as String?,
  name: json['name'] as String?,
  host: json['host'] as String?,
  uri: json['uri'] as String?,
  publicUrl: json['publicUrl'] as String?,
  originalUrl: json['originalUrl'] as String?,
  type: json['type'] as String?,
  aliases: json['aliases'] as String?,
  category: json['category'] as String?,
  license: json['license'] as String?,
  isSensitive: json['isSensitive'] as bool?,
  localOnly: json['localOnly'] as bool?,
  hostType:
      $enumDecodeNullable(
        _$AdminV2EmojiListRequestQueryHostTypeEnumMap,
        json['hostType'],
      ) ??
      AdminV2EmojiListRequestQueryHostType.all,
  roleIds: (json['roleIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$AdminV2EmojiListRequestQueryToJson(
  AdminV2EmojiListRequestQuery instance,
) => <String, dynamic>{
  'updatedAtFrom': ?instance.updatedAtFrom,
  'updatedAtTo': ?instance.updatedAtTo,
  'name': ?instance.name,
  'host': ?instance.host,
  'uri': ?instance.uri,
  'publicUrl': ?instance.publicUrl,
  'originalUrl': ?instance.originalUrl,
  'type': ?instance.type,
  'aliases': ?instance.aliases,
  'category': ?instance.category,
  'license': ?instance.license,
  'isSensitive': ?instance.isSensitive,
  'localOnly': ?instance.localOnly,
  'hostType': _$AdminV2EmojiListRequestQueryHostTypeEnumMap[instance.hostType]!,
  'roleIds': ?instance.roleIds,
};

const _$AdminV2EmojiListRequestQueryHostTypeEnumMap = {
  AdminV2EmojiListRequestQueryHostType.local: 'local',
  AdminV2EmojiListRequestQueryHostType.remote: 'remote',
  AdminV2EmojiListRequestQueryHostType.all: 'all',
};

AdminV2EmojiListRequest _$AdminV2EmojiListRequestFromJson(
  Map<String, dynamic> json,
) => AdminV2EmojiListRequest(
  query: json['query'] == null
      ? null
      : AdminV2EmojiListRequestQuery.fromJson(
          json['query'] as Map<String, dynamic>,
        ),
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  page: (json['page'] as num?)?.toInt(),
  sortKeys: (json['sortKeys'] as List<dynamic>?)
      ?.map((e) => $enumDecode(_$AdminV2EmojiListRequestSortKeysItemEnumMap, e))
      .toList(),
);

Map<String, dynamic> _$AdminV2EmojiListRequestToJson(
  AdminV2EmojiListRequest instance,
) => <String, dynamic>{
  'query': ?instance.query?.toJson(),
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
  'limit': instance.limit,
  'page': ?instance.page,
  'sortKeys': ?instance.sortKeys
      ?.map((e) => _$AdminV2EmojiListRequestSortKeysItemEnumMap[e]!)
      .toList(),
};

const _$AdminV2EmojiListRequestSortKeysItemEnumMap = {
  AdminV2EmojiListRequestSortKeysItem.plusid: '+id',
  AdminV2EmojiListRequestSortKeysItem.minusid: '-id',
  AdminV2EmojiListRequestSortKeysItem.plusupdatedAt: '+updatedAt',
  AdminV2EmojiListRequestSortKeysItem.minusupdatedAt: '-updatedAt',
  AdminV2EmojiListRequestSortKeysItem.plusname: '+name',
  AdminV2EmojiListRequestSortKeysItem.minusname: '-name',
  AdminV2EmojiListRequestSortKeysItem.plushost: '+host',
  AdminV2EmojiListRequestSortKeysItem.minushost: '-host',
  AdminV2EmojiListRequestSortKeysItem.plusuri: '+uri',
  AdminV2EmojiListRequestSortKeysItem.minusuri: '-uri',
  AdminV2EmojiListRequestSortKeysItem.pluspublicUrl: '+publicUrl',
  AdminV2EmojiListRequestSortKeysItem.minuspublicUrl: '-publicUrl',
  AdminV2EmojiListRequestSortKeysItem.plustype: '+type',
  AdminV2EmojiListRequestSortKeysItem.minustype: '-type',
  AdminV2EmojiListRequestSortKeysItem.plusaliases: '+aliases',
  AdminV2EmojiListRequestSortKeysItem.minusaliases: '-aliases',
  AdminV2EmojiListRequestSortKeysItem.pluscategory: '+category',
  AdminV2EmojiListRequestSortKeysItem.minuscategory: '-category',
  AdminV2EmojiListRequestSortKeysItem.pluslicense: '+license',
  AdminV2EmojiListRequestSortKeysItem.minuslicense: '-license',
  AdminV2EmojiListRequestSortKeysItem.plusisSensitive: '+isSensitive',
  AdminV2EmojiListRequestSortKeysItem.minusisSensitive: '-isSensitive',
  AdminV2EmojiListRequestSortKeysItem.pluslocalOnly: '+localOnly',
  AdminV2EmojiListRequestSortKeysItem.minuslocalOnly: '-localOnly',
  AdminV2EmojiListRequestSortKeysItem
          .plusroleIdsThatCanBeUsedThisEmojiAsReaction:
      '+roleIdsThatCanBeUsedThisEmojiAsReaction',
  AdminV2EmojiListRequestSortKeysItem
          .minusroleIdsThatCanBeUsedThisEmojiAsReaction:
      '-roleIdsThatCanBeUsedThisEmojiAsReaction',
};

AdminV2EmojiListResponse _$AdminV2EmojiListResponseFromJson(
  Map<String, dynamic> json,
) => AdminV2EmojiListResponse(
  emojis: (json['emojis'] as List<dynamic>)
      .map((e) => EmojiDetailedAdmin.fromJson(e as Map<String, dynamic>))
      .toList(),
  count: (json['count'] as num).toInt(),
  allCount: (json['allCount'] as num).toInt(),
  allPages: (json['allPages'] as num).toInt(),
);

Map<String, dynamic> _$AdminV2EmojiListResponseToJson(
  AdminV2EmojiListResponse instance,
) => <String, dynamic>{
  'emojis': instance.emojis.map((e) => e.toJson()).toList(),
  'count': instance.count,
  'allCount': instance.allCount,
  'allPages': instance.allPages,
};
