// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountTwoFactorDoneRequest _$AccountTwoFactorDoneRequestFromJson(
  Map<String, dynamic> json,
) => AccountTwoFactorDoneRequest(token: json['token'] as String);

Map<String, dynamic> _$AccountTwoFactorDoneRequestToJson(
  AccountTwoFactorDoneRequest instance,
) => <String, dynamic>{'token': instance.token};

AccountTwoFactorDoneResponse _$AccountTwoFactorDoneResponseFromJson(
  Map<String, dynamic> json,
) => AccountTwoFactorDoneResponse(
  backupCodes: (json['backupCodes'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$AccountTwoFactorDoneResponseToJson(
  AccountTwoFactorDoneResponse instance,
) => <String, dynamic>{'backupCodes': instance.backupCodes};

AccountTwoFactorKeyDoneRequest _$AccountTwoFactorKeyDoneRequestFromJson(
  Map<String, dynamic> json,
) => AccountTwoFactorKeyDoneRequest(
  password: json['password'] as String,
  token: json['token'] as String?,
  name: json['name'] as String,
  credential: json['credential'] as Map<String, dynamic>,
);

Map<String, dynamic> _$AccountTwoFactorKeyDoneRequestToJson(
  AccountTwoFactorKeyDoneRequest instance,
) => <String, dynamic>{
  'password': instance.password,
  'token': ?instance.token,
  'name': instance.name,
  'credential': instance.credential,
};

AccountTwoFactorKeyDoneResponse _$AccountTwoFactorKeyDoneResponseFromJson(
  Map<String, dynamic> json,
) => AccountTwoFactorKeyDoneResponse(
  id: json['id'] as String,
  name: json['name'] as String,
);

Map<String, dynamic> _$AccountTwoFactorKeyDoneResponseToJson(
  AccountTwoFactorKeyDoneResponse instance,
) => <String, dynamic>{'id': instance.id, 'name': instance.name};

AccountTwoFactorPasswordLessRequest
_$AccountTwoFactorPasswordLessRequestFromJson(Map<String, dynamic> json) =>
    AccountTwoFactorPasswordLessRequest(value: json['value'] as bool);

Map<String, dynamic> _$AccountTwoFactorPasswordLessRequestToJson(
  AccountTwoFactorPasswordLessRequest instance,
) => <String, dynamic>{'value': instance.value};

AccountTwoFactorRegisterRequest _$AccountTwoFactorRegisterRequestFromJson(
  Map<String, dynamic> json,
) => AccountTwoFactorRegisterRequest(
  password: json['password'] as String,
  token: json['token'] as String?,
);

Map<String, dynamic> _$AccountTwoFactorRegisterRequestToJson(
  AccountTwoFactorRegisterRequest instance,
) => <String, dynamic>{'password': instance.password, 'token': ?instance.token};

AccountTwoFactorRegisterResponse _$AccountTwoFactorRegisterResponseFromJson(
  Map<String, dynamic> json,
) => AccountTwoFactorRegisterResponse(
  qr: json['qr'] as String,
  url: json['url'] as String,
  secret: json['secret'] as String,
  label: json['label'] as String,
  issuer: json['issuer'] as String,
);

Map<String, dynamic> _$AccountTwoFactorRegisterResponseToJson(
  AccountTwoFactorRegisterResponse instance,
) => <String, dynamic>{
  'qr': instance.qr,
  'url': instance.url,
  'secret': instance.secret,
  'label': instance.label,
  'issuer': instance.issuer,
};

AccountTwoFactorRegisterKeyRequest _$AccountTwoFactorRegisterKeyRequestFromJson(
  Map<String, dynamic> json,
) => AccountTwoFactorRegisterKeyRequest(
  password: json['password'] as String,
  token: json['token'] as String?,
);

Map<String, dynamic> _$AccountTwoFactorRegisterKeyRequestToJson(
  AccountTwoFactorRegisterKeyRequest instance,
) => <String, dynamic>{'password': instance.password, 'token': ?instance.token};

AccountTwoFactorRemoveKeyRequest _$AccountTwoFactorRemoveKeyRequestFromJson(
  Map<String, dynamic> json,
) => AccountTwoFactorRemoveKeyRequest(
  password: json['password'] as String,
  token: json['token'] as String?,
  credentialId: json['credentialId'] as String,
);

Map<String, dynamic> _$AccountTwoFactorRemoveKeyRequestToJson(
  AccountTwoFactorRemoveKeyRequest instance,
) => <String, dynamic>{
  'password': instance.password,
  'token': ?instance.token,
  'credentialId': instance.credentialId,
};

AccountTwoFactorUnregisterRequest _$AccountTwoFactorUnregisterRequestFromJson(
  Map<String, dynamic> json,
) => AccountTwoFactorUnregisterRequest(
  password: json['password'] as String,
  token: json['token'] as String?,
);

Map<String, dynamic> _$AccountTwoFactorUnregisterRequestToJson(
  AccountTwoFactorUnregisterRequest instance,
) => <String, dynamic>{'password': instance.password, 'token': ?instance.token};

AccountTwoFactorUpdateKeyRequest _$AccountTwoFactorUpdateKeyRequestFromJson(
  Map<String, dynamic> json,
) => AccountTwoFactorUpdateKeyRequest(
  name: json['name'] as String,
  credentialId: json['credentialId'] as String,
);

Map<String, dynamic> _$AccountTwoFactorUpdateKeyRequestToJson(
  AccountTwoFactorUpdateKeyRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'credentialId': instance.credentialId,
};

AccountAppsRequest _$AccountAppsRequestFromJson(Map<String, dynamic> json) =>
    AccountAppsRequest(
      sort: $enumDecodeNullable(_$AccountAppsRequestSortEnumMap, json['sort']),
    );

Map<String, dynamic> _$AccountAppsRequestToJson(AccountAppsRequest instance) =>
    <String, dynamic>{'sort': ?_$AccountAppsRequestSortEnumMap[instance.sort]};

const _$AccountAppsRequestSortEnumMap = {
  AccountAppsRequestSort.pluscreatedAt: '+createdAt',
  AccountAppsRequestSort.minuscreatedAt: '-createdAt',
  AccountAppsRequestSort.pluslastUsedAt: '+lastUsedAt',
  AccountAppsRequestSort.minuslastUsedAt: '-lastUsedAt',
};

AccountAppsResponseItem _$AccountAppsResponseItemFromJson(
  Map<String, dynamic> json,
) => AccountAppsResponseItem(
  id: json['id'] as String,
  name: json['name'] as String?,
  createdAt: DateTime.parse(json['createdAt'] as String),
  lastUsedAt: json['lastUsedAt'] == null
      ? null
      : DateTime.parse(json['lastUsedAt'] as String),
  permission: (json['permission'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  iconUrl: json['iconUrl'] as String?,
  description: json['description'] as String?,
);

Map<String, dynamic> _$AccountAppsResponseItemToJson(
  AccountAppsResponseItem instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': ?instance.name,
  'createdAt': instance.createdAt.toIso8601String(),
  'lastUsedAt': ?instance.lastUsedAt?.toIso8601String(),
  'permission': instance.permission,
  'iconUrl': ?instance.iconUrl,
  'description': ?instance.description,
};

AccountAuthorizedAppsRequest _$AccountAuthorizedAppsRequestFromJson(
  Map<String, dynamic> json,
) => AccountAuthorizedAppsRequest(
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  offset: (json['offset'] as num?)?.toInt() ?? 0,
  sort:
      $enumDecodeNullable(
        _$AccountAuthorizedAppsRequestSortEnumMap,
        json['sort'],
      ) ??
      AccountAuthorizedAppsRequestSort.desc,
);

Map<String, dynamic> _$AccountAuthorizedAppsRequestToJson(
  AccountAuthorizedAppsRequest instance,
) => <String, dynamic>{
  'limit': instance.limit,
  'offset': instance.offset,
  'sort': _$AccountAuthorizedAppsRequestSortEnumMap[instance.sort]!,
};

const _$AccountAuthorizedAppsRequestSortEnumMap = {
  AccountAuthorizedAppsRequestSort.desc: 'desc',
  AccountAuthorizedAppsRequestSort.asc: 'asc',
};

AccountAuthorizedAppsResponseItem _$AccountAuthorizedAppsResponseItemFromJson(
  Map<String, dynamic> json,
) => AccountAuthorizedAppsResponseItem(
  id: json['id'] as String,
  name: json['name'] as String,
  callbackUrl: json['callbackUrl'] as String?,
  permission: (json['permission'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  isAuthorized: json['isAuthorized'] as bool?,
);

Map<String, dynamic> _$AccountAuthorizedAppsResponseItemToJson(
  AccountAuthorizedAppsResponseItem instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'callbackUrl': instance.callbackUrl,
  'permission': instance.permission,
  'isAuthorized': ?instance.isAuthorized,
};

AccountChangePasswordRequest _$AccountChangePasswordRequestFromJson(
  Map<String, dynamic> json,
) => AccountChangePasswordRequest(
  currentPassword: json['currentPassword'] as String,
  newPassword: json['newPassword'] as String,
  token: json['token'] as String?,
);

Map<String, dynamic> _$AccountChangePasswordRequestToJson(
  AccountChangePasswordRequest instance,
) => <String, dynamic>{
  'currentPassword': instance.currentPassword,
  'newPassword': instance.newPassword,
  'token': ?instance.token,
};

AccountClaimAchievementRequest _$AccountClaimAchievementRequestFromJson(
  Map<String, dynamic> json,
) => AccountClaimAchievementRequest(
  name: $enumDecode(_$AccountClaimAchievementRequestNameEnumMap, json['name']),
);

Map<String, dynamic> _$AccountClaimAchievementRequestToJson(
  AccountClaimAchievementRequest instance,
) => <String, dynamic>{
  'name': _$AccountClaimAchievementRequestNameEnumMap[instance.name]!,
};

const _$AccountClaimAchievementRequestNameEnumMap = {
  AccountClaimAchievementRequestName.notes1: 'notes1',
  AccountClaimAchievementRequestName.notes10: 'notes10',
  AccountClaimAchievementRequestName.notes100: 'notes100',
  AccountClaimAchievementRequestName.notes500: 'notes500',
  AccountClaimAchievementRequestName.notes1000: 'notes1000',
  AccountClaimAchievementRequestName.notes5000: 'notes5000',
  AccountClaimAchievementRequestName.notes10000: 'notes10000',
  AccountClaimAchievementRequestName.notes20000: 'notes20000',
  AccountClaimAchievementRequestName.notes30000: 'notes30000',
  AccountClaimAchievementRequestName.notes40000: 'notes40000',
  AccountClaimAchievementRequestName.notes50000: 'notes50000',
  AccountClaimAchievementRequestName.notes60000: 'notes60000',
  AccountClaimAchievementRequestName.notes70000: 'notes70000',
  AccountClaimAchievementRequestName.notes80000: 'notes80000',
  AccountClaimAchievementRequestName.notes90000: 'notes90000',
  AccountClaimAchievementRequestName.notes100000: 'notes100000',
  AccountClaimAchievementRequestName.login3: 'login3',
  AccountClaimAchievementRequestName.login7: 'login7',
  AccountClaimAchievementRequestName.login15: 'login15',
  AccountClaimAchievementRequestName.login30: 'login30',
  AccountClaimAchievementRequestName.login60: 'login60',
  AccountClaimAchievementRequestName.login100: 'login100',
  AccountClaimAchievementRequestName.login200: 'login200',
  AccountClaimAchievementRequestName.login300: 'login300',
  AccountClaimAchievementRequestName.login400: 'login400',
  AccountClaimAchievementRequestName.login500: 'login500',
  AccountClaimAchievementRequestName.login600: 'login600',
  AccountClaimAchievementRequestName.login700: 'login700',
  AccountClaimAchievementRequestName.login800: 'login800',
  AccountClaimAchievementRequestName.login900: 'login900',
  AccountClaimAchievementRequestName.login1000: 'login1000',
  AccountClaimAchievementRequestName.passedSinceAccountCreated1:
      'passedSinceAccountCreated1',
  AccountClaimAchievementRequestName.passedSinceAccountCreated2:
      'passedSinceAccountCreated2',
  AccountClaimAchievementRequestName.passedSinceAccountCreated3:
      'passedSinceAccountCreated3',
  AccountClaimAchievementRequestName.loggedInOnBirthday: 'loggedInOnBirthday',
  AccountClaimAchievementRequestName.loggedInOnNewYearsDay:
      'loggedInOnNewYearsDay',
  AccountClaimAchievementRequestName.noteClipped1: 'noteClipped1',
  AccountClaimAchievementRequestName.noteFavorited1: 'noteFavorited1',
  AccountClaimAchievementRequestName.myNoteFavorited1: 'myNoteFavorited1',
  AccountClaimAchievementRequestName.profileFilled: 'profileFilled',
  AccountClaimAchievementRequestName.markedAsCat: 'markedAsCat',
  AccountClaimAchievementRequestName.following1: 'following1',
  AccountClaimAchievementRequestName.following10: 'following10',
  AccountClaimAchievementRequestName.following50: 'following50',
  AccountClaimAchievementRequestName.following100: 'following100',
  AccountClaimAchievementRequestName.following300: 'following300',
  AccountClaimAchievementRequestName.followers1: 'followers1',
  AccountClaimAchievementRequestName.followers10: 'followers10',
  AccountClaimAchievementRequestName.followers50: 'followers50',
  AccountClaimAchievementRequestName.followers100: 'followers100',
  AccountClaimAchievementRequestName.followers300: 'followers300',
  AccountClaimAchievementRequestName.followers500: 'followers500',
  AccountClaimAchievementRequestName.followers1000: 'followers1000',
  AccountClaimAchievementRequestName.collectAchievements30:
      'collectAchievements30',
  AccountClaimAchievementRequestName.viewAchievements3min:
      'viewAchievements3min',
  AccountClaimAchievementRequestName.iLoveMisskey: 'iLoveMisskey',
  AccountClaimAchievementRequestName.foundTreasure: 'foundTreasure',
  AccountClaimAchievementRequestName.client30min: 'client30min',
  AccountClaimAchievementRequestName.client60min: 'client60min',
  AccountClaimAchievementRequestName.noteDeletedWithin1min:
      'noteDeletedWithin1min',
  AccountClaimAchievementRequestName.postedAtLateNight: 'postedAtLateNight',
  AccountClaimAchievementRequestName.postedAt0min0sec: 'postedAt0min0sec',
  AccountClaimAchievementRequestName.selfQuote: 'selfQuote',
  AccountClaimAchievementRequestName.htl20npm: 'htl20npm',
  AccountClaimAchievementRequestName.viewInstanceChart: 'viewInstanceChart',
  AccountClaimAchievementRequestName.outputHelloWorldOnScratchpad:
      'outputHelloWorldOnScratchpad',
  AccountClaimAchievementRequestName.open3windows: 'open3windows',
  AccountClaimAchievementRequestName.driveFolderCircularReference:
      'driveFolderCircularReference',
  AccountClaimAchievementRequestName.reactWithoutRead: 'reactWithoutRead',
  AccountClaimAchievementRequestName.clickedClickHere: 'clickedClickHere',
  AccountClaimAchievementRequestName.justPlainLucky: 'justPlainLucky',
  AccountClaimAchievementRequestName.setNameToSyuilo: 'setNameToSyuilo',
  AccountClaimAchievementRequestName.cookieClicked: 'cookieClicked',
  AccountClaimAchievementRequestName.brainDiver: 'brainDiver',
  AccountClaimAchievementRequestName.smashTestNotificationButton:
      'smashTestNotificationButton',
  AccountClaimAchievementRequestName.tutorialCompleted: 'tutorialCompleted',
  AccountClaimAchievementRequestName.bubbleGameExplodingHead:
      'bubbleGameExplodingHead',
  AccountClaimAchievementRequestName.bubbleGameDoubleExplodingHead:
      'bubbleGameDoubleExplodingHead',
};

AccountDeleteAccountRequest _$AccountDeleteAccountRequestFromJson(
  Map<String, dynamic> json,
) => AccountDeleteAccountRequest(
  password: json['password'] as String,
  token: json['token'] as String?,
);

Map<String, dynamic> _$AccountDeleteAccountRequestToJson(
  AccountDeleteAccountRequest instance,
) => <String, dynamic>{'password': instance.password, 'token': ?instance.token};

AccountExportFollowingRequest _$AccountExportFollowingRequestFromJson(
  Map<String, dynamic> json,
) => AccountExportFollowingRequest(
  excludeMuting: json['excludeMuting'] as bool? ?? false,
  excludeInactive: json['excludeInactive'] as bool? ?? false,
);

Map<String, dynamic> _$AccountExportFollowingRequestToJson(
  AccountExportFollowingRequest instance,
) => <String, dynamic>{
  'excludeMuting': instance.excludeMuting,
  'excludeInactive': instance.excludeInactive,
};

AccountFavoritesRequest _$AccountFavoritesRequestFromJson(
  Map<String, dynamic> json,
) => AccountFavoritesRequest(
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
);

Map<String, dynamic> _$AccountFavoritesRequestToJson(
  AccountFavoritesRequest instance,
) => <String, dynamic>{
  'limit': instance.limit,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
};

AccountGalleryLikesRequest _$AccountGalleryLikesRequestFromJson(
  Map<String, dynamic> json,
) => AccountGalleryLikesRequest(
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
);

Map<String, dynamic> _$AccountGalleryLikesRequestToJson(
  AccountGalleryLikesRequest instance,
) => <String, dynamic>{
  'limit': instance.limit,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
};

AccountGalleryLikesResponseItem _$AccountGalleryLikesResponseItemFromJson(
  Map<String, dynamic> json,
) => AccountGalleryLikesResponseItem(
  id: json['id'] as String,
  post: GalleryPost.fromJson(json['post'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AccountGalleryLikesResponseItemToJson(
  AccountGalleryLikesResponseItem instance,
) => <String, dynamic>{'id': instance.id, 'post': instance.post.toJson()};

AccountGalleryPostsRequest _$AccountGalleryPostsRequestFromJson(
  Map<String, dynamic> json,
) => AccountGalleryPostsRequest(
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
);

Map<String, dynamic> _$AccountGalleryPostsRequestToJson(
  AccountGalleryPostsRequest instance,
) => <String, dynamic>{
  'limit': instance.limit,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
};

AccountImportAntennasRequest _$AccountImportAntennasRequestFromJson(
  Map<String, dynamic> json,
) => AccountImportAntennasRequest(fileId: json['fileId'] as String);

Map<String, dynamic> _$AccountImportAntennasRequestToJson(
  AccountImportAntennasRequest instance,
) => <String, dynamic>{'fileId': instance.fileId};

AccountImportBlockingRequest _$AccountImportBlockingRequestFromJson(
  Map<String, dynamic> json,
) => AccountImportBlockingRequest(fileId: json['fileId'] as String);

Map<String, dynamic> _$AccountImportBlockingRequestToJson(
  AccountImportBlockingRequest instance,
) => <String, dynamic>{'fileId': instance.fileId};

AccountImportFollowingRequest _$AccountImportFollowingRequestFromJson(
  Map<String, dynamic> json,
) => AccountImportFollowingRequest(
  fileId: json['fileId'] as String,
  withReplies: json['withReplies'] as bool?,
);

Map<String, dynamic> _$AccountImportFollowingRequestToJson(
  AccountImportFollowingRequest instance,
) => <String, dynamic>{
  'fileId': instance.fileId,
  'withReplies': ?instance.withReplies,
};

AccountImportMutingRequest _$AccountImportMutingRequestFromJson(
  Map<String, dynamic> json,
) => AccountImportMutingRequest(fileId: json['fileId'] as String);

Map<String, dynamic> _$AccountImportMutingRequestToJson(
  AccountImportMutingRequest instance,
) => <String, dynamic>{'fileId': instance.fileId};

AccountImportUserListsRequest _$AccountImportUserListsRequestFromJson(
  Map<String, dynamic> json,
) => AccountImportUserListsRequest(fileId: json['fileId'] as String);

Map<String, dynamic> _$AccountImportUserListsRequestToJson(
  AccountImportUserListsRequest instance,
) => <String, dynamic>{'fileId': instance.fileId};

AccountMoveRequest _$AccountMoveRequestFromJson(Map<String, dynamic> json) =>
    AccountMoveRequest(moveToAccount: json['moveToAccount'] as String);

Map<String, dynamic> _$AccountMoveRequestToJson(AccountMoveRequest instance) =>
    <String, dynamic>{'moveToAccount': instance.moveToAccount};

AccountNotificationsRequest _$AccountNotificationsRequestFromJson(
  Map<String, dynamic> json,
) => AccountNotificationsRequest(
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
  markAsRead: json['markAsRead'] as bool? ?? true,
  includeTypes: (json['includeTypes'] as List<dynamic>?)
      ?.map(
        (e) => $enumDecode(
          _$AccountNotificationsRequestIncludeTypesItemEnumMap,
          e,
        ),
      )
      .toList(),
  excludeTypes: (json['excludeTypes'] as List<dynamic>?)
      ?.map(
        (e) => $enumDecode(
          _$AccountNotificationsRequestExcludeTypesItemEnumMap,
          e,
        ),
      )
      .toList(),
);

Map<String, dynamic> _$AccountNotificationsRequestToJson(
  AccountNotificationsRequest instance,
) => <String, dynamic>{
  'limit': instance.limit,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
  'markAsRead': instance.markAsRead,
  'includeTypes': ?instance.includeTypes
      ?.map((e) => _$AccountNotificationsRequestIncludeTypesItemEnumMap[e]!)
      .toList(),
  'excludeTypes': ?instance.excludeTypes
      ?.map((e) => _$AccountNotificationsRequestExcludeTypesItemEnumMap[e]!)
      .toList(),
};

const _$AccountNotificationsRequestIncludeTypesItemEnumMap = {
  AccountNotificationsRequestIncludeTypesItem.note: 'note',
  AccountNotificationsRequestIncludeTypesItem.follow: 'follow',
  AccountNotificationsRequestIncludeTypesItem.mention: 'mention',
  AccountNotificationsRequestIncludeTypesItem.reply: 'reply',
  AccountNotificationsRequestIncludeTypesItem.renote: 'renote',
  AccountNotificationsRequestIncludeTypesItem.quote: 'quote',
  AccountNotificationsRequestIncludeTypesItem.reaction: 'reaction',
  AccountNotificationsRequestIncludeTypesItem.pollEnded: 'pollEnded',
  AccountNotificationsRequestIncludeTypesItem.scheduledNotePosted:
      'scheduledNotePosted',
  AccountNotificationsRequestIncludeTypesItem.scheduledNotePostFailed:
      'scheduledNotePostFailed',
  AccountNotificationsRequestIncludeTypesItem.receiveFollowRequest:
      'receiveFollowRequest',
  AccountNotificationsRequestIncludeTypesItem.followRequestAccepted:
      'followRequestAccepted',
  AccountNotificationsRequestIncludeTypesItem.roleAssigned: 'roleAssigned',
  AccountNotificationsRequestIncludeTypesItem.chatRoomInvitationReceived:
      'chatRoomInvitationReceived',
  AccountNotificationsRequestIncludeTypesItem.achievementEarned:
      'achievementEarned',
  AccountNotificationsRequestIncludeTypesItem.exportCompleted:
      'exportCompleted',
  AccountNotificationsRequestIncludeTypesItem.login: 'login',
  AccountNotificationsRequestIncludeTypesItem.createToken: 'createToken',
  AccountNotificationsRequestIncludeTypesItem.app: 'app',
  AccountNotificationsRequestIncludeTypesItem.test: 'test',
  AccountNotificationsRequestIncludeTypesItem.pollVote: 'pollVote',
  AccountNotificationsRequestIncludeTypesItem.groupInvited: 'groupInvited',
};

const _$AccountNotificationsRequestExcludeTypesItemEnumMap = {
  AccountNotificationsRequestExcludeTypesItem.note: 'note',
  AccountNotificationsRequestExcludeTypesItem.follow: 'follow',
  AccountNotificationsRequestExcludeTypesItem.mention: 'mention',
  AccountNotificationsRequestExcludeTypesItem.reply: 'reply',
  AccountNotificationsRequestExcludeTypesItem.renote: 'renote',
  AccountNotificationsRequestExcludeTypesItem.quote: 'quote',
  AccountNotificationsRequestExcludeTypesItem.reaction: 'reaction',
  AccountNotificationsRequestExcludeTypesItem.pollEnded: 'pollEnded',
  AccountNotificationsRequestExcludeTypesItem.scheduledNotePosted:
      'scheduledNotePosted',
  AccountNotificationsRequestExcludeTypesItem.scheduledNotePostFailed:
      'scheduledNotePostFailed',
  AccountNotificationsRequestExcludeTypesItem.receiveFollowRequest:
      'receiveFollowRequest',
  AccountNotificationsRequestExcludeTypesItem.followRequestAccepted:
      'followRequestAccepted',
  AccountNotificationsRequestExcludeTypesItem.roleAssigned: 'roleAssigned',
  AccountNotificationsRequestExcludeTypesItem.chatRoomInvitationReceived:
      'chatRoomInvitationReceived',
  AccountNotificationsRequestExcludeTypesItem.achievementEarned:
      'achievementEarned',
  AccountNotificationsRequestExcludeTypesItem.exportCompleted:
      'exportCompleted',
  AccountNotificationsRequestExcludeTypesItem.login: 'login',
  AccountNotificationsRequestExcludeTypesItem.createToken: 'createToken',
  AccountNotificationsRequestExcludeTypesItem.app: 'app',
  AccountNotificationsRequestExcludeTypesItem.test: 'test',
  AccountNotificationsRequestExcludeTypesItem.pollVote: 'pollVote',
  AccountNotificationsRequestExcludeTypesItem.groupInvited: 'groupInvited',
};

AccountNotificationsGroupedRequest _$AccountNotificationsGroupedRequestFromJson(
  Map<String, dynamic> json,
) => AccountNotificationsGroupedRequest(
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
  markAsRead: json['markAsRead'] as bool? ?? true,
  includeTypes: (json['includeTypes'] as List<dynamic>?)
      ?.map(
        (e) => $enumDecode(
          _$AccountNotificationsGroupedRequestIncludeTypesItemEnumMap,
          e,
        ),
      )
      .toList(),
  excludeTypes: (json['excludeTypes'] as List<dynamic>?)
      ?.map(
        (e) => $enumDecode(
          _$AccountNotificationsGroupedRequestExcludeTypesItemEnumMap,
          e,
        ),
      )
      .toList(),
);

Map<String, dynamic> _$AccountNotificationsGroupedRequestToJson(
  AccountNotificationsGroupedRequest instance,
) => <String, dynamic>{
  'limit': instance.limit,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
  'markAsRead': instance.markAsRead,
  'includeTypes': ?instance.includeTypes
      ?.map(
        (e) => _$AccountNotificationsGroupedRequestIncludeTypesItemEnumMap[e]!,
      )
      .toList(),
  'excludeTypes': ?instance.excludeTypes
      ?.map(
        (e) => _$AccountNotificationsGroupedRequestExcludeTypesItemEnumMap[e]!,
      )
      .toList(),
};

const _$AccountNotificationsGroupedRequestIncludeTypesItemEnumMap = {
  AccountNotificationsGroupedRequestIncludeTypesItem.note: 'note',
  AccountNotificationsGroupedRequestIncludeTypesItem.follow: 'follow',
  AccountNotificationsGroupedRequestIncludeTypesItem.mention: 'mention',
  AccountNotificationsGroupedRequestIncludeTypesItem.reply: 'reply',
  AccountNotificationsGroupedRequestIncludeTypesItem.renote: 'renote',
  AccountNotificationsGroupedRequestIncludeTypesItem.quote: 'quote',
  AccountNotificationsGroupedRequestIncludeTypesItem.reaction: 'reaction',
  AccountNotificationsGroupedRequestIncludeTypesItem.pollEnded: 'pollEnded',
  AccountNotificationsGroupedRequestIncludeTypesItem.scheduledNotePosted:
      'scheduledNotePosted',
  AccountNotificationsGroupedRequestIncludeTypesItem.scheduledNotePostFailed:
      'scheduledNotePostFailed',
  AccountNotificationsGroupedRequestIncludeTypesItem.receiveFollowRequest:
      'receiveFollowRequest',
  AccountNotificationsGroupedRequestIncludeTypesItem.followRequestAccepted:
      'followRequestAccepted',
  AccountNotificationsGroupedRequestIncludeTypesItem.roleAssigned:
      'roleAssigned',
  AccountNotificationsGroupedRequestIncludeTypesItem.chatRoomInvitationReceived:
      'chatRoomInvitationReceived',
  AccountNotificationsGroupedRequestIncludeTypesItem.achievementEarned:
      'achievementEarned',
  AccountNotificationsGroupedRequestIncludeTypesItem.exportCompleted:
      'exportCompleted',
  AccountNotificationsGroupedRequestIncludeTypesItem.login: 'login',
  AccountNotificationsGroupedRequestIncludeTypesItem.createToken: 'createToken',
  AccountNotificationsGroupedRequestIncludeTypesItem.app: 'app',
  AccountNotificationsGroupedRequestIncludeTypesItem.test: 'test',
  AccountNotificationsGroupedRequestIncludeTypesItem.pollVote: 'pollVote',
  AccountNotificationsGroupedRequestIncludeTypesItem.groupInvited:
      'groupInvited',
};

const _$AccountNotificationsGroupedRequestExcludeTypesItemEnumMap = {
  AccountNotificationsGroupedRequestExcludeTypesItem.note: 'note',
  AccountNotificationsGroupedRequestExcludeTypesItem.follow: 'follow',
  AccountNotificationsGroupedRequestExcludeTypesItem.mention: 'mention',
  AccountNotificationsGroupedRequestExcludeTypesItem.reply: 'reply',
  AccountNotificationsGroupedRequestExcludeTypesItem.renote: 'renote',
  AccountNotificationsGroupedRequestExcludeTypesItem.quote: 'quote',
  AccountNotificationsGroupedRequestExcludeTypesItem.reaction: 'reaction',
  AccountNotificationsGroupedRequestExcludeTypesItem.pollEnded: 'pollEnded',
  AccountNotificationsGroupedRequestExcludeTypesItem.scheduledNotePosted:
      'scheduledNotePosted',
  AccountNotificationsGroupedRequestExcludeTypesItem.scheduledNotePostFailed:
      'scheduledNotePostFailed',
  AccountNotificationsGroupedRequestExcludeTypesItem.receiveFollowRequest:
      'receiveFollowRequest',
  AccountNotificationsGroupedRequestExcludeTypesItem.followRequestAccepted:
      'followRequestAccepted',
  AccountNotificationsGroupedRequestExcludeTypesItem.roleAssigned:
      'roleAssigned',
  AccountNotificationsGroupedRequestExcludeTypesItem.chatRoomInvitationReceived:
      'chatRoomInvitationReceived',
  AccountNotificationsGroupedRequestExcludeTypesItem.achievementEarned:
      'achievementEarned',
  AccountNotificationsGroupedRequestExcludeTypesItem.exportCompleted:
      'exportCompleted',
  AccountNotificationsGroupedRequestExcludeTypesItem.login: 'login',
  AccountNotificationsGroupedRequestExcludeTypesItem.createToken: 'createToken',
  AccountNotificationsGroupedRequestExcludeTypesItem.app: 'app',
  AccountNotificationsGroupedRequestExcludeTypesItem.test: 'test',
  AccountNotificationsGroupedRequestExcludeTypesItem.pollVote: 'pollVote',
  AccountNotificationsGroupedRequestExcludeTypesItem.groupInvited:
      'groupInvited',
};

AccountPageLikesRequest _$AccountPageLikesRequestFromJson(
  Map<String, dynamic> json,
) => AccountPageLikesRequest(
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
);

Map<String, dynamic> _$AccountPageLikesRequestToJson(
  AccountPageLikesRequest instance,
) => <String, dynamic>{
  'limit': instance.limit,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
};

AccountPageLikesResponseItem _$AccountPageLikesResponseItemFromJson(
  Map<String, dynamic> json,
) => AccountPageLikesResponseItem(
  id: json['id'] as String,
  page: Page.fromJson(json['page'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AccountPageLikesResponseItemToJson(
  AccountPageLikesResponseItem instance,
) => <String, dynamic>{'id': instance.id, 'page': instance.page.toJson()};

AccountPagesRequest _$AccountPagesRequestFromJson(Map<String, dynamic> json) =>
    AccountPagesRequest(
      limit: (json['limit'] as num?)?.toInt() ?? 10,
      sinceId: json['sinceId'] as String?,
      untilId: json['untilId'] as String?,
      sinceDate: (json['sinceDate'] as num?)?.toInt(),
      untilDate: (json['untilDate'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AccountPagesRequestToJson(
  AccountPagesRequest instance,
) => <String, dynamic>{
  'limit': instance.limit,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
};

AccountPinRequest _$AccountPinRequestFromJson(Map<String, dynamic> json) =>
    AccountPinRequest(noteId: json['noteId'] as String);

Map<String, dynamic> _$AccountPinRequestToJson(AccountPinRequest instance) =>
    <String, dynamic>{'noteId': instance.noteId};

AccountReadAnnouncementRequest _$AccountReadAnnouncementRequestFromJson(
  Map<String, dynamic> json,
) => AccountReadAnnouncementRequest(
  announcementId: json['announcementId'] as String,
);

Map<String, dynamic> _$AccountReadAnnouncementRequestToJson(
  AccountReadAnnouncementRequest instance,
) => <String, dynamic>{'announcementId': instance.announcementId};

AccountRegenerateTokenRequest _$AccountRegenerateTokenRequestFromJson(
  Map<String, dynamic> json,
) => AccountRegenerateTokenRequest(password: json['password'] as String);

Map<String, dynamic> _$AccountRegenerateTokenRequestToJson(
  AccountRegenerateTokenRequest instance,
) => <String, dynamic>{'password': instance.password};

AccountRegistryGetRequest _$AccountRegistryGetRequestFromJson(
  Map<String, dynamic> json,
) => AccountRegistryGetRequest(
  key: json['key'] as String,
  scope: (json['scope'] as List<dynamic>).map((e) => e as String).toList(),
  domain: json['domain'] as String?,
);

Map<String, dynamic> _$AccountRegistryGetRequestToJson(
  AccountRegistryGetRequest instance,
) => <String, dynamic>{
  'key': instance.key,
  'scope': instance.scope,
  'domain': ?instance.domain,
};

AccountRegistryGetAllRequest _$AccountRegistryGetAllRequestFromJson(
  Map<String, dynamic> json,
) => AccountRegistryGetAllRequest(
  scope: (json['scope'] as List<dynamic>).map((e) => e as String).toList(),
  domain: json['domain'] as String?,
);

Map<String, dynamic> _$AccountRegistryGetAllRequestToJson(
  AccountRegistryGetAllRequest instance,
) => <String, dynamic>{'scope': instance.scope, 'domain': ?instance.domain};

AccountRegistryGetDetailRequest _$AccountRegistryGetDetailRequestFromJson(
  Map<String, dynamic> json,
) => AccountRegistryGetDetailRequest(
  key: json['key'] as String,
  scope: (json['scope'] as List<dynamic>).map((e) => e as String).toList(),
  domain: json['domain'] as String?,
);

Map<String, dynamic> _$AccountRegistryGetDetailRequestToJson(
  AccountRegistryGetDetailRequest instance,
) => <String, dynamic>{
  'key': instance.key,
  'scope': instance.scope,
  'domain': ?instance.domain,
};

AccountRegistryGetDetailResponse _$AccountRegistryGetDetailResponseFromJson(
  Map<String, dynamic> json,
) => AccountRegistryGetDetailResponse(
  updatedAt: json['updatedAt'] as String,
  value: json['value'] as Map<String, dynamic>,
);

Map<String, dynamic> _$AccountRegistryGetDetailResponseToJson(
  AccountRegistryGetDetailResponse instance,
) => <String, dynamic>{
  'updatedAt': instance.updatedAt,
  'value': instance.value,
};

AccountRegistryKeysRequest _$AccountRegistryKeysRequestFromJson(
  Map<String, dynamic> json,
) => AccountRegistryKeysRequest(
  scope: (json['scope'] as List<dynamic>).map((e) => e as String).toList(),
  domain: json['domain'] as String?,
);

Map<String, dynamic> _$AccountRegistryKeysRequestToJson(
  AccountRegistryKeysRequest instance,
) => <String, dynamic>{'scope': instance.scope, 'domain': ?instance.domain};

AccountRegistryKeysWithTypeRequest _$AccountRegistryKeysWithTypeRequestFromJson(
  Map<String, dynamic> json,
) => AccountRegistryKeysWithTypeRequest(
  scope: (json['scope'] as List<dynamic>).map((e) => e as String).toList(),
  domain: json['domain'] as String?,
);

Map<String, dynamic> _$AccountRegistryKeysWithTypeRequestToJson(
  AccountRegistryKeysWithTypeRequest instance,
) => <String, dynamic>{'scope': instance.scope, 'domain': ?instance.domain};

AccountRegistryRemoveRequest _$AccountRegistryRemoveRequestFromJson(
  Map<String, dynamic> json,
) => AccountRegistryRemoveRequest(
  key: json['key'] as String,
  scope: (json['scope'] as List<dynamic>).map((e) => e as String).toList(),
  domain: json['domain'] as String?,
);

Map<String, dynamic> _$AccountRegistryRemoveRequestToJson(
  AccountRegistryRemoveRequest instance,
) => <String, dynamic>{
  'key': instance.key,
  'scope': instance.scope,
  'domain': ?instance.domain,
};

AccountRegistryScopesWithDomainResponseItem
_$AccountRegistryScopesWithDomainResponseItemFromJson(
  Map<String, dynamic> json,
) => AccountRegistryScopesWithDomainResponseItem(
  scopes: (json['scopes'] as List<dynamic>)
      .map((e) => (e as List<dynamic>).map((e) => e as String).toList())
      .toList(),
  domain: json['domain'] as String?,
);

Map<String, dynamic> _$AccountRegistryScopesWithDomainResponseItemToJson(
  AccountRegistryScopesWithDomainResponseItem instance,
) => <String, dynamic>{'scopes': instance.scopes, 'domain': instance.domain};

AccountRegistrySetRequest _$AccountRegistrySetRequestFromJson(
  Map<String, dynamic> json,
) => AccountRegistrySetRequest(
  key: json['key'] as String,
  value: json['value'] as Map<String, dynamic>,
  scope: (json['scope'] as List<dynamic>).map((e) => e as String).toList(),
  domain: json['domain'] as String?,
);

Map<String, dynamic> _$AccountRegistrySetRequestToJson(
  AccountRegistrySetRequest instance,
) => <String, dynamic>{
  'key': instance.key,
  'value': instance.value,
  'scope': instance.scope,
  'domain': ?instance.domain,
};

AccountRevokeTokenRequestByTokenId _$AccountRevokeTokenRequestByTokenIdFromJson(
  Map<String, dynamic> json,
) => AccountRevokeTokenRequestByTokenId(tokenId: json['tokenId'] as String);

Map<String, dynamic> _$AccountRevokeTokenRequestByTokenIdToJson(
  AccountRevokeTokenRequestByTokenId instance,
) => <String, dynamic>{'tokenId': instance.tokenId};

AccountRevokeTokenRequestByToken _$AccountRevokeTokenRequestByTokenFromJson(
  Map<String, dynamic> json,
) => AccountRevokeTokenRequestByToken(token: json['token'] as String?);

Map<String, dynamic> _$AccountRevokeTokenRequestByTokenToJson(
  AccountRevokeTokenRequestByToken instance,
) => <String, dynamic>{'token': instance.token};

AccountSigninHistoryRequest _$AccountSigninHistoryRequestFromJson(
  Map<String, dynamic> json,
) => AccountSigninHistoryRequest(
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
);

Map<String, dynamic> _$AccountSigninHistoryRequestToJson(
  AccountSigninHistoryRequest instance,
) => <String, dynamic>{
  'limit': instance.limit,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
};

AccountUnpinRequest _$AccountUnpinRequestFromJson(Map<String, dynamic> json) =>
    AccountUnpinRequest(noteId: json['noteId'] as String);

Map<String, dynamic> _$AccountUnpinRequestToJson(
  AccountUnpinRequest instance,
) => <String, dynamic>{'noteId': instance.noteId};

AccountUpdateRequestAvatarDecorationsItem
_$AccountUpdateRequestAvatarDecorationsItemFromJson(
  Map<String, dynamic> json,
) => AccountUpdateRequestAvatarDecorationsItem(
  id: json['id'] as String,
  angle: json['angle'] as num?,
  flipH: json['flipH'] as bool?,
  offsetX: json['offsetX'] as num?,
  offsetY: json['offsetY'] as num?,
);

Map<String, dynamic> _$AccountUpdateRequestAvatarDecorationsItemToJson(
  AccountUpdateRequestAvatarDecorationsItem instance,
) => <String, dynamic>{
  'id': instance.id,
  'angle': ?instance.angle,
  'flipH': ?instance.flipH,
  'offsetX': ?instance.offsetX,
  'offsetY': ?instance.offsetY,
};

AccountUpdateRequestFieldsItem _$AccountUpdateRequestFieldsItemFromJson(
  Map<String, dynamic> json,
) => AccountUpdateRequestFieldsItem(
  name: json['name'] as String,
  value: json['value'] as String,
);

Map<String, dynamic> _$AccountUpdateRequestFieldsItemToJson(
  AccountUpdateRequestFieldsItem instance,
) => <String, dynamic>{'name': instance.name, 'value': instance.value};

AccountUpdateRequestNotificationRecieveConfig
_$AccountUpdateRequestNotificationRecieveConfigFromJson(
  Map<String, dynamic> json,
) => AccountUpdateRequestNotificationRecieveConfig(
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

Map<String, dynamic> _$AccountUpdateRequestNotificationRecieveConfigToJson(
  AccountUpdateRequestNotificationRecieveConfig instance,
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

AccountUpdateRequest _$AccountUpdateRequestFromJson(
  Map<String, dynamic> json,
) => AccountUpdateRequest(
  name: json['name'] as String?,
  description: json['description'] as String?,
  followedMessage: json['followedMessage'] as String?,
  location: json['location'] as String?,
  birthday: json['birthday'] as String?,
  lang: $enumDecodeNullable(_$AccountUpdateRequestLangEnumMap, json['lang']),
  avatarId: json['avatarId'] as String?,
  avatarDecorations: (json['avatarDecorations'] as List<dynamic>?)
      ?.map(
        (e) => AccountUpdateRequestAvatarDecorationsItem.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  bannerId: json['bannerId'] as String?,
  fields: (json['fields'] as List<dynamic>?)
      ?.map(
        (e) =>
            AccountUpdateRequestFieldsItem.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  isLocked: json['isLocked'] as bool?,
  isExplorable: json['isExplorable'] as bool?,
  hideOnlineStatus: json['hideOnlineStatus'] as bool?,
  publicReactions: json['publicReactions'] as bool?,
  carefulBot: json['carefulBot'] as bool?,
  autoAcceptFollowed: json['autoAcceptFollowed'] as bool?,
  noCrawle: json['noCrawle'] as bool?,
  preventAiLearning: json['preventAiLearning'] as bool?,
  requireSigninToViewContents: json['requireSigninToViewContents'] as bool?,
  makeNotesFollowersOnlyBefore: (json['makeNotesFollowersOnlyBefore'] as num?)
      ?.toInt(),
  makeNotesHiddenBefore: (json['makeNotesHiddenBefore'] as num?)?.toInt(),
  isBot: json['isBot'] as bool?,
  isCat: json['isCat'] as bool?,
  injectFeaturedNote: json['injectFeaturedNote'] as bool?,
  receiveAnnouncementEmail: json['receiveAnnouncementEmail'] as bool?,
  alwaysMarkNsfw: json['alwaysMarkNsfw'] as bool?,
  autoSensitive: json['autoSensitive'] as bool?,
  followingVisibility: $enumDecodeNullable(
    _$FollowingVisibilityEnumMap,
    json['followingVisibility'],
  ),
  followersVisibility: $enumDecodeNullable(
    _$FollowingVisibilityEnumMap,
    json['followersVisibility'],
  ),
  chatScope: $enumDecodeNullable(_$ChatScopeEnumMap, json['chatScope']),
  pinnedPageId: json['pinnedPageId'] as String?,
  mutedWords: (json['mutedWords'] as List<dynamic>?)
      ?.map((e) => e as Map<String, dynamic>?)
      .toList(),
  hardMutedWords: (json['hardMutedWords'] as List<dynamic>?)
      ?.map((e) => e as Map<String, dynamic>?)
      .toList(),
  mutedInstances: (json['mutedInstances'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  notificationRecieveConfig: json['notificationRecieveConfig'] == null
      ? null
      : AccountUpdateRequestNotificationRecieveConfig.fromJson(
          json['notificationRecieveConfig'] as Map<String, dynamic>,
        ),
  emailNotificationTypes: (json['emailNotificationTypes'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  alsoKnownAs: (json['alsoKnownAs'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$AccountUpdateRequestToJson(
  AccountUpdateRequest instance,
) => <String, dynamic>{
  'name': ?instance.name,
  'description': ?instance.description,
  'followedMessage': ?instance.followedMessage,
  'location': ?instance.location,
  'birthday': ?instance.birthday,
  'lang': ?_$AccountUpdateRequestLangEnumMap[instance.lang],
  'avatarId': ?instance.avatarId,
  'avatarDecorations': ?instance.avatarDecorations
      ?.map((e) => e.toJson())
      .toList(),
  'bannerId': ?instance.bannerId,
  'fields': ?instance.fields?.map((e) => e.toJson()).toList(),
  'isLocked': ?instance.isLocked,
  'isExplorable': ?instance.isExplorable,
  'hideOnlineStatus': ?instance.hideOnlineStatus,
  'publicReactions': ?instance.publicReactions,
  'carefulBot': ?instance.carefulBot,
  'autoAcceptFollowed': ?instance.autoAcceptFollowed,
  'noCrawle': ?instance.noCrawle,
  'preventAiLearning': ?instance.preventAiLearning,
  'requireSigninToViewContents': ?instance.requireSigninToViewContents,
  'makeNotesFollowersOnlyBefore': ?instance.makeNotesFollowersOnlyBefore,
  'makeNotesHiddenBefore': ?instance.makeNotesHiddenBefore,
  'isBot': ?instance.isBot,
  'isCat': ?instance.isCat,
  'injectFeaturedNote': ?instance.injectFeaturedNote,
  'receiveAnnouncementEmail': ?instance.receiveAnnouncementEmail,
  'alwaysMarkNsfw': ?instance.alwaysMarkNsfw,
  'autoSensitive': ?instance.autoSensitive,
  'followingVisibility':
      ?_$FollowingVisibilityEnumMap[instance.followingVisibility],
  'followersVisibility':
      ?_$FollowingVisibilityEnumMap[instance.followersVisibility],
  'chatScope': ?_$ChatScopeEnumMap[instance.chatScope],
  'pinnedPageId': ?instance.pinnedPageId,
  'mutedWords': ?instance.mutedWords,
  'hardMutedWords': ?instance.hardMutedWords,
  'mutedInstances': ?instance.mutedInstances,
  'notificationRecieveConfig': ?instance.notificationRecieveConfig?.toJson(),
  'emailNotificationTypes': ?instance.emailNotificationTypes,
  'alsoKnownAs': ?instance.alsoKnownAs,
};

const _$AccountUpdateRequestLangEnumMap = {
  AccountUpdateRequestLang.ach: 'ach',
  AccountUpdateRequestLang.ady: 'ady',
  AccountUpdateRequestLang.af: 'af',
  AccountUpdateRequestLang.afNA: 'af-NA',
  AccountUpdateRequestLang.afZA: 'af-ZA',
  AccountUpdateRequestLang.ak: 'ak',
  AccountUpdateRequestLang.ar: 'ar',
  AccountUpdateRequestLang.arAR: 'ar-AR',
  AccountUpdateRequestLang.arMA: 'ar-MA',
  AccountUpdateRequestLang.arSA: 'ar-SA',
  AccountUpdateRequestLang.ayBO: 'ay-BO',
  AccountUpdateRequestLang.az: 'az',
  AccountUpdateRequestLang.azAZ: 'az-AZ',
  AccountUpdateRequestLang.beBY: 'be-BY',
  AccountUpdateRequestLang.bg: 'bg',
  AccountUpdateRequestLang.bgBG: 'bg-BG',
  AccountUpdateRequestLang.bn: 'bn',
  AccountUpdateRequestLang.bnIN: 'bn-IN',
  AccountUpdateRequestLang.bnBD: 'bn-BD',
  AccountUpdateRequestLang.br: 'br',
  AccountUpdateRequestLang.bsBA: 'bs-BA',
  AccountUpdateRequestLang.ca: 'ca',
  AccountUpdateRequestLang.caES: 'ca-ES',
  AccountUpdateRequestLang.cak: 'cak',
  AccountUpdateRequestLang.ckUS: 'ck-US',
  AccountUpdateRequestLang.cs: 'cs',
  AccountUpdateRequestLang.csCZ: 'cs-CZ',
  AccountUpdateRequestLang.cy: 'cy',
  AccountUpdateRequestLang.cyGB: 'cy-GB',
  AccountUpdateRequestLang.da: 'da',
  AccountUpdateRequestLang.daDK: 'da-DK',
  AccountUpdateRequestLang.de: 'de',
  AccountUpdateRequestLang.deAT: 'de-AT',
  AccountUpdateRequestLang.deDE: 'de-DE',
  AccountUpdateRequestLang.deCH: 'de-CH',
  AccountUpdateRequestLang.dsb: 'dsb',
  AccountUpdateRequestLang.el: 'el',
  AccountUpdateRequestLang.elGR: 'el-GR',
  AccountUpdateRequestLang.en: 'en',
  AccountUpdateRequestLang.enGB: 'en-GB',
  AccountUpdateRequestLang.enAU: 'en-AU',
  AccountUpdateRequestLang.enCA: 'en-CA',
  AccountUpdateRequestLang.enIE: 'en-IE',
  AccountUpdateRequestLang.enIN: 'en-IN',
  AccountUpdateRequestLang.enPI: 'en-PI',
  AccountUpdateRequestLang.enSG: 'en-SG',
  AccountUpdateRequestLang.enUD: 'en-UD',
  AccountUpdateRequestLang.enUS: 'en-US',
  AccountUpdateRequestLang.enZA: 'en-ZA',
  AccountUpdateRequestLang.enPirate: 'en@pirate',
  AccountUpdateRequestLang.eo: 'eo',
  AccountUpdateRequestLang.eoEO: 'eo-EO',
  AccountUpdateRequestLang.es: 'es',
  AccountUpdateRequestLang.esAR: 'es-AR',
  AccountUpdateRequestLang.es419: 'es-419',
  AccountUpdateRequestLang.esCL: 'es-CL',
  AccountUpdateRequestLang.esCO: 'es-CO',
  AccountUpdateRequestLang.esEC: 'es-EC',
  AccountUpdateRequestLang.esES: 'es-ES',
  AccountUpdateRequestLang.esLA: 'es-LA',
  AccountUpdateRequestLang.esNI: 'es-NI',
  AccountUpdateRequestLang.esMX: 'es-MX',
  AccountUpdateRequestLang.esUS: 'es-US',
  AccountUpdateRequestLang.esVE: 'es-VE',
  AccountUpdateRequestLang.et: 'et',
  AccountUpdateRequestLang.etEE: 'et-EE',
  AccountUpdateRequestLang.eu: 'eu',
  AccountUpdateRequestLang.euES: 'eu-ES',
  AccountUpdateRequestLang.fa: 'fa',
  AccountUpdateRequestLang.faIR: 'fa-IR',
  AccountUpdateRequestLang.fbLT: 'fb-LT',
  AccountUpdateRequestLang.ff: 'ff',
  AccountUpdateRequestLang.fi: 'fi',
  AccountUpdateRequestLang.fiFI: 'fi-FI',
  AccountUpdateRequestLang.fo: 'fo',
  AccountUpdateRequestLang.foFO: 'fo-FO',
  AccountUpdateRequestLang.fr: 'fr',
  AccountUpdateRequestLang.frCA: 'fr-CA',
  AccountUpdateRequestLang.frFR: 'fr-FR',
  AccountUpdateRequestLang.frBE: 'fr-BE',
  AccountUpdateRequestLang.frCH: 'fr-CH',
  AccountUpdateRequestLang.fyNL: 'fy-NL',
  AccountUpdateRequestLang.ga: 'ga',
  AccountUpdateRequestLang.gaIE: 'ga-IE',
  AccountUpdateRequestLang.gd: 'gd',
  AccountUpdateRequestLang.gl: 'gl',
  AccountUpdateRequestLang.glES: 'gl-ES',
  AccountUpdateRequestLang.gnPY: 'gn-PY',
  AccountUpdateRequestLang.guIN: 'gu-IN',
  AccountUpdateRequestLang.gv: 'gv',
  AccountUpdateRequestLang.gxGR: 'gx-GR',
  AccountUpdateRequestLang.he: 'he',
  AccountUpdateRequestLang.heIL: 'he-IL',
  AccountUpdateRequestLang.hi: 'hi',
  AccountUpdateRequestLang.hiIN: 'hi-IN',
  AccountUpdateRequestLang.hr: 'hr',
  AccountUpdateRequestLang.hrHR: 'hr-HR',
  AccountUpdateRequestLang.hsb: 'hsb',
  AccountUpdateRequestLang.ht: 'ht',
  AccountUpdateRequestLang.hu: 'hu',
  AccountUpdateRequestLang.huHU: 'hu-HU',
  AccountUpdateRequestLang.hy: 'hy',
  AccountUpdateRequestLang.hyAM: 'hy-AM',
  AccountUpdateRequestLang.id: 'id',
  AccountUpdateRequestLang.idID: 'id-ID',
  AccountUpdateRequestLang.is_: 'is',
  AccountUpdateRequestLang.isIS: 'is-IS',
  AccountUpdateRequestLang.it: 'it',
  AccountUpdateRequestLang.itIT: 'it-IT',
  AccountUpdateRequestLang.ja: 'ja',
  AccountUpdateRequestLang.jaJP: 'ja-JP',
  AccountUpdateRequestLang.jvID: 'jv-ID',
  AccountUpdateRequestLang.kaGE: 'ka-GE',
  AccountUpdateRequestLang.kkKZ: 'kk-KZ',
  AccountUpdateRequestLang.km: 'km',
  AccountUpdateRequestLang.kl: 'kl',
  AccountUpdateRequestLang.kmKH: 'km-KH',
  AccountUpdateRequestLang.kab: 'kab',
  AccountUpdateRequestLang.kn: 'kn',
  AccountUpdateRequestLang.knIN: 'kn-IN',
  AccountUpdateRequestLang.ko: 'ko',
  AccountUpdateRequestLang.koKR: 'ko-KR',
  AccountUpdateRequestLang.kuTR: 'ku-TR',
  AccountUpdateRequestLang.kw: 'kw',
  AccountUpdateRequestLang.la: 'la',
  AccountUpdateRequestLang.laVA: 'la-VA',
  AccountUpdateRequestLang.lb: 'lb',
  AccountUpdateRequestLang.liNL: 'li-NL',
  AccountUpdateRequestLang.lt: 'lt',
  AccountUpdateRequestLang.ltLT: 'lt-LT',
  AccountUpdateRequestLang.lv: 'lv',
  AccountUpdateRequestLang.lvLV: 'lv-LV',
  AccountUpdateRequestLang.mai: 'mai',
  AccountUpdateRequestLang.mgMG: 'mg-MG',
  AccountUpdateRequestLang.mk: 'mk',
  AccountUpdateRequestLang.mkMK: 'mk-MK',
  AccountUpdateRequestLang.ml: 'ml',
  AccountUpdateRequestLang.mlIN: 'ml-IN',
  AccountUpdateRequestLang.mnMN: 'mn-MN',
  AccountUpdateRequestLang.mr: 'mr',
  AccountUpdateRequestLang.mrIN: 'mr-IN',
  AccountUpdateRequestLang.ms: 'ms',
  AccountUpdateRequestLang.msMY: 'ms-MY',
  AccountUpdateRequestLang.mt: 'mt',
  AccountUpdateRequestLang.mtMT: 'mt-MT',
  AccountUpdateRequestLang.my: 'my',
  AccountUpdateRequestLang.no: 'no',
  AccountUpdateRequestLang.nb: 'nb',
  AccountUpdateRequestLang.nbNO: 'nb-NO',
  AccountUpdateRequestLang.ne: 'ne',
  AccountUpdateRequestLang.neNP: 'ne-NP',
  AccountUpdateRequestLang.nl: 'nl',
  AccountUpdateRequestLang.nlBE: 'nl-BE',
  AccountUpdateRequestLang.nlNL: 'nl-NL',
  AccountUpdateRequestLang.nnNO: 'nn-NO',
  AccountUpdateRequestLang.oc: 'oc',
  AccountUpdateRequestLang.orIN: 'or-IN',
  AccountUpdateRequestLang.pa: 'pa',
  AccountUpdateRequestLang.paIN: 'pa-IN',
  AccountUpdateRequestLang.pl: 'pl',
  AccountUpdateRequestLang.plPL: 'pl-PL',
  AccountUpdateRequestLang.psAF: 'ps-AF',
  AccountUpdateRequestLang.pt: 'pt',
  AccountUpdateRequestLang.ptBR: 'pt-BR',
  AccountUpdateRequestLang.ptPT: 'pt-PT',
  AccountUpdateRequestLang.quPE: 'qu-PE',
  AccountUpdateRequestLang.rmCH: 'rm-CH',
  AccountUpdateRequestLang.ro: 'ro',
  AccountUpdateRequestLang.roRO: 'ro-RO',
  AccountUpdateRequestLang.ru: 'ru',
  AccountUpdateRequestLang.ruRU: 'ru-RU',
  AccountUpdateRequestLang.saIN: 'sa-IN',
  AccountUpdateRequestLang.seNO: 'se-NO',
  AccountUpdateRequestLang.sh: 'sh',
  AccountUpdateRequestLang.siLK: 'si-LK',
  AccountUpdateRequestLang.sk: 'sk',
  AccountUpdateRequestLang.skSK: 'sk-SK',
  AccountUpdateRequestLang.sl: 'sl',
  AccountUpdateRequestLang.slSI: 'sl-SI',
  AccountUpdateRequestLang.soSO: 'so-SO',
  AccountUpdateRequestLang.sq: 'sq',
  AccountUpdateRequestLang.sqAL: 'sq-AL',
  AccountUpdateRequestLang.sr: 'sr',
  AccountUpdateRequestLang.srRS: 'sr-RS',
  AccountUpdateRequestLang.su: 'su',
  AccountUpdateRequestLang.sv: 'sv',
  AccountUpdateRequestLang.svSE: 'sv-SE',
  AccountUpdateRequestLang.sw: 'sw',
  AccountUpdateRequestLang.swKE: 'sw-KE',
  AccountUpdateRequestLang.ta: 'ta',
  AccountUpdateRequestLang.taIN: 'ta-IN',
  AccountUpdateRequestLang.te: 'te',
  AccountUpdateRequestLang.teIN: 'te-IN',
  AccountUpdateRequestLang.tg: 'tg',
  AccountUpdateRequestLang.tgTJ: 'tg-TJ',
  AccountUpdateRequestLang.th: 'th',
  AccountUpdateRequestLang.thTH: 'th-TH',
  AccountUpdateRequestLang.fil: 'fil',
  AccountUpdateRequestLang.tlh: 'tlh',
  AccountUpdateRequestLang.tr: 'tr',
  AccountUpdateRequestLang.trTR: 'tr-TR',
  AccountUpdateRequestLang.ttRU: 'tt-RU',
  AccountUpdateRequestLang.uk: 'uk',
  AccountUpdateRequestLang.ukUA: 'uk-UA',
  AccountUpdateRequestLang.ur: 'ur',
  AccountUpdateRequestLang.urPK: 'ur-PK',
  AccountUpdateRequestLang.uz: 'uz',
  AccountUpdateRequestLang.uzUZ: 'uz-UZ',
  AccountUpdateRequestLang.vi: 'vi',
  AccountUpdateRequestLang.viVN: 'vi-VN',
  AccountUpdateRequestLang.xhZA: 'xh-ZA',
  AccountUpdateRequestLang.yi: 'yi',
  AccountUpdateRequestLang.yiDE: 'yi-DE',
  AccountUpdateRequestLang.zh: 'zh',
  AccountUpdateRequestLang.zhHans: 'zh-Hans',
  AccountUpdateRequestLang.zhHant: 'zh-Hant',
  AccountUpdateRequestLang.zhCN: 'zh-CN',
  AccountUpdateRequestLang.zhHK: 'zh-HK',
  AccountUpdateRequestLang.zhSG: 'zh-SG',
  AccountUpdateRequestLang.zhTW: 'zh-TW',
  AccountUpdateRequestLang.zuZA: 'zu-ZA',
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

AccountUpdateEmailRequest _$AccountUpdateEmailRequestFromJson(
  Map<String, dynamic> json,
) => AccountUpdateEmailRequest(
  password: json['password'] as String,
  email: json['email'] as String?,
  token: json['token'] as String?,
);

Map<String, dynamic> _$AccountUpdateEmailRequestToJson(
  AccountUpdateEmailRequest instance,
) => <String, dynamic>{
  'password': instance.password,
  'email': ?instance.email,
  'token': ?instance.token,
};

AccountWebhooksCreateRequest _$AccountWebhooksCreateRequestFromJson(
  Map<String, dynamic> json,
) => AccountWebhooksCreateRequest(
  name: json['name'] as String,
  url: json['url'] as String,
  secret: json['secret'] as String? ?? '',
  onValue: (json['on'] as List<dynamic>)
      .map((e) => $enumDecode(_$AccountWebhooksCreateRequestOnItemEnumMap, e))
      .toList(),
);

Map<String, dynamic> _$AccountWebhooksCreateRequestToJson(
  AccountWebhooksCreateRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'url': instance.url,
  'secret': instance.secret,
  'on': instance.onValue
      .map((e) => _$AccountWebhooksCreateRequestOnItemEnumMap[e]!)
      .toList(),
};

const _$AccountWebhooksCreateRequestOnItemEnumMap = {
  AccountWebhooksCreateRequestOnItem.mention: 'mention',
  AccountWebhooksCreateRequestOnItem.unfollow: 'unfollow',
  AccountWebhooksCreateRequestOnItem.follow: 'follow',
  AccountWebhooksCreateRequestOnItem.followed: 'followed',
  AccountWebhooksCreateRequestOnItem.note: 'note',
  AccountWebhooksCreateRequestOnItem.reply: 'reply',
  AccountWebhooksCreateRequestOnItem.renote: 'renote',
  AccountWebhooksCreateRequestOnItem.reaction: 'reaction',
};

AccountWebhooksCreateResponse _$AccountWebhooksCreateResponseFromJson(
  Map<String, dynamic> json,
) => AccountWebhooksCreateResponse(
  id: json['id'] as String,
  userId: json['userId'] as String,
  name: json['name'] as String,
  onValue: (json['on'] as List<dynamic>)
      .map((e) => $enumDecode(_$AccountWebhooksCreateResponseOnItemEnumMap, e))
      .toList(),
  url: json['url'] as String,
  secret: json['secret'] as String,
  active: json['active'] as bool,
  latestSentAt: json['latestSentAt'] == null
      ? null
      : DateTime.parse(json['latestSentAt'] as String),
  latestStatus: (json['latestStatus'] as num?)?.toInt(),
);

Map<String, dynamic> _$AccountWebhooksCreateResponseToJson(
  AccountWebhooksCreateResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'name': instance.name,
  'on': instance.onValue
      .map((e) => _$AccountWebhooksCreateResponseOnItemEnumMap[e]!)
      .toList(),
  'url': instance.url,
  'secret': instance.secret,
  'active': instance.active,
  'latestSentAt': instance.latestSentAt?.toIso8601String(),
  'latestStatus': instance.latestStatus,
};

const _$AccountWebhooksCreateResponseOnItemEnumMap = {
  AccountWebhooksCreateResponseOnItem.mention: 'mention',
  AccountWebhooksCreateResponseOnItem.unfollow: 'unfollow',
  AccountWebhooksCreateResponseOnItem.follow: 'follow',
  AccountWebhooksCreateResponseOnItem.followed: 'followed',
  AccountWebhooksCreateResponseOnItem.note: 'note',
  AccountWebhooksCreateResponseOnItem.reply: 'reply',
  AccountWebhooksCreateResponseOnItem.renote: 'renote',
  AccountWebhooksCreateResponseOnItem.reaction: 'reaction',
};

AccountWebhooksDeleteRequest _$AccountWebhooksDeleteRequestFromJson(
  Map<String, dynamic> json,
) => AccountWebhooksDeleteRequest(webhookId: json['webhookId'] as String);

Map<String, dynamic> _$AccountWebhooksDeleteRequestToJson(
  AccountWebhooksDeleteRequest instance,
) => <String, dynamic>{'webhookId': instance.webhookId};

AccountWebhooksShowRequest _$AccountWebhooksShowRequestFromJson(
  Map<String, dynamic> json,
) => AccountWebhooksShowRequest(webhookId: json['webhookId'] as String);

Map<String, dynamic> _$AccountWebhooksShowRequestToJson(
  AccountWebhooksShowRequest instance,
) => <String, dynamic>{'webhookId': instance.webhookId};

AccountWebhooksTestRequestOverride _$AccountWebhooksTestRequestOverrideFromJson(
  Map<String, dynamic> json,
) => AccountWebhooksTestRequestOverride(
  url: json['url'] as String?,
  secret: json['secret'] as String?,
);

Map<String, dynamic> _$AccountWebhooksTestRequestOverrideToJson(
  AccountWebhooksTestRequestOverride instance,
) => <String, dynamic>{'url': ?instance.url, 'secret': ?instance.secret};

AccountWebhooksTestRequest _$AccountWebhooksTestRequestFromJson(
  Map<String, dynamic> json,
) => AccountWebhooksTestRequest(
  webhookId: json['webhookId'] as String,
  type: $enumDecode(_$AccountWebhooksTestRequestTypeEnumMap, json['type']),
  override: json['override'] == null
      ? null
      : AccountWebhooksTestRequestOverride.fromJson(
          json['override'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$AccountWebhooksTestRequestToJson(
  AccountWebhooksTestRequest instance,
) => <String, dynamic>{
  'webhookId': instance.webhookId,
  'type': _$AccountWebhooksTestRequestTypeEnumMap[instance.type]!,
  'override': ?instance.override?.toJson(),
};

const _$AccountWebhooksTestRequestTypeEnumMap = {
  AccountWebhooksTestRequestType.mention: 'mention',
  AccountWebhooksTestRequestType.unfollow: 'unfollow',
  AccountWebhooksTestRequestType.follow: 'follow',
  AccountWebhooksTestRequestType.followed: 'followed',
  AccountWebhooksTestRequestType.note: 'note',
  AccountWebhooksTestRequestType.reply: 'reply',
  AccountWebhooksTestRequestType.renote: 'renote',
  AccountWebhooksTestRequestType.reaction: 'reaction',
};

AccountWebhooksUpdateRequest _$AccountWebhooksUpdateRequestFromJson(
  Map<String, dynamic> json,
) => AccountWebhooksUpdateRequest(
  webhookId: json['webhookId'] as String,
  name: json['name'] as String?,
  url: json['url'] as String?,
  secret: json['secret'] as String?,
  onValue: (json['on'] as List<dynamic>?)
      ?.map((e) => $enumDecode(_$AccountWebhooksUpdateRequestOnItemEnumMap, e))
      .toList(),
  active: json['active'] as bool?,
);

Map<String, dynamic> _$AccountWebhooksUpdateRequestToJson(
  AccountWebhooksUpdateRequest instance,
) => <String, dynamic>{
  'webhookId': instance.webhookId,
  'name': ?instance.name,
  'url': ?instance.url,
  'secret': ?instance.secret,
  'on': ?instance.onValue
      ?.map((e) => _$AccountWebhooksUpdateRequestOnItemEnumMap[e]!)
      .toList(),
  'active': ?instance.active,
};

const _$AccountWebhooksUpdateRequestOnItemEnumMap = {
  AccountWebhooksUpdateRequestOnItem.mention: 'mention',
  AccountWebhooksUpdateRequestOnItem.unfollow: 'unfollow',
  AccountWebhooksUpdateRequestOnItem.follow: 'follow',
  AccountWebhooksUpdateRequestOnItem.followed: 'followed',
  AccountWebhooksUpdateRequestOnItem.note: 'note',
  AccountWebhooksUpdateRequestOnItem.reply: 'reply',
  AccountWebhooksUpdateRequestOnItem.renote: 'renote',
  AccountWebhooksUpdateRequestOnItem.reaction: 'reaction',
};

AccountMyAppsRequest _$AccountMyAppsRequestFromJson(
  Map<String, dynamic> json,
) => AccountMyAppsRequest(
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  offset: (json['offset'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$AccountMyAppsRequestToJson(
  AccountMyAppsRequest instance,
) => <String, dynamic>{'limit': instance.limit, 'offset': instance.offset};

AccountSwRegisterRequest _$AccountSwRegisterRequestFromJson(
  Map<String, dynamic> json,
) => AccountSwRegisterRequest(
  endpoint: json['endpoint'] as String,
  auth: json['auth'] as String,
  publickey: json['publickey'] as String,
  sendReadMessage: json['sendReadMessage'] as bool? ?? false,
);

Map<String, dynamic> _$AccountSwRegisterRequestToJson(
  AccountSwRegisterRequest instance,
) => <String, dynamic>{
  'endpoint': instance.endpoint,
  'auth': instance.auth,
  'publickey': instance.publickey,
  'sendReadMessage': instance.sendReadMessage,
};

AccountSwRegisterResponse _$AccountSwRegisterResponseFromJson(
  Map<String, dynamic> json,
) => AccountSwRegisterResponse(
  state: $enumDecodeNullable(
    _$AccountSwRegisterResponseStateEnumMap,
    json['state'],
  ),
  key: json['key'] as String?,
  userId: json['userId'] as String,
  endpoint: json['endpoint'] as String,
  sendReadMessage: json['sendReadMessage'] as bool,
);

Map<String, dynamic> _$AccountSwRegisterResponseToJson(
  AccountSwRegisterResponse instance,
) => <String, dynamic>{
  'state': ?_$AccountSwRegisterResponseStateEnumMap[instance.state],
  'key': instance.key,
  'userId': instance.userId,
  'endpoint': instance.endpoint,
  'sendReadMessage': instance.sendReadMessage,
};

const _$AccountSwRegisterResponseStateEnumMap = {
  AccountSwRegisterResponseState.alreadySubscribed: 'already-subscribed',
  AccountSwRegisterResponseState.subscribed: 'subscribed',
};

AccountSwShowRegistrationRequest _$AccountSwShowRegistrationRequestFromJson(
  Map<String, dynamic> json,
) => AccountSwShowRegistrationRequest(endpoint: json['endpoint'] as String);

Map<String, dynamic> _$AccountSwShowRegistrationRequestToJson(
  AccountSwShowRegistrationRequest instance,
) => <String, dynamic>{'endpoint': instance.endpoint};

AccountSwShowRegistrationResponse _$AccountSwShowRegistrationResponseFromJson(
  Map<String, dynamic> json,
) => AccountSwShowRegistrationResponse(
  userId: json['userId'] as String,
  endpoint: json['endpoint'] as String,
  sendReadMessage: json['sendReadMessage'] as bool,
);

Map<String, dynamic> _$AccountSwShowRegistrationResponseToJson(
  AccountSwShowRegistrationResponse instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'endpoint': instance.endpoint,
  'sendReadMessage': instance.sendReadMessage,
};

AccountSwUnregisterRequest _$AccountSwUnregisterRequestFromJson(
  Map<String, dynamic> json,
) => AccountSwUnregisterRequest(endpoint: json['endpoint'] as String);

Map<String, dynamic> _$AccountSwUnregisterRequestToJson(
  AccountSwUnregisterRequest instance,
) => <String, dynamic>{'endpoint': instance.endpoint};

AccountSwUpdateRegistrationRequest _$AccountSwUpdateRegistrationRequestFromJson(
  Map<String, dynamic> json,
) => AccountSwUpdateRegistrationRequest(
  endpoint: json['endpoint'] as String,
  sendReadMessage: json['sendReadMessage'] as bool?,
);

Map<String, dynamic> _$AccountSwUpdateRegistrationRequestToJson(
  AccountSwUpdateRegistrationRequest instance,
) => <String, dynamic>{
  'endpoint': instance.endpoint,
  'sendReadMessage': ?instance.sendReadMessage,
};

AccountSwUpdateRegistrationResponse
_$AccountSwUpdateRegistrationResponseFromJson(Map<String, dynamic> json) =>
    AccountSwUpdateRegistrationResponse(
      userId: json['userId'] as String,
      endpoint: json['endpoint'] as String,
      sendReadMessage: json['sendReadMessage'] as bool,
    );

Map<String, dynamic> _$AccountSwUpdateRegistrationResponseToJson(
  AccountSwUpdateRegistrationResponse instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'endpoint': instance.endpoint,
  'sendReadMessage': instance.sendReadMessage,
};

AccountVerifyEmailRequest _$AccountVerifyEmailRequestFromJson(
  Map<String, dynamic> json,
) => AccountVerifyEmailRequest(code: json['code'] as String);

Map<String, dynamic> _$AccountVerifyEmailRequestToJson(
  AccountVerifyEmailRequest instance,
) => <String, dynamic>{'code': instance.code};
