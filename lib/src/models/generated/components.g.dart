// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'components.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserAvatarDecoration _$UserAvatarDecorationFromJson(
  Map<String, dynamic> json,
) => UserAvatarDecoration(
  id: json['id'] as String,
  angle: json['angle'] as num?,
  flipH: json['flipH'] as bool?,
  url: json['url'] as String,
  offsetX: json['offsetX'] as num?,
  offsetY: json['offsetY'] as num?,
);

Map<String, dynamic> _$UserAvatarDecorationToJson(
  UserAvatarDecoration instance,
) => <String, dynamic>{
  'id': instance.id,
  'angle': ?instance.angle,
  'flipH': ?instance.flipH,
  'url': instance.url,
  'offsetX': ?instance.offsetX,
  'offsetY': ?instance.offsetY,
};

UserInstance _$UserInstanceFromJson(Map<String, dynamic> json) => UserInstance(
  name: json['name'] as String?,
  softwareName: json['softwareName'] as String?,
  softwareVersion: json['softwareVersion'] as String?,
  iconUrl: json['iconUrl'] as String?,
  faviconUrl: json['faviconUrl'] as String?,
  themeColor: json['themeColor'] as String?,
);

Map<String, dynamic> _$UserInstanceToJson(UserInstance instance) =>
    <String, dynamic>{
      'name': instance.name,
      'softwareName': instance.softwareName,
      'softwareVersion': instance.softwareVersion,
      'iconUrl': instance.iconUrl,
      'faviconUrl': instance.faviconUrl,
      'themeColor': instance.themeColor,
    };

UserBadgeRole _$UserBadgeRoleFromJson(Map<String, dynamic> json) =>
    UserBadgeRole(
      name: json['name'] as String,
      iconUrl: json['iconUrl'] as String?,
      displayOrder: json['displayOrder'] as num,
    );

Map<String, dynamic> _$UserBadgeRoleToJson(UserBadgeRole instance) =>
    <String, dynamic>{
      'name': instance.name,
      'iconUrl': instance.iconUrl,
      'displayOrder': instance.displayOrder,
    };

UserField _$UserFieldFromJson(Map<String, dynamic> json) =>
    UserField(name: json['name'] as String, value: json['value'] as String);

Map<String, dynamic> _$UserFieldToJson(UserField instance) => <String, dynamic>{
  'name': instance.name,
  'value': instance.value,
};

MeDetailedOnlyNotificationRecieveConfig
_$MeDetailedOnlyNotificationRecieveConfigFromJson(
  Map<String, dynamic> json,
) => MeDetailedOnlyNotificationRecieveConfig(
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

Map<String, dynamic> _$MeDetailedOnlyNotificationRecieveConfigToJson(
  MeDetailedOnlyNotificationRecieveConfig instance,
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

SecurityKey _$SecurityKeyFromJson(Map<String, dynamic> json) => SecurityKey(
  id: json['id'] as String,
  name: json['name'] as String,
  lastUsed: DateTime.parse(json['lastUsed'] as String),
);

Map<String, dynamic> _$SecurityKeyToJson(SecurityKey instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'lastUsed': instance.lastUsed.toIso8601String(),
    };

UserDetailedNotMeAvatarDecorationsItem
_$UserDetailedNotMeAvatarDecorationsItemFromJson(Map<String, dynamic> json) =>
    UserDetailedNotMeAvatarDecorationsItem(
      id: json['id'] as String,
      angle: json['angle'] as num?,
      flipH: json['flipH'] as bool?,
      url: json['url'] as String,
      offsetX: json['offsetX'] as num?,
      offsetY: json['offsetY'] as num?,
    );

Map<String, dynamic> _$UserDetailedNotMeAvatarDecorationsItemToJson(
  UserDetailedNotMeAvatarDecorationsItem instance,
) => <String, dynamic>{
  'id': instance.id,
  'angle': ?instance.angle,
  'flipH': ?instance.flipH,
  'url': instance.url,
  'offsetX': ?instance.offsetX,
  'offsetY': ?instance.offsetY,
};

UserDetailedNotMeInstance _$UserDetailedNotMeInstanceFromJson(
  Map<String, dynamic> json,
) => UserDetailedNotMeInstance(
  name: json['name'] as String?,
  softwareName: json['softwareName'] as String?,
  softwareVersion: json['softwareVersion'] as String?,
  iconUrl: json['iconUrl'] as String?,
  faviconUrl: json['faviconUrl'] as String?,
  themeColor: json['themeColor'] as String?,
);

Map<String, dynamic> _$UserDetailedNotMeInstanceToJson(
  UserDetailedNotMeInstance instance,
) => <String, dynamic>{
  'name': instance.name,
  'softwareName': instance.softwareName,
  'softwareVersion': instance.softwareVersion,
  'iconUrl': instance.iconUrl,
  'faviconUrl': instance.faviconUrl,
  'themeColor': instance.themeColor,
};

UserDetailedNotMeBadgeRolesItem _$UserDetailedNotMeBadgeRolesItemFromJson(
  Map<String, dynamic> json,
) => UserDetailedNotMeBadgeRolesItem(
  name: json['name'] as String,
  iconUrl: json['iconUrl'] as String?,
  displayOrder: json['displayOrder'] as num,
);

Map<String, dynamic> _$UserDetailedNotMeBadgeRolesItemToJson(
  UserDetailedNotMeBadgeRolesItem instance,
) => <String, dynamic>{
  'name': instance.name,
  'iconUrl': instance.iconUrl,
  'displayOrder': instance.displayOrder,
};

UserDetailedNotMeFieldsItem _$UserDetailedNotMeFieldsItemFromJson(
  Map<String, dynamic> json,
) => UserDetailedNotMeFieldsItem(
  name: json['name'] as String,
  value: json['value'] as String,
);

Map<String, dynamic> _$UserDetailedNotMeFieldsItemToJson(
  UserDetailedNotMeFieldsItem instance,
) => <String, dynamic>{'name': instance.name, 'value': instance.value};

MeDetailedAvatarDecorationsItem _$MeDetailedAvatarDecorationsItemFromJson(
  Map<String, dynamic> json,
) => MeDetailedAvatarDecorationsItem(
  id: json['id'] as String,
  angle: json['angle'] as num?,
  flipH: json['flipH'] as bool?,
  url: json['url'] as String,
  offsetX: json['offsetX'] as num?,
  offsetY: json['offsetY'] as num?,
);

Map<String, dynamic> _$MeDetailedAvatarDecorationsItemToJson(
  MeDetailedAvatarDecorationsItem instance,
) => <String, dynamic>{
  'id': instance.id,
  'angle': ?instance.angle,
  'flipH': ?instance.flipH,
  'url': instance.url,
  'offsetX': ?instance.offsetX,
  'offsetY': ?instance.offsetY,
};

MeDetailedInstance _$MeDetailedInstanceFromJson(Map<String, dynamic> json) =>
    MeDetailedInstance(
      name: json['name'] as String?,
      softwareName: json['softwareName'] as String?,
      softwareVersion: json['softwareVersion'] as String?,
      iconUrl: json['iconUrl'] as String?,
      faviconUrl: json['faviconUrl'] as String?,
      themeColor: json['themeColor'] as String?,
    );

Map<String, dynamic> _$MeDetailedInstanceToJson(MeDetailedInstance instance) =>
    <String, dynamic>{
      'name': instance.name,
      'softwareName': instance.softwareName,
      'softwareVersion': instance.softwareVersion,
      'iconUrl': instance.iconUrl,
      'faviconUrl': instance.faviconUrl,
      'themeColor': instance.themeColor,
    };

MeDetailedBadgeRolesItem _$MeDetailedBadgeRolesItemFromJson(
  Map<String, dynamic> json,
) => MeDetailedBadgeRolesItem(
  name: json['name'] as String,
  iconUrl: json['iconUrl'] as String?,
  displayOrder: json['displayOrder'] as num,
);

Map<String, dynamic> _$MeDetailedBadgeRolesItemToJson(
  MeDetailedBadgeRolesItem instance,
) => <String, dynamic>{
  'name': instance.name,
  'iconUrl': instance.iconUrl,
  'displayOrder': instance.displayOrder,
};

MeDetailedFieldsItem _$MeDetailedFieldsItemFromJson(
  Map<String, dynamic> json,
) => MeDetailedFieldsItem(
  name: json['name'] as String,
  value: json['value'] as String,
);

Map<String, dynamic> _$MeDetailedFieldsItemToJson(
  MeDetailedFieldsItem instance,
) => <String, dynamic>{'name': instance.name, 'value': instance.value};

MeDetailedNotificationRecieveConfig
_$MeDetailedNotificationRecieveConfigFromJson(
  Map<String, dynamic> json,
) => MeDetailedNotificationRecieveConfig(
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

Map<String, dynamic> _$MeDetailedNotificationRecieveConfigToJson(
  MeDetailedNotificationRecieveConfig instance,
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

MeDetailedSecurityKeysListItem _$MeDetailedSecurityKeysListItemFromJson(
  Map<String, dynamic> json,
) => MeDetailedSecurityKeysListItem(
  id: json['id'] as String,
  name: json['name'] as String,
  lastUsed: DateTime.parse(json['lastUsed'] as String),
);

Map<String, dynamic> _$MeDetailedSecurityKeysListItemToJson(
  MeDetailedSecurityKeysListItem instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'lastUsed': instance.lastUsed.toIso8601String(),
};

NotePollChoicesItem _$NotePollChoicesItemFromJson(Map<String, dynamic> json) =>
    NotePollChoicesItem(
      isVoted: json['isVoted'] as bool,
      text: json['text'] as String,
      votes: json['votes'] as num,
    );

Map<String, dynamic> _$NotePollChoicesItemToJson(
  NotePollChoicesItem instance,
) => <String, dynamic>{
  'isVoted': instance.isVoted,
  'text': instance.text,
  'votes': instance.votes,
};

NotePoll _$NotePollFromJson(Map<String, dynamic> json) => NotePoll(
  expiresAt: json['expiresAt'] == null
      ? null
      : DateTime.parse(json['expiresAt'] as String),
  multiple: json['multiple'] as bool,
  choices: (json['choices'] as List<dynamic>)
      .map((e) => NotePollChoicesItem.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$NotePollToJson(NotePoll instance) => <String, dynamic>{
  'expiresAt': ?instance.expiresAt?.toIso8601String(),
  'multiple': instance.multiple,
  'choices': instance.choices.map((e) => e.toJson()).toList(),
};

NoteChannel _$NoteChannelFromJson(Map<String, dynamic> json) => NoteChannel(
  id: json['id'] as String,
  name: json['name'] as String,
  color: json['color'] as String,
  isSensitive: json['isSensitive'] as bool,
  allowRenoteToExternal: json['allowRenoteToExternal'] as bool,
  userId: json['userId'] as String?,
);

Map<String, dynamic> _$NoteChannelToJson(NoteChannel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': instance.color,
      'isSensitive': instance.isSensitive,
      'allowRenoteToExternal': instance.allowRenoteToExternal,
      'userId': instance.userId,
    };

NoteDraftPoll _$NoteDraftPollFromJson(Map<String, dynamic> json) =>
    NoteDraftPoll(
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      expiredAfter: json['expiredAfter'] as num?,
      multiple: json['multiple'] as bool,
      choices: (json['choices'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$NoteDraftPollToJson(NoteDraftPoll instance) =>
    <String, dynamic>{
      'expiresAt': ?instance.expiresAt?.toIso8601String(),
      'expiredAfter': ?instance.expiredAfter,
      'multiple': instance.multiple,
      'choices': instance.choices,
    };

NoteDraftChannel _$NoteDraftChannelFromJson(Map<String, dynamic> json) =>
    NoteDraftChannel(
      id: json['id'] as String,
      name: json['name'] as String,
      color: json['color'] as String,
      isSensitive: json['isSensitive'] as bool,
      allowRenoteToExternal: json['allowRenoteToExternal'] as bool,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$NoteDraftChannelToJson(NoteDraftChannel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': instance.color,
      'isSensitive': instance.isSensitive,
      'allowRenoteToExternal': instance.allowRenoteToExternal,
      'userId': instance.userId,
    };

DriveFileProperties _$DriveFilePropertiesFromJson(Map<String, dynamic> json) =>
    DriveFileProperties(
      width: json['width'] as num?,
      height: json['height'] as num?,
      orientation: json['orientation'] as num?,
      avgColor: json['avgColor'] as String?,
    );

Map<String, dynamic> _$DriveFilePropertiesToJson(
  DriveFileProperties instance,
) => <String, dynamic>{
  'width': ?instance.width,
  'height': ?instance.height,
  'orientation': ?instance.orientation,
  'avgColor': ?instance.avgColor,
};

QueueMetricsMeta _$QueueMetricsMetaFromJson(Map<String, dynamic> json) =>
    QueueMetricsMeta(
      count: json['count'] as num,
      prevTS: json['prevTS'] as num,
      prevCount: json['prevCount'] as num,
    );

Map<String, dynamic> _$QueueMetricsMetaToJson(QueueMetricsMeta instance) =>
    <String, dynamic>{
      'count': instance.count,
      'prevTS': instance.prevTS,
      'prevCount': instance.prevCount,
    };

EmojiDetailedAdminRoleIdsThatCanBeUsedThisEmojiAsReactionItem
_$EmojiDetailedAdminRoleIdsThatCanBeUsedThisEmojiAsReactionItemFromJson(
  Map<String, dynamic> json,
) => EmojiDetailedAdminRoleIdsThatCanBeUsedThisEmojiAsReactionItem(
  id: json['id'] as String,
  name: json['name'] as String,
);

Map<String, dynamic>
_$EmojiDetailedAdminRoleIdsThatCanBeUsedThisEmojiAsReactionItemToJson(
  EmojiDetailedAdminRoleIdsThatCanBeUsedThisEmojiAsReactionItem instance,
) => <String, dynamic>{'id': instance.id, 'name': instance.name};

RolePolicy _$RolePolicyFromJson(Map<String, dynamic> json) => RolePolicy(
  value: json['value'],
  priority: (json['priority'] as num?)?.toInt(),
  useDefault: json['useDefault'] as bool?,
);

Map<String, dynamic> _$RolePolicyToJson(RolePolicy instance) =>
    <String, dynamic>{
      'value': ?instance.value,
      'priority': ?instance.priority,
      'useDefault': ?instance.useDefault,
    };

MetaAd _$MetaAdFromJson(Map<String, dynamic> json) => MetaAd(
  id: json['id'] as String,
  url: json['url'] as String,
  place: json['place'] as String,
  ratio: json['ratio'] as num,
  imageUrl: json['imageUrl'] as String,
  dayOfWeek: (json['dayOfWeek'] as num).toInt(),
  isSensitive: json['isSensitive'] as bool?,
);

Map<String, dynamic> _$MetaAdToJson(MetaAd instance) => <String, dynamic>{
  'id': instance.id,
  'url': instance.url,
  'place': instance.place,
  'ratio': instance.ratio,
  'imageUrl': instance.imageUrl,
  'dayOfWeek': instance.dayOfWeek,
  'isSensitive': ?instance.isSensitive,
};

MetaLiteSentryForFrontendOptions _$MetaLiteSentryForFrontendOptionsFromJson(
  Map<String, dynamic> json,
) => MetaLiteSentryForFrontendOptions(dsn: json['dsn'] as String);

Map<String, dynamic> _$MetaLiteSentryForFrontendOptionsToJson(
  MetaLiteSentryForFrontendOptions instance,
) => <String, dynamic>{'dsn': instance.dsn};

MetaLiteSentryForFrontend _$MetaLiteSentryForFrontendFromJson(
  Map<String, dynamic> json,
) => MetaLiteSentryForFrontend(
  options: MetaLiteSentryForFrontendOptions.fromJson(
    json['options'] as Map<String, dynamic>,
  ),
  vueIntegration: json['vueIntegration'] as Map<String, dynamic>?,
  browserTracingIntegration:
      json['browserTracingIntegration'] as Map<String, dynamic>?,
  replayIntegration: json['replayIntegration'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$MetaLiteSentryForFrontendToJson(
  MetaLiteSentryForFrontend instance,
) => <String, dynamic>{
  'options': instance.options.toJson(),
  'vueIntegration': ?instance.vueIntegration,
  'browserTracingIntegration': ?instance.browserTracingIntegration,
  'replayIntegration': ?instance.replayIntegration,
};

MetaFeatures _$MetaFeaturesFromJson(Map<String, dynamic> json) => MetaFeatures(
  registration: json['registration'] as bool,
  emailRequiredForSignup: json['emailRequiredForSignup'] as bool,
  localTimeline: json['localTimeline'] as bool,
  globalTimeline: json['globalTimeline'] as bool,
  hcaptcha: json['hcaptcha'] as bool,
  turnstile: json['turnstile'] as bool,
  recaptcha: json['recaptcha'] as bool,
  objectStorage: json['objectStorage'] as bool,
  serviceWorker: json['serviceWorker'] as bool,
  miauth: json['miauth'] as bool? ?? true,
);

Map<String, dynamic> _$MetaFeaturesToJson(MetaFeatures instance) =>
    <String, dynamic>{
      'registration': instance.registration,
      'emailRequiredForSignup': instance.emailRequiredForSignup,
      'localTimeline': instance.localTimeline,
      'globalTimeline': instance.globalTimeline,
      'hcaptcha': instance.hcaptcha,
      'turnstile': instance.turnstile,
      'recaptcha': instance.recaptcha,
      'objectStorage': instance.objectStorage,
      'serviceWorker': instance.serviceWorker,
      'miauth': instance.miauth,
    };

MetaDetailedAdsItem _$MetaDetailedAdsItemFromJson(Map<String, dynamic> json) =>
    MetaDetailedAdsItem(
      id: json['id'] as String,
      url: json['url'] as String,
      place: json['place'] as String,
      ratio: json['ratio'] as num,
      imageUrl: json['imageUrl'] as String,
      dayOfWeek: (json['dayOfWeek'] as num).toInt(),
      isSensitive: json['isSensitive'] as bool?,
    );

Map<String, dynamic> _$MetaDetailedAdsItemToJson(
  MetaDetailedAdsItem instance,
) => <String, dynamic>{
  'id': instance.id,
  'url': instance.url,
  'place': instance.place,
  'ratio': instance.ratio,
  'imageUrl': instance.imageUrl,
  'dayOfWeek': instance.dayOfWeek,
  'isSensitive': ?instance.isSensitive,
};

MetaDetailedSentryForFrontendOptions
_$MetaDetailedSentryForFrontendOptionsFromJson(Map<String, dynamic> json) =>
    MetaDetailedSentryForFrontendOptions(dsn: json['dsn'] as String);

Map<String, dynamic> _$MetaDetailedSentryForFrontendOptionsToJson(
  MetaDetailedSentryForFrontendOptions instance,
) => <String, dynamic>{'dsn': instance.dsn};

MetaDetailedSentryForFrontend _$MetaDetailedSentryForFrontendFromJson(
  Map<String, dynamic> json,
) => MetaDetailedSentryForFrontend(
  options: MetaDetailedSentryForFrontendOptions.fromJson(
    json['options'] as Map<String, dynamic>,
  ),
  vueIntegration: json['vueIntegration'] as Map<String, dynamic>?,
  browserTracingIntegration:
      json['browserTracingIntegration'] as Map<String, dynamic>?,
  replayIntegration: json['replayIntegration'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$MetaDetailedSentryForFrontendToJson(
  MetaDetailedSentryForFrontend instance,
) => <String, dynamic>{
  'options': instance.options.toJson(),
  'vueIntegration': ?instance.vueIntegration,
  'browserTracingIntegration': ?instance.browserTracingIntegration,
  'replayIntegration': ?instance.replayIntegration,
};

MetaDetailedFeatures _$MetaDetailedFeaturesFromJson(
  Map<String, dynamic> json,
) => MetaDetailedFeatures(
  registration: json['registration'] as bool,
  emailRequiredForSignup: json['emailRequiredForSignup'] as bool,
  localTimeline: json['localTimeline'] as bool,
  globalTimeline: json['globalTimeline'] as bool,
  hcaptcha: json['hcaptcha'] as bool,
  turnstile: json['turnstile'] as bool,
  recaptcha: json['recaptcha'] as bool,
  objectStorage: json['objectStorage'] as bool,
  serviceWorker: json['serviceWorker'] as bool,
  miauth: json['miauth'] as bool? ?? true,
);

Map<String, dynamic> _$MetaDetailedFeaturesToJson(
  MetaDetailedFeatures instance,
) => <String, dynamic>{
  'registration': instance.registration,
  'emailRequiredForSignup': instance.emailRequiredForSignup,
  'localTimeline': instance.localTimeline,
  'globalTimeline': instance.globalTimeline,
  'hcaptcha': instance.hcaptcha,
  'turnstile': instance.turnstile,
  'recaptcha': instance.recaptcha,
  'objectStorage': instance.objectStorage,
  'serviceWorker': instance.serviceWorker,
  'miauth': instance.miauth,
};

ChatMessageReactionsItem _$ChatMessageReactionsItemFromJson(
  Map<String, dynamic> json,
) => ChatMessageReactionsItem(
  reaction: json['reaction'] as String,
  user: UserLite.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ChatMessageReactionsItemToJson(
  ChatMessageReactionsItem instance,
) => <String, dynamic>{
  'reaction': instance.reaction,
  'user': instance.user.toJson(),
};

ChatMessageLiteReactionsItem _$ChatMessageLiteReactionsItemFromJson(
  Map<String, dynamic> json,
) => ChatMessageLiteReactionsItem(
  reaction: json['reaction'] as String,
  user: json['user'] == null
      ? null
      : UserLite.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ChatMessageLiteReactionsItemToJson(
  ChatMessageLiteReactionsItem instance,
) => <String, dynamic>{
  'reaction': instance.reaction,
  'user': ?instance.user?.toJson(),
};

ChatMessageLiteFor1on1ReactionsItem
_$ChatMessageLiteFor1on1ReactionsItemFromJson(Map<String, dynamic> json) =>
    ChatMessageLiteFor1on1ReactionsItem(reaction: json['reaction'] as String);

Map<String, dynamic> _$ChatMessageLiteFor1on1ReactionsItemToJson(
  ChatMessageLiteFor1on1ReactionsItem instance,
) => <String, dynamic>{'reaction': instance.reaction};

ChatMessageLiteForRoomReactionsItem
_$ChatMessageLiteForRoomReactionsItemFromJson(Map<String, dynamic> json) =>
    ChatMessageLiteForRoomReactionsItem(
      reaction: json['reaction'] as String,
      user: UserLite.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChatMessageLiteForRoomReactionsItemToJson(
  ChatMessageLiteForRoomReactionsItem instance,
) => <String, dynamic>{
  'reaction': instance.reaction,
  'user': instance.user.toJson(),
};

NotificationReactionGroupedReactionsItem
_$NotificationReactionGroupedReactionsItemFromJson(Map<String, dynamic> json) =>
    NotificationReactionGroupedReactionsItem(
      user: UserLite.fromJson(json['user'] as Map<String, dynamic>),
      reaction: json['reaction'] as String,
    );

Map<String, dynamic> _$NotificationReactionGroupedReactionsItemToJson(
  NotificationReactionGroupedReactionsItem instance,
) => <String, dynamic>{
  'user': instance.user.toJson(),
  'reaction': instance.reaction,
};

NotificationNote _$NotificationNoteFromJson(Map<String, dynamic> json) =>
    NotificationNote(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      type: json['type'] as String,
      user: UserLite.fromJson(json['user'] as Map<String, dynamic>),
      userId: json['userId'] as String,
      note: Note.fromJson(json['note'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NotificationNoteToJson(NotificationNote instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'type': instance.type,
      'user': instance.user.toJson(),
      'userId': instance.userId,
      'note': instance.note.toJson(),
    };

NotificationMention _$NotificationMentionFromJson(Map<String, dynamic> json) =>
    NotificationMention(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      type: json['type'] as String,
      user: UserLite.fromJson(json['user'] as Map<String, dynamic>),
      userId: json['userId'] as String,
      note: Note.fromJson(json['note'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NotificationMentionToJson(
  NotificationMention instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'type': instance.type,
  'user': instance.user.toJson(),
  'userId': instance.userId,
  'note': instance.note.toJson(),
};

NotificationReply _$NotificationReplyFromJson(Map<String, dynamic> json) =>
    NotificationReply(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      type: json['type'] as String,
      user: UserLite.fromJson(json['user'] as Map<String, dynamic>),
      userId: json['userId'] as String,
      note: Note.fromJson(json['note'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NotificationReplyToJson(NotificationReply instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'type': instance.type,
      'user': instance.user.toJson(),
      'userId': instance.userId,
      'note': instance.note.toJson(),
    };

NotificationRenote _$NotificationRenoteFromJson(Map<String, dynamic> json) =>
    NotificationRenote(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      type: json['type'] as String,
      user: UserLite.fromJson(json['user'] as Map<String, dynamic>),
      userId: json['userId'] as String,
      note: Note.fromJson(json['note'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NotificationRenoteToJson(NotificationRenote instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'type': instance.type,
      'user': instance.user.toJson(),
      'userId': instance.userId,
      'note': instance.note.toJson(),
    };

NotificationQuote _$NotificationQuoteFromJson(Map<String, dynamic> json) =>
    NotificationQuote(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      type: json['type'] as String,
      user: UserLite.fromJson(json['user'] as Map<String, dynamic>),
      userId: json['userId'] as String,
      note: Note.fromJson(json['note'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NotificationQuoteToJson(NotificationQuote instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'type': instance.type,
      'user': instance.user.toJson(),
      'userId': instance.userId,
      'note': instance.note.toJson(),
    };

NotificationReaction _$NotificationReactionFromJson(
  Map<String, dynamic> json,
) => NotificationReaction(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  type: json['type'] as String,
  user: UserLite.fromJson(json['user'] as Map<String, dynamic>),
  userId: json['userId'] as String,
  note: Note.fromJson(json['note'] as Map<String, dynamic>),
  reaction: json['reaction'] as String,
);

Map<String, dynamic> _$NotificationReactionToJson(
  NotificationReaction instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'type': instance.type,
  'user': instance.user.toJson(),
  'userId': instance.userId,
  'note': instance.note.toJson(),
  'reaction': instance.reaction,
};

NotificationPollEnded _$NotificationPollEndedFromJson(
  Map<String, dynamic> json,
) => NotificationPollEnded(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  type: json['type'] as String,
  user: UserLite.fromJson(json['user'] as Map<String, dynamic>),
  userId: json['userId'] as String,
  note: Note.fromJson(json['note'] as Map<String, dynamic>),
);

Map<String, dynamic> _$NotificationPollEndedToJson(
  NotificationPollEnded instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'type': instance.type,
  'user': instance.user.toJson(),
  'userId': instance.userId,
  'note': instance.note.toJson(),
};

NotificationScheduledNotePosted _$NotificationScheduledNotePostedFromJson(
  Map<String, dynamic> json,
) => NotificationScheduledNotePosted(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  type: json['type'] as String,
  note: Note.fromJson(json['note'] as Map<String, dynamic>),
);

Map<String, dynamic> _$NotificationScheduledNotePostedToJson(
  NotificationScheduledNotePosted instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'type': instance.type,
  'note': instance.note.toJson(),
};

NotificationScheduledNotePostFailed
_$NotificationScheduledNotePostFailedFromJson(Map<String, dynamic> json) =>
    NotificationScheduledNotePostFailed(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      type: json['type'] as String,
      noteDraft: NoteDraft.fromJson(json['noteDraft'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NotificationScheduledNotePostFailedToJson(
  NotificationScheduledNotePostFailed instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'type': instance.type,
  'noteDraft': instance.noteDraft.toJson(),
};

NotificationFollow _$NotificationFollowFromJson(Map<String, dynamic> json) =>
    NotificationFollow(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      type: json['type'] as String,
      user: UserLite.fromJson(json['user'] as Map<String, dynamic>),
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$NotificationFollowToJson(NotificationFollow instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'type': instance.type,
      'user': instance.user.toJson(),
      'userId': instance.userId,
    };

NotificationReceiveFollowRequest _$NotificationReceiveFollowRequestFromJson(
  Map<String, dynamic> json,
) => NotificationReceiveFollowRequest(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  type: json['type'] as String,
  user: UserLite.fromJson(json['user'] as Map<String, dynamic>),
  userId: json['userId'] as String,
);

Map<String, dynamic> _$NotificationReceiveFollowRequestToJson(
  NotificationReceiveFollowRequest instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'type': instance.type,
  'user': instance.user.toJson(),
  'userId': instance.userId,
};

NotificationFollowRequestAccepted _$NotificationFollowRequestAcceptedFromJson(
  Map<String, dynamic> json,
) => NotificationFollowRequestAccepted(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  type: json['type'] as String,
  user: UserLite.fromJson(json['user'] as Map<String, dynamic>),
  userId: json['userId'] as String,
  message: json['message'] as String?,
);

Map<String, dynamic> _$NotificationFollowRequestAcceptedToJson(
  NotificationFollowRequestAccepted instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'type': instance.type,
  'user': instance.user.toJson(),
  'userId': instance.userId,
  'message': instance.message,
};

NotificationRoleAssigned _$NotificationRoleAssignedFromJson(
  Map<String, dynamic> json,
) => NotificationRoleAssigned(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  type: json['type'] as String,
  role: Role.fromJson(json['role'] as Map<String, dynamic>),
);

Map<String, dynamic> _$NotificationRoleAssignedToJson(
  NotificationRoleAssigned instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'type': instance.type,
  'role': instance.role.toJson(),
};

NotificationChatRoomInvitationReceived
_$NotificationChatRoomInvitationReceivedFromJson(Map<String, dynamic> json) =>
    NotificationChatRoomInvitationReceived(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      type: json['type'] as String,
      invitation: ChatRoomInvitation.fromJson(
        json['invitation'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$NotificationChatRoomInvitationReceivedToJson(
  NotificationChatRoomInvitationReceived instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'type': instance.type,
  'invitation': instance.invitation.toJson(),
};

NotificationAchievementEarned _$NotificationAchievementEarnedFromJson(
  Map<String, dynamic> json,
) => NotificationAchievementEarned(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  type: json['type'] as String,
  achievement: $enumDecode(_$AchievementNameEnumMap, json['achievement']),
);

Map<String, dynamic> _$NotificationAchievementEarnedToJson(
  NotificationAchievementEarned instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'type': instance.type,
  'achievement': _$AchievementNameEnumMap[instance.achievement]!,
};

const _$AchievementNameEnumMap = {
  AchievementName.notes1: 'notes1',
  AchievementName.notes10: 'notes10',
  AchievementName.notes100: 'notes100',
  AchievementName.notes500: 'notes500',
  AchievementName.notes1000: 'notes1000',
  AchievementName.notes5000: 'notes5000',
  AchievementName.notes10000: 'notes10000',
  AchievementName.notes20000: 'notes20000',
  AchievementName.notes30000: 'notes30000',
  AchievementName.notes40000: 'notes40000',
  AchievementName.notes50000: 'notes50000',
  AchievementName.notes60000: 'notes60000',
  AchievementName.notes70000: 'notes70000',
  AchievementName.notes80000: 'notes80000',
  AchievementName.notes90000: 'notes90000',
  AchievementName.notes100000: 'notes100000',
  AchievementName.login3: 'login3',
  AchievementName.login7: 'login7',
  AchievementName.login15: 'login15',
  AchievementName.login30: 'login30',
  AchievementName.login60: 'login60',
  AchievementName.login100: 'login100',
  AchievementName.login200: 'login200',
  AchievementName.login300: 'login300',
  AchievementName.login400: 'login400',
  AchievementName.login500: 'login500',
  AchievementName.login600: 'login600',
  AchievementName.login700: 'login700',
  AchievementName.login800: 'login800',
  AchievementName.login900: 'login900',
  AchievementName.login1000: 'login1000',
  AchievementName.passedSinceAccountCreated1: 'passedSinceAccountCreated1',
  AchievementName.passedSinceAccountCreated2: 'passedSinceAccountCreated2',
  AchievementName.passedSinceAccountCreated3: 'passedSinceAccountCreated3',
  AchievementName.loggedInOnBirthday: 'loggedInOnBirthday',
  AchievementName.loggedInOnNewYearsDay: 'loggedInOnNewYearsDay',
  AchievementName.noteClipped1: 'noteClipped1',
  AchievementName.noteFavorited1: 'noteFavorited1',
  AchievementName.myNoteFavorited1: 'myNoteFavorited1',
  AchievementName.profileFilled: 'profileFilled',
  AchievementName.markedAsCat: 'markedAsCat',
  AchievementName.following1: 'following1',
  AchievementName.following10: 'following10',
  AchievementName.following50: 'following50',
  AchievementName.following100: 'following100',
  AchievementName.following300: 'following300',
  AchievementName.followers1: 'followers1',
  AchievementName.followers10: 'followers10',
  AchievementName.followers50: 'followers50',
  AchievementName.followers100: 'followers100',
  AchievementName.followers300: 'followers300',
  AchievementName.followers500: 'followers500',
  AchievementName.followers1000: 'followers1000',
  AchievementName.collectAchievements30: 'collectAchievements30',
  AchievementName.viewAchievements3min: 'viewAchievements3min',
  AchievementName.iLoveMisskey: 'iLoveMisskey',
  AchievementName.foundTreasure: 'foundTreasure',
  AchievementName.client30min: 'client30min',
  AchievementName.client60min: 'client60min',
  AchievementName.noteDeletedWithin1min: 'noteDeletedWithin1min',
  AchievementName.postedAtLateNight: 'postedAtLateNight',
  AchievementName.postedAt0min0sec: 'postedAt0min0sec',
  AchievementName.selfQuote: 'selfQuote',
  AchievementName.htl20npm: 'htl20npm',
  AchievementName.viewInstanceChart: 'viewInstanceChart',
  AchievementName.outputHelloWorldOnScratchpad: 'outputHelloWorldOnScratchpad',
  AchievementName.open3windows: 'open3windows',
  AchievementName.driveFolderCircularReference: 'driveFolderCircularReference',
  AchievementName.reactWithoutRead: 'reactWithoutRead',
  AchievementName.clickedClickHere: 'clickedClickHere',
  AchievementName.justPlainLucky: 'justPlainLucky',
  AchievementName.setNameToSyuilo: 'setNameToSyuilo',
  AchievementName.cookieClicked: 'cookieClicked',
  AchievementName.brainDiver: 'brainDiver',
  AchievementName.smashTestNotificationButton: 'smashTestNotificationButton',
  AchievementName.tutorialCompleted: 'tutorialCompleted',
  AchievementName.bubbleGameExplodingHead: 'bubbleGameExplodingHead',
  AchievementName.bubbleGameDoubleExplodingHead:
      'bubbleGameDoubleExplodingHead',
};

NotificationExportCompleted _$NotificationExportCompletedFromJson(
  Map<String, dynamic> json,
) => NotificationExportCompleted(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  type: json['type'] as String,
  exportedEntity: $enumDecode(
    _$NotificationExportCompletedExportedEntityEnumMap,
    json['exportedEntity'],
  ),
  fileId: json['fileId'] as String,
);

Map<String, dynamic> _$NotificationExportCompletedToJson(
  NotificationExportCompleted instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'type': instance.type,
  'exportedEntity':
      _$NotificationExportCompletedExportedEntityEnumMap[instance
          .exportedEntity]!,
  'fileId': instance.fileId,
};

const _$NotificationExportCompletedExportedEntityEnumMap = {
  NotificationExportCompletedExportedEntity.antenna: 'antenna',
  NotificationExportCompletedExportedEntity.blocking: 'blocking',
  NotificationExportCompletedExportedEntity.clip: 'clip',
  NotificationExportCompletedExportedEntity.customEmoji: 'customEmoji',
  NotificationExportCompletedExportedEntity.favorite: 'favorite',
  NotificationExportCompletedExportedEntity.following: 'following',
  NotificationExportCompletedExportedEntity.muting: 'muting',
  NotificationExportCompletedExportedEntity.note: 'note',
  NotificationExportCompletedExportedEntity.userList: 'userList',
};

NotificationLogin _$NotificationLoginFromJson(Map<String, dynamic> json) =>
    NotificationLogin(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      type: json['type'] as String,
    );

Map<String, dynamic> _$NotificationLoginToJson(NotificationLogin instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'type': instance.type,
    };

NotificationCreateToken _$NotificationCreateTokenFromJson(
  Map<String, dynamic> json,
) => NotificationCreateToken(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  type: json['type'] as String,
);

Map<String, dynamic> _$NotificationCreateTokenToJson(
  NotificationCreateToken instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'type': instance.type,
};

NotificationApp _$NotificationAppFromJson(Map<String, dynamic> json) =>
    NotificationApp(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      type: json['type'] as String,
      body: json['body'] as String,
      header: json['header'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$NotificationAppToJson(NotificationApp instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'type': instance.type,
      'body': instance.body,
      'header': instance.header,
      'icon': instance.icon,
    };

NotificationReactionGrouped _$NotificationReactionGroupedFromJson(
  Map<String, dynamic> json,
) => NotificationReactionGrouped(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  type: json['type'] as String,
  note: Note.fromJson(json['note'] as Map<String, dynamic>),
  reactions: (json['reactions'] as List<dynamic>)
      .map(
        (e) => NotificationReactionGroupedReactionsItem.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
);

Map<String, dynamic> _$NotificationReactionGroupedToJson(
  NotificationReactionGrouped instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'type': instance.type,
  'note': instance.note.toJson(),
  'reactions': instance.reactions.map((e) => e.toJson()).toList(),
};

NotificationRenoteGrouped _$NotificationRenoteGroupedFromJson(
  Map<String, dynamic> json,
) => NotificationRenoteGrouped(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  type: json['type'] as String,
  note: Note.fromJson(json['note'] as Map<String, dynamic>),
  users: (json['users'] as List<dynamic>)
      .map((e) => UserLite.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$NotificationRenoteGroupedToJson(
  NotificationRenoteGrouped instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'type': instance.type,
  'note': instance.note.toJson(),
  'users': instance.users.map((e) => e.toJson()).toList(),
};

NotificationTest _$NotificationTestFromJson(Map<String, dynamic> json) =>
    NotificationTest(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      type: json['type'] as String,
    );

Map<String, dynamic> _$NotificationTestToJson(NotificationTest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'type': instance.type,
    };

PageBlockText _$PageBlockTextFromJson(Map<String, dynamic> json) =>
    PageBlockText(
      id: json['id'] as String,
      type: json['type'] as String,
      text: json['text'] as String,
    );

Map<String, dynamic> _$PageBlockTextToJson(PageBlockText instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'text': instance.text,
    };

PageBlockSection _$PageBlockSectionFromJson(Map<String, dynamic> json) =>
    PageBlockSection(
      id: json['id'] as String,
      type: json['type'] as String,
      title: json['title'] as String,
      children: (json['children'] as List<dynamic>)
          .map((e) => PageBlock.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PageBlockSectionToJson(PageBlockSection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'children': instance.children.map((e) => e.toJson()).toList(),
    };

PageBlockImage _$PageBlockImageFromJson(Map<String, dynamic> json) =>
    PageBlockImage(
      id: json['id'] as String,
      type: json['type'] as String,
      fileId: json['fileId'] as String?,
    );

Map<String, dynamic> _$PageBlockImageToJson(PageBlockImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'fileId': instance.fileId,
    };

PageBlockNote _$PageBlockNoteFromJson(Map<String, dynamic> json) =>
    PageBlockNote(
      id: json['id'] as String,
      type: json['type'] as String,
      detailed: json['detailed'] as bool,
      note: json['note'] as String?,
    );

Map<String, dynamic> _$PageBlockNoteToJson(PageBlockNote instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'detailed': instance.detailed,
      'note': instance.note,
    };

_UserLite _$UserLiteFromJson(Map<String, dynamic> json) => _UserLite(
  id: json['id'] as String,
  name: json['name'] as String?,
  username: json['username'] as String,
  host: json['host'] as String?,
  avatarUrl: json['avatarUrl'] as String,
  avatarBlurhash: json['avatarBlurhash'] as String?,
  avatarDecorations: (json['avatarDecorations'] as List<dynamic>)
      .map((e) => UserAvatarDecoration.fromJson(e as Map<String, dynamic>))
      .toList(),
  isBot: json['isBot'] as bool?,
  isCat: json['isCat'] as bool?,
  requireSigninToViewContents: json['requireSigninToViewContents'] as bool?,
  makeNotesFollowersOnlyBefore: json['makeNotesFollowersOnlyBefore'] as num?,
  makeNotesHiddenBefore: json['makeNotesHiddenBefore'] as num?,
  instance: json['instance'] == null
      ? null
      : UserInstance.fromJson(json['instance'] as Map<String, dynamic>),
  emojis: Map<String, String>.from(json['emojis'] as Map),
  onlineStatus: $enumDecode(_$OnlineStatusEnumMap, json['onlineStatus']),
  badgeRoles: (json['badgeRoles'] as List<dynamic>?)
      ?.map((e) => UserBadgeRole.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$UserLiteToJson(_UserLite instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'username': instance.username,
  'host': instance.host,
  'avatarUrl': instance.avatarUrl,
  'avatarBlurhash': instance.avatarBlurhash,
  'avatarDecorations': instance.avatarDecorations,
  'isBot': instance.isBot,
  'isCat': instance.isCat,
  'requireSigninToViewContents': instance.requireSigninToViewContents,
  'makeNotesFollowersOnlyBefore': instance.makeNotesFollowersOnlyBefore,
  'makeNotesHiddenBefore': instance.makeNotesHiddenBefore,
  'instance': instance.instance,
  'emojis': instance.emojis,
  'onlineStatus': _$OnlineStatusEnumMap[instance.onlineStatus]!,
  'badgeRoles': instance.badgeRoles,
};

const _$OnlineStatusEnumMap = {
  OnlineStatus.unknown: 'unknown',
  OnlineStatus.online: 'online',
  OnlineStatus.active: 'active',
  OnlineStatus.offline: 'offline',
};

_UserDetailedNotMeOnly _$UserDetailedNotMeOnlyFromJson(
  Map<String, dynamic> json,
) => _UserDetailedNotMeOnly(
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
      .map((e) => UserField.fromJson(e as Map<String, dynamic>))
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
  twoFactorEnabled: json['twoFactorEnabled'] as bool?,
  usePasswordLessLogin: json['usePasswordLessLogin'] as bool?,
  securityKeys: json['securityKeys'] as bool?,
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
);

Map<String, dynamic> _$UserDetailedNotMeOnlyToJson(
  _UserDetailedNotMeOnly instance,
) => <String, dynamic>{
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
  'fields': instance.fields,
  'verifiedLinks': instance.verifiedLinks,
  'followersCount': instance.followersCount,
  'followingCount': instance.followingCount,
  'notesCount': instance.notesCount,
  'pinnedNoteIds': instance.pinnedNoteIds,
  'pinnedNotes': instance.pinnedNotes,
  'pinnedPageId': instance.pinnedPageId,
  'pinnedPage': instance.pinnedPage,
  'publicReactions': instance.publicReactions,
  'followingVisibility':
      _$FollowingVisibilityEnumMap[instance.followingVisibility]!,
  'followersVisibility':
      _$FollowingVisibilityEnumMap[instance.followersVisibility]!,
  'chatScope': _$ChatScopeEnumMap[instance.chatScope]!,
  'canChat': instance.canChat,
  'roles': instance.roles,
  'followedMessage': instance.followedMessage,
  'memo': instance.memo,
  'moderationNote': instance.moderationNote,
  'twoFactorEnabled': instance.twoFactorEnabled,
  'usePasswordLessLogin': instance.usePasswordLessLogin,
  'securityKeys': instance.securityKeys,
  'isFollowing': instance.isFollowing,
  'isFollowed': instance.isFollowed,
  'hasPendingFollowRequestFromYou': instance.hasPendingFollowRequestFromYou,
  'hasPendingFollowRequestToYou': instance.hasPendingFollowRequestToYou,
  'isBlocking': instance.isBlocking,
  'isBlocked': instance.isBlocked,
  'isMuted': instance.isMuted,
  'isRenoteMuted': instance.isRenoteMuted,
  'notify': _$UserNotifyEnumMap[instance.notify],
  'withReplies': instance.withReplies,
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

_MeDetailedOnly _$MeDetailedOnlyFromJson(Map<String, dynamic> json) =>
    _MeDetailedOnly(
      avatarId: json['avatarId'] as String?,
      bannerId: json['bannerId'] as String?,
      followedMessage: json['followedMessage'] as String?,
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
          MeDetailedOnlyNotificationRecieveConfig.fromJson(
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
      twoFactorEnabled: json['twoFactorEnabled'] as bool,
      usePasswordLessLogin: json['usePasswordLessLogin'] as bool,
      securityKeys: json['securityKeys'] as bool,
      email: json['email'] as String?,
      emailVerified: json['emailVerified'] as bool?,
      securityKeysList: (json['securityKeysList'] as List<dynamic>?)
          ?.map((e) => SecurityKey.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MeDetailedOnlyToJson(
  _MeDetailedOnly instance,
) => <String, dynamic>{
  'avatarId': instance.avatarId,
  'bannerId': instance.bannerId,
  'followedMessage': instance.followedMessage,
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
  'unreadAnnouncements': instance.unreadAnnouncements,
  'hasUnreadAntenna': instance.hasUnreadAntenna,
  'hasUnreadChannel': instance.hasUnreadChannel,
  'hasUnreadChatMessages': instance.hasUnreadChatMessages,
  'hasUnreadNotification': instance.hasUnreadNotification,
  'hasPendingReceivedFollowRequest': instance.hasPendingReceivedFollowRequest,
  'unreadNotificationsCount': instance.unreadNotificationsCount,
  'mutedWords': instance.mutedWords,
  'hardMutedWords': instance.hardMutedWords,
  'mutedInstances': instance.mutedInstances,
  'notificationRecieveConfig': instance.notificationRecieveConfig,
  'emailNotificationTypes': instance.emailNotificationTypes,
  'achievements': instance.achievements,
  'loggedInDays': instance.loggedInDays,
  'policies': instance.policies,
  'twoFactorEnabled': instance.twoFactorEnabled,
  'usePasswordLessLogin': instance.usePasswordLessLogin,
  'securityKeys': instance.securityKeys,
  'email': instance.email,
  'emailVerified': instance.emailVerified,
  'securityKeysList': instance.securityKeysList,
};

const _$TwoFactorBackupCodesStockEnumMap = {
  TwoFactorBackupCodesStock.full: 'full',
  TwoFactorBackupCodesStock.partial: 'partial',
  TwoFactorBackupCodesStock.none: 'none',
};

_UserDetailedNotMe _$UserDetailedNotMeFromJson(
  Map<String, dynamic> json,
) => _UserDetailedNotMe(
  id: json['id'] as String,
  name: json['name'] as String?,
  username: json['username'] as String,
  host: json['host'] as String?,
  avatarUrl: json['avatarUrl'] as String,
  avatarBlurhash: json['avatarBlurhash'] as String?,
  avatarDecorations: (json['avatarDecorations'] as List<dynamic>)
      .map(
        (e) => UserDetailedNotMeAvatarDecorationsItem.fromJson(
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
      : UserDetailedNotMeInstance.fromJson(
          json['instance'] as Map<String, dynamic>,
        ),
  emojis: Map<String, String>.from(json['emojis'] as Map),
  onlineStatus: $enumDecode(_$OnlineStatusEnumMap, json['onlineStatus']),
  badgeRoles: (json['badgeRoles'] as List<dynamic>?)
      ?.map(
        (e) =>
            UserDetailedNotMeBadgeRolesItem.fromJson(e as Map<String, dynamic>),
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
        (e) => UserDetailedNotMeFieldsItem.fromJson(e as Map<String, dynamic>),
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
  twoFactorEnabled: json['twoFactorEnabled'] as bool?,
  usePasswordLessLogin: json['usePasswordLessLogin'] as bool?,
  securityKeys: json['securityKeys'] as bool?,
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
);

Map<String, dynamic> _$UserDetailedNotMeToJson(_UserDetailedNotMe instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'host': instance.host,
      'avatarUrl': instance.avatarUrl,
      'avatarBlurhash': instance.avatarBlurhash,
      'avatarDecorations': instance.avatarDecorations,
      'isBot': instance.isBot,
      'isCat': instance.isCat,
      'requireSigninToViewContents': instance.requireSigninToViewContents,
      'makeNotesFollowersOnlyBefore': instance.makeNotesFollowersOnlyBefore,
      'makeNotesHiddenBefore': instance.makeNotesHiddenBefore,
      'instance': instance.instance,
      'emojis': instance.emojis,
      'onlineStatus': _$OnlineStatusEnumMap[instance.onlineStatus]!,
      'badgeRoles': instance.badgeRoles,
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
      'fields': instance.fields,
      'verifiedLinks': instance.verifiedLinks,
      'followersCount': instance.followersCount,
      'followingCount': instance.followingCount,
      'notesCount': instance.notesCount,
      'pinnedNoteIds': instance.pinnedNoteIds,
      'pinnedNotes': instance.pinnedNotes,
      'pinnedPageId': instance.pinnedPageId,
      'pinnedPage': instance.pinnedPage,
      'publicReactions': instance.publicReactions,
      'followingVisibility':
          _$FollowingVisibilityEnumMap[instance.followingVisibility]!,
      'followersVisibility':
          _$FollowingVisibilityEnumMap[instance.followersVisibility]!,
      'chatScope': _$ChatScopeEnumMap[instance.chatScope]!,
      'canChat': instance.canChat,
      'roles': instance.roles,
      'followedMessage': instance.followedMessage,
      'memo': instance.memo,
      'moderationNote': instance.moderationNote,
      'twoFactorEnabled': instance.twoFactorEnabled,
      'usePasswordLessLogin': instance.usePasswordLessLogin,
      'securityKeys': instance.securityKeys,
      'isFollowing': instance.isFollowing,
      'isFollowed': instance.isFollowed,
      'hasPendingFollowRequestFromYou': instance.hasPendingFollowRequestFromYou,
      'hasPendingFollowRequestToYou': instance.hasPendingFollowRequestToYou,
      'isBlocking': instance.isBlocking,
      'isBlocked': instance.isBlocked,
      'isMuted': instance.isMuted,
      'isRenoteMuted': instance.isRenoteMuted,
      'notify': _$UserNotifyEnumMap[instance.notify],
      'withReplies': instance.withReplies,
    };

_MeDetailed _$MeDetailedFromJson(Map<String, dynamic> json) => _MeDetailed(
  id: json['id'] as String,
  name: json['name'] as String?,
  username: json['username'] as String,
  host: json['host'] as String?,
  avatarUrl: json['avatarUrl'] as String,
  avatarBlurhash: json['avatarBlurhash'] as String?,
  avatarDecorations: (json['avatarDecorations'] as List<dynamic>)
      .map(
        (e) =>
            MeDetailedAvatarDecorationsItem.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  isBot: json['isBot'] as bool?,
  isCat: json['isCat'] as bool?,
  requireSigninToViewContents: json['requireSigninToViewContents'] as bool?,
  makeNotesFollowersOnlyBefore: json['makeNotesFollowersOnlyBefore'] as num?,
  makeNotesHiddenBefore: json['makeNotesHiddenBefore'] as num?,
  instance: json['instance'] == null
      ? null
      : MeDetailedInstance.fromJson(json['instance'] as Map<String, dynamic>),
  emojis: Map<String, String>.from(json['emojis'] as Map),
  onlineStatus: $enumDecode(_$OnlineStatusEnumMap, json['onlineStatus']),
  badgeRoles: (json['badgeRoles'] as List<dynamic>?)
      ?.map((e) => MeDetailedBadgeRolesItem.fromJson(e as Map<String, dynamic>))
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
      .map((e) => MeDetailedFieldsItem.fromJson(e as Map<String, dynamic>))
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
  notificationRecieveConfig: MeDetailedNotificationRecieveConfig.fromJson(
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
        (e) =>
            MeDetailedSecurityKeysListItem.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$MeDetailedToJson(
  _MeDetailed instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'username': instance.username,
  'host': instance.host,
  'avatarUrl': instance.avatarUrl,
  'avatarBlurhash': instance.avatarBlurhash,
  'avatarDecorations': instance.avatarDecorations,
  'isBot': instance.isBot,
  'isCat': instance.isCat,
  'requireSigninToViewContents': instance.requireSigninToViewContents,
  'makeNotesFollowersOnlyBefore': instance.makeNotesFollowersOnlyBefore,
  'makeNotesHiddenBefore': instance.makeNotesHiddenBefore,
  'instance': instance.instance,
  'emojis': instance.emojis,
  'onlineStatus': _$OnlineStatusEnumMap[instance.onlineStatus]!,
  'badgeRoles': instance.badgeRoles,
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
  'fields': instance.fields,
  'verifiedLinks': instance.verifiedLinks,
  'followersCount': instance.followersCount,
  'followingCount': instance.followingCount,
  'notesCount': instance.notesCount,
  'pinnedNoteIds': instance.pinnedNoteIds,
  'pinnedNotes': instance.pinnedNotes,
  'pinnedPageId': instance.pinnedPageId,
  'pinnedPage': instance.pinnedPage,
  'publicReactions': instance.publicReactions,
  'followingVisibility':
      _$FollowingVisibilityEnumMap[instance.followingVisibility]!,
  'followersVisibility':
      _$FollowingVisibilityEnumMap[instance.followersVisibility]!,
  'chatScope': _$ChatScopeEnumMap[instance.chatScope]!,
  'canChat': instance.canChat,
  'roles': instance.roles,
  'followedMessage': instance.followedMessage,
  'memo': instance.memo,
  'moderationNote': instance.moderationNote,
  'twoFactorEnabled': instance.twoFactorEnabled,
  'usePasswordLessLogin': instance.usePasswordLessLogin,
  'securityKeys': instance.securityKeys,
  'isFollowing': instance.isFollowing,
  'isFollowed': instance.isFollowed,
  'hasPendingFollowRequestFromYou': instance.hasPendingFollowRequestFromYou,
  'hasPendingFollowRequestToYou': instance.hasPendingFollowRequestToYou,
  'isBlocking': instance.isBlocking,
  'isBlocked': instance.isBlocked,
  'isMuted': instance.isMuted,
  'isRenoteMuted': instance.isRenoteMuted,
  'notify': _$UserNotifyEnumMap[instance.notify],
  'withReplies': instance.withReplies,
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
  'unreadAnnouncements': instance.unreadAnnouncements,
  'hasUnreadAntenna': instance.hasUnreadAntenna,
  'hasUnreadChannel': instance.hasUnreadChannel,
  'hasUnreadChatMessages': instance.hasUnreadChatMessages,
  'hasUnreadNotification': instance.hasUnreadNotification,
  'hasPendingReceivedFollowRequest': instance.hasPendingReceivedFollowRequest,
  'unreadNotificationsCount': instance.unreadNotificationsCount,
  'mutedWords': instance.mutedWords,
  'hardMutedWords': instance.hardMutedWords,
  'mutedInstances': instance.mutedInstances,
  'notificationRecieveConfig': instance.notificationRecieveConfig,
  'emailNotificationTypes': instance.emailNotificationTypes,
  'achievements': instance.achievements,
  'loggedInDays': instance.loggedInDays,
  'policies': instance.policies,
  'email': instance.email,
  'emailVerified': instance.emailVerified,
  'securityKeysList': instance.securityKeysList,
};

_UserList _$UserListFromJson(Map<String, dynamic> json) => _UserList(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  name: json['name'] as String,
  userIds: (json['userIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  isPublic: json['isPublic'] as bool,
);

Map<String, dynamic> _$UserListToJson(_UserList instance) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'name': instance.name,
  'userIds': instance.userIds,
  'isPublic': instance.isPublic,
};

_Achievement _$AchievementFromJson(Map<String, dynamic> json) => _Achievement(
  name: $enumDecode(_$AchievementNameEnumMap, json['name']),
  unlockedAt: json['unlockedAt'] as num,
);

Map<String, dynamic> _$AchievementToJson(_Achievement instance) =>
    <String, dynamic>{
      'name': _$AchievementNameEnumMap[instance.name]!,
      'unlockedAt': instance.unlockedAt,
    };

_Ad _$AdFromJson(Map<String, dynamic> json) => _Ad(
  id: json['id'] as String,
  expiresAt: DateTime.parse(json['expiresAt'] as String),
  startsAt: DateTime.parse(json['startsAt'] as String),
  place: json['place'] as String,
  priority: json['priority'] as String,
  ratio: json['ratio'] as num,
  url: json['url'] as String,
  imageUrl: json['imageUrl'] as String,
  memo: json['memo'] as String,
  dayOfWeek: (json['dayOfWeek'] as num).toInt(),
  isSensitive: json['isSensitive'] as bool,
);

Map<String, dynamic> _$AdToJson(_Ad instance) => <String, dynamic>{
  'id': instance.id,
  'expiresAt': instance.expiresAt.toIso8601String(),
  'startsAt': instance.startsAt.toIso8601String(),
  'place': instance.place,
  'priority': instance.priority,
  'ratio': instance.ratio,
  'url': instance.url,
  'imageUrl': instance.imageUrl,
  'memo': instance.memo,
  'dayOfWeek': instance.dayOfWeek,
  'isSensitive': instance.isSensitive,
};

_Announcement _$AnnouncementFromJson(Map<String, dynamic> json) =>
    _Announcement(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      text: json['text'] as String,
      title: json['title'] as String,
      imageUrl: json['imageUrl'] as String?,
      icon: $enumDecode(_$AnnouncementIconEnumMap, json['icon']),
      display: $enumDecode(_$AnnouncementDisplayEnumMap, json['display']),
      needConfirmationToRead: json['needConfirmationToRead'] as bool,
      silence: json['silence'] as bool,
      forYou: json['forYou'] as bool,
      isRead: json['isRead'] as bool?,
    );

Map<String, dynamic> _$AnnouncementToJson(_Announcement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'text': instance.text,
      'title': instance.title,
      'imageUrl': instance.imageUrl,
      'icon': _$AnnouncementIconEnumMap[instance.icon]!,
      'display': _$AnnouncementDisplayEnumMap[instance.display]!,
      'needConfirmationToRead': instance.needConfirmationToRead,
      'silence': instance.silence,
      'forYou': instance.forYou,
      'isRead': instance.isRead,
    };

const _$AnnouncementIconEnumMap = {
  AnnouncementIcon.info: 'info',
  AnnouncementIcon.warning: 'warning',
  AnnouncementIcon.error: 'error',
  AnnouncementIcon.success: 'success',
};

const _$AnnouncementDisplayEnumMap = {
  AnnouncementDisplay.dialog: 'dialog',
  AnnouncementDisplay.normal: 'normal',
  AnnouncementDisplay.banner: 'banner',
};

_App _$AppFromJson(Map<String, dynamic> json) => _App(
  id: json['id'] as String,
  name: json['name'] as String,
  callbackUrl: json['callbackUrl'] as String?,
  permission: (json['permission'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  secret: json['secret'] as String?,
  isAuthorized: json['isAuthorized'] as bool?,
);

Map<String, dynamic> _$AppToJson(_App instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'callbackUrl': instance.callbackUrl,
  'permission': instance.permission,
  'secret': instance.secret,
  'isAuthorized': instance.isAuthorized,
};

_Note _$NoteFromJson(Map<String, dynamic> json) => _Note(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  deletedAt: json['deletedAt'] == null
      ? null
      : DateTime.parse(json['deletedAt'] as String),
  text: json['text'] as String?,
  cw: json['cw'] as String?,
  userId: json['userId'] as String,
  user: UserLite.fromJson(json['user'] as Map<String, dynamic>),
  replyId: json['replyId'] as String?,
  renoteId: json['renoteId'] as String?,
  reply: json['reply'] == null
      ? null
      : Note.fromJson(json['reply'] as Map<String, dynamic>),
  renote: json['renote'] == null
      ? null
      : Note.fromJson(json['renote'] as Map<String, dynamic>),
  isHidden: json['isHidden'] as bool?,
  visibility: $enumDecode(_$NoteVisibilityEnumMap, json['visibility']),
  mentions: (json['mentions'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  visibleUserIds: (json['visibleUserIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  fileIds: (json['fileIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  files: (json['files'] as List<dynamic>?)
      ?.map((e) => DriveFile.fromJson(e as Map<String, dynamic>))
      .toList(),
  tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
  poll: json['poll'] == null
      ? null
      : NotePoll.fromJson(json['poll'] as Map<String, dynamic>),
  emojis: (json['emojis'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, e as String),
  ),
  channelId: json['channelId'] as String?,
  channel: json['channel'] == null
      ? null
      : NoteChannel.fromJson(json['channel'] as Map<String, dynamic>),
  localOnly: json['localOnly'] as bool?,
  reactionAcceptance: $enumDecodeNullable(
    _$NoteReactionAcceptanceEnumMap,
    json['reactionAcceptance'],
  ),
  reactionEmojis: Map<String, String>.from(json['reactionEmojis'] as Map),
  reactions: Map<String, num>.from(json['reactions'] as Map),
  reactionCount: json['reactionCount'] as num,
  renoteCount: json['renoteCount'] as num,
  repliesCount: json['repliesCount'] as num,
  uri: json['uri'] as String?,
  url: json['url'] as String?,
  reactionAndUserPairCache: (json['reactionAndUserPairCache'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  clippedCount: json['clippedCount'] as num?,
  hasPoll: json['hasPoll'] as bool?,
  myReaction: json['myReaction'] as String?,
);

Map<String, dynamic> _$NoteToJson(_Note instance) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'deletedAt': instance.deletedAt?.toIso8601String(),
  'text': instance.text,
  'cw': instance.cw,
  'userId': instance.userId,
  'user': instance.user,
  'replyId': instance.replyId,
  'renoteId': instance.renoteId,
  'reply': instance.reply,
  'renote': instance.renote,
  'isHidden': instance.isHidden,
  'visibility': _$NoteVisibilityEnumMap[instance.visibility]!,
  'mentions': instance.mentions,
  'visibleUserIds': instance.visibleUserIds,
  'fileIds': instance.fileIds,
  'files': instance.files,
  'tags': instance.tags,
  'poll': instance.poll,
  'emojis': instance.emojis,
  'channelId': instance.channelId,
  'channel': instance.channel,
  'localOnly': instance.localOnly,
  'reactionAcceptance':
      _$NoteReactionAcceptanceEnumMap[instance.reactionAcceptance],
  'reactionEmojis': instance.reactionEmojis,
  'reactions': instance.reactions,
  'reactionCount': instance.reactionCount,
  'renoteCount': instance.renoteCount,
  'repliesCount': instance.repliesCount,
  'uri': instance.uri,
  'url': instance.url,
  'reactionAndUserPairCache': instance.reactionAndUserPairCache,
  'clippedCount': instance.clippedCount,
  'hasPoll': instance.hasPoll,
  'myReaction': instance.myReaction,
};

const _$NoteVisibilityEnumMap = {
  NoteVisibility.public: 'public',
  NoteVisibility.home: 'home',
  NoteVisibility.followers: 'followers',
  NoteVisibility.specified: 'specified',
};

const _$NoteReactionAcceptanceEnumMap = {
  NoteReactionAcceptance.likeOnly: 'likeOnly',
  NoteReactionAcceptance.likeOnlyForRemote: 'likeOnlyForRemote',
  NoteReactionAcceptance.nonSensitiveOnly: 'nonSensitiveOnly',
  NoteReactionAcceptance.nonSensitiveOnlyForLocalLikeOnlyForRemote:
      'nonSensitiveOnlyForLocalLikeOnlyForRemote',
};

_NoteDraft _$NoteDraftFromJson(Map<String, dynamic> json) => _NoteDraft(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  text: json['text'] as String?,
  cw: json['cw'] as String?,
  userId: json['userId'] as String,
  user: UserLite.fromJson(json['user'] as Map<String, dynamic>),
  replyId: json['replyId'] as String?,
  renoteId: json['renoteId'] as String?,
  reply: json['reply'] == null
      ? null
      : Note.fromJson(json['reply'] as Map<String, dynamic>),
  renote: json['renote'] == null
      ? null
      : Note.fromJson(json['renote'] as Map<String, dynamic>),
  visibility: $enumDecode(_$NoteDraftVisibilityEnumMap, json['visibility']),
  visibleUserIds: (json['visibleUserIds'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  fileIds: (json['fileIds'] as List<dynamic>).map((e) => e as String).toList(),
  files: (json['files'] as List<dynamic>?)
      ?.map((e) => DriveFile.fromJson(e as Map<String, dynamic>))
      .toList(),
  hashtag: json['hashtag'] as String?,
  poll: json['poll'] == null
      ? null
      : NoteDraftPoll.fromJson(json['poll'] as Map<String, dynamic>),
  channelId: json['channelId'] as String?,
  channel: json['channel'] == null
      ? null
      : NoteDraftChannel.fromJson(json['channel'] as Map<String, dynamic>),
  localOnly: json['localOnly'] as bool,
  reactionAcceptance: $enumDecodeNullable(
    _$NoteDraftReactionAcceptanceEnumMap,
    json['reactionAcceptance'],
  ),
  scheduledAt: json['scheduledAt'] as num?,
  isActuallyScheduled: json['isActuallyScheduled'] as bool,
);

Map<String, dynamic> _$NoteDraftToJson(_NoteDraft instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'text': instance.text,
      'cw': instance.cw,
      'userId': instance.userId,
      'user': instance.user,
      'replyId': instance.replyId,
      'renoteId': instance.renoteId,
      'reply': instance.reply,
      'renote': instance.renote,
      'visibility': _$NoteDraftVisibilityEnumMap[instance.visibility]!,
      'visibleUserIds': instance.visibleUserIds,
      'fileIds': instance.fileIds,
      'files': instance.files,
      'hashtag': instance.hashtag,
      'poll': instance.poll,
      'channelId': instance.channelId,
      'channel': instance.channel,
      'localOnly': instance.localOnly,
      'reactionAcceptance':
          _$NoteDraftReactionAcceptanceEnumMap[instance.reactionAcceptance],
      'scheduledAt': instance.scheduledAt,
      'isActuallyScheduled': instance.isActuallyScheduled,
    };

const _$NoteDraftVisibilityEnumMap = {
  NoteDraftVisibility.public: 'public',
  NoteDraftVisibility.home: 'home',
  NoteDraftVisibility.followers: 'followers',
  NoteDraftVisibility.specified: 'specified',
};

const _$NoteDraftReactionAcceptanceEnumMap = {
  NoteDraftReactionAcceptance.likeOnly: 'likeOnly',
  NoteDraftReactionAcceptance.likeOnlyForRemote: 'likeOnlyForRemote',
  NoteDraftReactionAcceptance.nonSensitiveOnly: 'nonSensitiveOnly',
  NoteDraftReactionAcceptance.nonSensitiveOnlyForLocalLikeOnlyForRemote:
      'nonSensitiveOnlyForLocalLikeOnlyForRemote',
};

_NoteReaction _$NoteReactionFromJson(Map<String, dynamic> json) =>
    _NoteReaction(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      user: UserLite.fromJson(json['user'] as Map<String, dynamic>),
      type: json['type'] as String,
    );

Map<String, dynamic> _$NoteReactionToJson(_NoteReaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'user': instance.user,
      'type': instance.type,
    };

_NoteReactionWithNote _$NoteReactionWithNoteFromJson(
  Map<String, dynamic> json,
) => _NoteReactionWithNote(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  user: UserLite.fromJson(json['user'] as Map<String, dynamic>),
  type: json['type'] as String,
  note: Note.fromJson(json['note'] as Map<String, dynamic>),
);

Map<String, dynamic> _$NoteReactionWithNoteToJson(
  _NoteReactionWithNote instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'user': instance.user,
  'type': instance.type,
  'note': instance.note,
};

_NoteFavorite _$NoteFavoriteFromJson(Map<String, dynamic> json) =>
    _NoteFavorite(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      note: Note.fromJson(json['note'] as Map<String, dynamic>),
      noteId: json['noteId'] as String,
    );

Map<String, dynamic> _$NoteFavoriteToJson(_NoteFavorite instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'note': instance.note,
      'noteId': instance.noteId,
    };

_DriveFile _$DriveFileFromJson(Map<String, dynamic> json) => _DriveFile(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  name: json['name'] as String,
  type: json['type'] as String,
  md5: json['md5'] as String,
  size: json['size'] as num,
  isSensitive: json['isSensitive'] as bool,
  blurhash: json['blurhash'] as String?,
  properties: DriveFileProperties.fromJson(
    json['properties'] as Map<String, dynamic>,
  ),
  url: json['url'] as String,
  thumbnailUrl: json['thumbnailUrl'] as String?,
  comment: json['comment'] as String?,
  folderId: json['folderId'] as String?,
  folder: json['folder'] == null
      ? null
      : DriveFolder.fromJson(json['folder'] as Map<String, dynamic>),
  userId: json['userId'] as String?,
  user: json['user'] == null
      ? null
      : UserLite.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DriveFileToJson(_DriveFile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'name': instance.name,
      'type': instance.type,
      'md5': instance.md5,
      'size': instance.size,
      'isSensitive': instance.isSensitive,
      'blurhash': instance.blurhash,
      'properties': instance.properties,
      'url': instance.url,
      'thumbnailUrl': instance.thumbnailUrl,
      'comment': instance.comment,
      'folderId': instance.folderId,
      'folder': instance.folder,
      'userId': instance.userId,
      'user': instance.user,
    };

_DriveFolder _$DriveFolderFromJson(Map<String, dynamic> json) => _DriveFolder(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  name: json['name'] as String,
  parentId: json['parentId'] as String?,
  foldersCount: json['foldersCount'] as num?,
  filesCount: json['filesCount'] as num?,
  parent: json['parent'] == null
      ? null
      : DriveFolder.fromJson(json['parent'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DriveFolderToJson(_DriveFolder instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'name': instance.name,
      'parentId': instance.parentId,
      'foldersCount': instance.foldersCount,
      'filesCount': instance.filesCount,
      'parent': instance.parent,
    };

_Following _$FollowingFromJson(Map<String, dynamic> json) => _Following(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  followeeId: json['followeeId'] as String,
  followerId: json['followerId'] as String,
  followee: json['followee'] == null
      ? null
      : UserDetailedNotMe.fromJson(json['followee'] as Map<String, dynamic>),
  follower: json['follower'] == null
      ? null
      : UserDetailedNotMe.fromJson(json['follower'] as Map<String, dynamic>),
);

Map<String, dynamic> _$FollowingToJson(_Following instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'followeeId': instance.followeeId,
      'followerId': instance.followerId,
      'followee': instance.followee,
      'follower': instance.follower,
    };

_Muting _$MutingFromJson(Map<String, dynamic> json) => _Muting(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  expiresAt: json['expiresAt'] == null
      ? null
      : DateTime.parse(json['expiresAt'] as String),
  muteeId: json['muteeId'] as String,
  mutee: UserDetailedNotMe.fromJson(json['mutee'] as Map<String, dynamic>),
);

Map<String, dynamic> _$MutingToJson(_Muting instance) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'expiresAt': instance.expiresAt?.toIso8601String(),
  'muteeId': instance.muteeId,
  'mutee': instance.mutee,
};

_RenoteMuting _$RenoteMutingFromJson(Map<String, dynamic> json) =>
    _RenoteMuting(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      muteeId: json['muteeId'] as String,
      mutee: UserDetailedNotMe.fromJson(json['mutee'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RenoteMutingToJson(_RenoteMuting instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'muteeId': instance.muteeId,
      'mutee': instance.mutee,
    };

_Blocking _$BlockingFromJson(Map<String, dynamic> json) => _Blocking(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  blockeeId: json['blockeeId'] as String,
  blockee: UserDetailedNotMe.fromJson(json['blockee'] as Map<String, dynamic>),
);

Map<String, dynamic> _$BlockingToJson(_Blocking instance) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'blockeeId': instance.blockeeId,
  'blockee': instance.blockee,
};

_Hashtag _$HashtagFromJson(Map<String, dynamic> json) => _Hashtag(
  tag: json['tag'] as String,
  mentionedUsersCount: json['mentionedUsersCount'] as num,
  mentionedLocalUsersCount: json['mentionedLocalUsersCount'] as num,
  mentionedRemoteUsersCount: json['mentionedRemoteUsersCount'] as num,
  attachedUsersCount: json['attachedUsersCount'] as num,
  attachedLocalUsersCount: json['attachedLocalUsersCount'] as num,
  attachedRemoteUsersCount: json['attachedRemoteUsersCount'] as num,
);

Map<String, dynamic> _$HashtagToJson(_Hashtag instance) => <String, dynamic>{
  'tag': instance.tag,
  'mentionedUsersCount': instance.mentionedUsersCount,
  'mentionedLocalUsersCount': instance.mentionedLocalUsersCount,
  'mentionedRemoteUsersCount': instance.mentionedRemoteUsersCount,
  'attachedUsersCount': instance.attachedUsersCount,
  'attachedLocalUsersCount': instance.attachedLocalUsersCount,
  'attachedRemoteUsersCount': instance.attachedRemoteUsersCount,
};

_InviteCode _$InviteCodeFromJson(Map<String, dynamic> json) => _InviteCode(
  id: json['id'] as String,
  code: json['code'] as String,
  expiresAt: json['expiresAt'] == null
      ? null
      : DateTime.parse(json['expiresAt'] as String),
  createdAt: DateTime.parse(json['createdAt'] as String),
  createdBy: json['createdBy'] == null
      ? null
      : UserLite.fromJson(json['createdBy'] as Map<String, dynamic>),
  usedBy: json['usedBy'] == null
      ? null
      : UserLite.fromJson(json['usedBy'] as Map<String, dynamic>),
  usedAt: json['usedAt'] == null
      ? null
      : DateTime.parse(json['usedAt'] as String),
  used: json['used'] as bool,
);

Map<String, dynamic> _$InviteCodeToJson(_InviteCode instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'createdBy': instance.createdBy,
      'usedBy': instance.usedBy,
      'usedAt': instance.usedAt?.toIso8601String(),
      'used': instance.used,
    };

_Page _$PageFromJson(Map<String, dynamic> json) => _Page(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  userId: json['userId'] as String,
  user: UserLite.fromJson(json['user'] as Map<String, dynamic>),
  content: (json['content'] as List<dynamic>)
      .map((e) => PageBlock.fromJson(e as Map<String, dynamic>))
      .toList(),
  variables: (json['variables'] as List<dynamic>)
      .map((e) => e as Map<String, dynamic>)
      .toList(),
  title: json['title'] as String,
  name: json['name'] as String,
  summary: json['summary'] as String?,
  hideTitleWhenPinned: json['hideTitleWhenPinned'] as bool,
  alignCenter: json['alignCenter'] as bool,
  font: $enumDecode(_$PageFontEnumMap, json['font']),
  script: json['script'] as String,
  eyeCatchingImageId: json['eyeCatchingImageId'] as String?,
  eyeCatchingImage: json['eyeCatchingImage'] == null
      ? null
      : DriveFile.fromJson(json['eyeCatchingImage'] as Map<String, dynamic>),
  attachedFiles: (json['attachedFiles'] as List<dynamic>)
      .map((e) => DriveFile.fromJson(e as Map<String, dynamic>))
      .toList(),
  likedCount: json['likedCount'] as num,
  isLiked: json['isLiked'] as bool?,
);

Map<String, dynamic> _$PageToJson(_Page instance) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'userId': instance.userId,
  'user': instance.user,
  'content': instance.content,
  'variables': instance.variables,
  'title': instance.title,
  'name': instance.name,
  'summary': instance.summary,
  'hideTitleWhenPinned': instance.hideTitleWhenPinned,
  'alignCenter': instance.alignCenter,
  'font': _$PageFontEnumMap[instance.font]!,
  'script': instance.script,
  'eyeCatchingImageId': instance.eyeCatchingImageId,
  'eyeCatchingImage': instance.eyeCatchingImage,
  'attachedFiles': instance.attachedFiles,
  'likedCount': instance.likedCount,
  'isLiked': instance.isLiked,
};

const _$PageFontEnumMap = {
  PageFont.serif: 'serif',
  PageFont.sansSerif: 'sans-serif',
};

_Channel _$ChannelFromJson(Map<String, dynamic> json) => _Channel(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  lastNotedAt: json['lastNotedAt'] == null
      ? null
      : DateTime.parse(json['lastNotedAt'] as String),
  name: json['name'] as String,
  description: json['description'] as String?,
  userId: json['userId'] as String?,
  bannerUrl: json['bannerUrl'] as String?,
  bannerId: json['bannerId'] as String?,
  pinnedNoteIds: (json['pinnedNoteIds'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  color: json['color'] as String,
  isArchived: json['isArchived'] as bool,
  usersCount: json['usersCount'] as num,
  notesCount: json['notesCount'] as num,
  isSensitive: json['isSensitive'] as bool,
  allowRenoteToExternal: json['allowRenoteToExternal'] as bool,
  isFollowing: json['isFollowing'] as bool?,
  isFavorited: json['isFavorited'] as bool?,
  isMuting: json['isMuting'] as bool?,
  pinnedNotes: (json['pinnedNotes'] as List<dynamic>?)
      ?.map((e) => Note.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ChannelToJson(_Channel instance) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'lastNotedAt': instance.lastNotedAt?.toIso8601String(),
  'name': instance.name,
  'description': instance.description,
  'userId': instance.userId,
  'bannerUrl': instance.bannerUrl,
  'bannerId': instance.bannerId,
  'pinnedNoteIds': instance.pinnedNoteIds,
  'color': instance.color,
  'isArchived': instance.isArchived,
  'usersCount': instance.usersCount,
  'notesCount': instance.notesCount,
  'isSensitive': instance.isSensitive,
  'allowRenoteToExternal': instance.allowRenoteToExternal,
  'isFollowing': instance.isFollowing,
  'isFavorited': instance.isFavorited,
  'isMuting': instance.isMuting,
  'pinnedNotes': instance.pinnedNotes,
};

_QueueCount _$QueueCountFromJson(Map<String, dynamic> json) => _QueueCount(
  waiting: json['waiting'] as num,
  active: json['active'] as num,
  completed: json['completed'] as num,
  failed: json['failed'] as num,
  delayed: json['delayed'] as num,
);

Map<String, dynamic> _$QueueCountToJson(_QueueCount instance) =>
    <String, dynamic>{
      'waiting': instance.waiting,
      'active': instance.active,
      'completed': instance.completed,
      'failed': instance.failed,
      'delayed': instance.delayed,
    };

_QueueMetrics _$QueueMetricsFromJson(Map<String, dynamic> json) =>
    _QueueMetrics(
      meta: QueueMetricsMeta.fromJson(json['meta'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>).map((e) => e as num).toList(),
      count: json['count'] as num,
    );

Map<String, dynamic> _$QueueMetricsToJson(_QueueMetrics instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
      'count': instance.count,
    };

_QueueJob _$QueueJobFromJson(Map<String, dynamic> json) => _QueueJob(
  id: json['id'] as String,
  name: json['name'] as String,
  data: json['data'] as Map<String, dynamic>,
  opts: json['opts'] as Map<String, dynamic>,
  timestamp: json['timestamp'] as num,
  processedOn: json['processedOn'] as num?,
  processedBy: json['processedBy'] as String?,
  finishedOn: json['finishedOn'] as num?,
  progress: json['progress'] as Map<String, dynamic>,
  attempts: json['attempts'] as num,
  delay: json['delay'] as num,
  failedReason: json['failedReason'] as String,
  stacktrace: (json['stacktrace'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  returnValue: json['returnValue'] as Map<String, dynamic>,
  isFailed: json['isFailed'] as bool,
);

Map<String, dynamic> _$QueueJobToJson(_QueueJob instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'data': instance.data,
  'opts': instance.opts,
  'timestamp': instance.timestamp,
  'processedOn': instance.processedOn,
  'processedBy': instance.processedBy,
  'finishedOn': instance.finishedOn,
  'progress': instance.progress,
  'attempts': instance.attempts,
  'delay': instance.delay,
  'failedReason': instance.failedReason,
  'stacktrace': instance.stacktrace,
  'returnValue': instance.returnValue,
  'isFailed': instance.isFailed,
};

_Antenna _$AntennaFromJson(Map<String, dynamic> json) => _Antenna(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  name: json['name'] as String,
  keywords: (json['keywords'] as List<dynamic>)
      .map((e) => (e as List<dynamic>).map((e) => e as String).toList())
      .toList(),
  excludeKeywords: (json['excludeKeywords'] as List<dynamic>)
      .map((e) => (e as List<dynamic>).map((e) => e as String).toList())
      .toList(),
  src: $enumDecode(_$AntennaSrcEnumMap, json['src']),
  userListId: json['userListId'] as String?,
  users: (json['users'] as List<dynamic>).map((e) => e as String).toList(),
  caseSensitive: json['caseSensitive'] as bool,
  localOnly: json['localOnly'] as bool,
  excludeBots: json['excludeBots'] as bool,
  withReplies: json['withReplies'] as bool,
  withFile: json['withFile'] as bool,
  isActive: json['isActive'] as bool,
  hasUnreadNote: json['hasUnreadNote'] as bool,
  notify: json['notify'] as bool,
  excludeNotesInSensitiveChannel:
      json['excludeNotesInSensitiveChannel'] as bool,
);

Map<String, dynamic> _$AntennaToJson(_Antenna instance) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'name': instance.name,
  'keywords': instance.keywords,
  'excludeKeywords': instance.excludeKeywords,
  'src': _$AntennaSrcEnumMap[instance.src]!,
  'userListId': instance.userListId,
  'users': instance.users,
  'caseSensitive': instance.caseSensitive,
  'localOnly': instance.localOnly,
  'excludeBots': instance.excludeBots,
  'withReplies': instance.withReplies,
  'withFile': instance.withFile,
  'isActive': instance.isActive,
  'hasUnreadNote': instance.hasUnreadNote,
  'notify': instance.notify,
  'excludeNotesInSensitiveChannel': instance.excludeNotesInSensitiveChannel,
};

const _$AntennaSrcEnumMap = {
  AntennaSrc.home: 'home',
  AntennaSrc.all: 'all',
  AntennaSrc.users: 'users',
  AntennaSrc.list: 'list',
  AntennaSrc.users_blacklist: 'users_blacklist',
};

_Clip _$ClipFromJson(Map<String, dynamic> json) => _Clip(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  lastClippedAt: json['lastClippedAt'] == null
      ? null
      : DateTime.parse(json['lastClippedAt'] as String),
  userId: json['userId'] as String,
  user: UserLite.fromJson(json['user'] as Map<String, dynamic>),
  name: json['name'] as String,
  description: json['description'] as String?,
  isPublic: json['isPublic'] as bool,
  favoritedCount: json['favoritedCount'] as num,
  isFavorited: json['isFavorited'] as bool?,
  notesCount: (json['notesCount'] as num?)?.toInt(),
);

Map<String, dynamic> _$ClipToJson(_Clip instance) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'lastClippedAt': instance.lastClippedAt?.toIso8601String(),
  'userId': instance.userId,
  'user': instance.user,
  'name': instance.name,
  'description': instance.description,
  'isPublic': instance.isPublic,
  'favoritedCount': instance.favoritedCount,
  'isFavorited': instance.isFavorited,
  'notesCount': instance.notesCount,
};

_FederationInstance _$FederationInstanceFromJson(Map<String, dynamic> json) =>
    _FederationInstance(
      id: json['id'] as String,
      firstRetrievedAt: DateTime.parse(json['firstRetrievedAt'] as String),
      host: json['host'] as String,
      usersCount: json['usersCount'] as num,
      notesCount: json['notesCount'] as num,
      followingCount: json['followingCount'] as num,
      followersCount: json['followersCount'] as num,
      isNotResponding: json['isNotResponding'] as bool,
      isSuspended: json['isSuspended'] as bool,
      suspensionState: $enumDecode(
        _$FederationInstanceSuspensionStateEnumMap,
        json['suspensionState'],
      ),
      isBlocked: json['isBlocked'] as bool,
      softwareName: json['softwareName'] as String?,
      softwareVersion: json['softwareVersion'] as String?,
      openRegistrations: json['openRegistrations'] as bool?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      maintainerName: json['maintainerName'] as String?,
      maintainerEmail: json['maintainerEmail'] as String?,
      isSilenced: json['isSilenced'] as bool,
      isMediaSilenced: json['isMediaSilenced'] as bool,
      iconUrl: json['iconUrl'] as String?,
      faviconUrl: json['faviconUrl'] as String?,
      themeColor: json['themeColor'] as String?,
      infoUpdatedAt: json['infoUpdatedAt'] == null
          ? null
          : DateTime.parse(json['infoUpdatedAt'] as String),
      latestRequestReceivedAt: json['latestRequestReceivedAt'] == null
          ? null
          : DateTime.parse(json['latestRequestReceivedAt'] as String),
      moderationNote: json['moderationNote'] as String?,
    );

Map<String, dynamic> _$FederationInstanceToJson(_FederationInstance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstRetrievedAt': instance.firstRetrievedAt.toIso8601String(),
      'host': instance.host,
      'usersCount': instance.usersCount,
      'notesCount': instance.notesCount,
      'followingCount': instance.followingCount,
      'followersCount': instance.followersCount,
      'isNotResponding': instance.isNotResponding,
      'isSuspended': instance.isSuspended,
      'suspensionState':
          _$FederationInstanceSuspensionStateEnumMap[instance.suspensionState]!,
      'isBlocked': instance.isBlocked,
      'softwareName': instance.softwareName,
      'softwareVersion': instance.softwareVersion,
      'openRegistrations': instance.openRegistrations,
      'name': instance.name,
      'description': instance.description,
      'maintainerName': instance.maintainerName,
      'maintainerEmail': instance.maintainerEmail,
      'isSilenced': instance.isSilenced,
      'isMediaSilenced': instance.isMediaSilenced,
      'iconUrl': instance.iconUrl,
      'faviconUrl': instance.faviconUrl,
      'themeColor': instance.themeColor,
      'infoUpdatedAt': instance.infoUpdatedAt?.toIso8601String(),
      'latestRequestReceivedAt': instance.latestRequestReceivedAt
          ?.toIso8601String(),
      'moderationNote': instance.moderationNote,
    };

const _$FederationInstanceSuspensionStateEnumMap = {
  FederationInstanceSuspensionState.none: 'none',
  FederationInstanceSuspensionState.manuallySuspended: 'manuallySuspended',
  FederationInstanceSuspensionState.goneSuspended: 'goneSuspended',
  FederationInstanceSuspensionState.autoSuspendedForNotResponding:
      'autoSuspendedForNotResponding',
  FederationInstanceSuspensionState.softwareSuspended: 'softwareSuspended',
};

_GalleryPost _$GalleryPostFromJson(Map<String, dynamic> json) => _GalleryPost(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  userId: json['userId'] as String,
  user: UserLite.fromJson(json['user'] as Map<String, dynamic>),
  title: json['title'] as String,
  description: json['description'] as String?,
  fileIds: (json['fileIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  files: (json['files'] as List<dynamic>?)
      ?.map((e) => DriveFile.fromJson(e as Map<String, dynamic>))
      .toList(),
  tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
  isSensitive: json['isSensitive'] as bool,
  likedCount: json['likedCount'] as num,
  isLiked: json['isLiked'] as bool?,
);

Map<String, dynamic> _$GalleryPostToJson(_GalleryPost instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'userId': instance.userId,
      'user': instance.user,
      'title': instance.title,
      'description': instance.description,
      'fileIds': instance.fileIds,
      'files': instance.files,
      'tags': instance.tags,
      'isSensitive': instance.isSensitive,
      'likedCount': instance.likedCount,
      'isLiked': instance.isLiked,
    };

_EmojiSimple _$EmojiSimpleFromJson(Map<String, dynamic> json) => _EmojiSimple(
  aliases: (json['aliases'] as List<dynamic>).map((e) => e as String).toList(),
  name: json['name'] as String,
  category: json['category'] as String?,
  url: json['url'] as String,
  localOnly: json['localOnly'] as bool?,
  isSensitive: json['isSensitive'] as bool?,
  roleIdsThatCanBeUsedThisEmojiAsReaction:
      (json['roleIdsThatCanBeUsedThisEmojiAsReaction'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
);

Map<String, dynamic> _$EmojiSimpleToJson(_EmojiSimple instance) =>
    <String, dynamic>{
      'aliases': instance.aliases,
      'name': instance.name,
      'category': instance.category,
      'url': instance.url,
      'localOnly': instance.localOnly,
      'isSensitive': instance.isSensitive,
      'roleIdsThatCanBeUsedThisEmojiAsReaction':
          instance.roleIdsThatCanBeUsedThisEmojiAsReaction,
    };

_EmojiDetailed _$EmojiDetailedFromJson(Map<String, dynamic> json) =>
    _EmojiDetailed(
      id: json['id'] as String,
      aliases: (json['aliases'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      name: json['name'] as String,
      category: json['category'] as String?,
      host: json['host'] as String?,
      url: json['url'] as String,
      license: json['license'] as String?,
      isSensitive: json['isSensitive'] as bool,
      localOnly: json['localOnly'] as bool,
      roleIdsThatCanBeUsedThisEmojiAsReaction:
          (json['roleIdsThatCanBeUsedThisEmojiAsReaction'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
    );

Map<String, dynamic> _$EmojiDetailedToJson(_EmojiDetailed instance) =>
    <String, dynamic>{
      'id': instance.id,
      'aliases': instance.aliases,
      'name': instance.name,
      'category': instance.category,
      'host': instance.host,
      'url': instance.url,
      'license': instance.license,
      'isSensitive': instance.isSensitive,
      'localOnly': instance.localOnly,
      'roleIdsThatCanBeUsedThisEmojiAsReaction':
          instance.roleIdsThatCanBeUsedThisEmojiAsReaction,
    };

_EmojiDetailedAdmin _$EmojiDetailedAdminFromJson(
  Map<String, dynamic> json,
) => _EmojiDetailedAdmin(
  id: json['id'] as String,
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  name: json['name'] as String,
  host: json['host'] as String?,
  publicUrl: json['publicUrl'] as String,
  originalUrl: json['originalUrl'] as String,
  uri: json['uri'] as String?,
  type: json['type'] as String?,
  aliases: (json['aliases'] as List<dynamic>).map((e) => e as String).toList(),
  category: json['category'] as String?,
  license: json['license'] as String?,
  localOnly: json['localOnly'] as bool,
  isSensitive: json['isSensitive'] as bool,
  roleIdsThatCanBeUsedThisEmojiAsReaction:
      (json['roleIdsThatCanBeUsedThisEmojiAsReaction'] as List<dynamic>)
          .map(
            (e) =>
                EmojiDetailedAdminRoleIdsThatCanBeUsedThisEmojiAsReactionItem.fromJson(
                  e as Map<String, dynamic>,
                ),
          )
          .toList(),
);

Map<String, dynamic> _$EmojiDetailedAdminToJson(_EmojiDetailedAdmin instance) =>
    <String, dynamic>{
      'id': instance.id,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'name': instance.name,
      'host': instance.host,
      'publicUrl': instance.publicUrl,
      'originalUrl': instance.originalUrl,
      'uri': instance.uri,
      'type': instance.type,
      'aliases': instance.aliases,
      'category': instance.category,
      'license': instance.license,
      'localOnly': instance.localOnly,
      'isSensitive': instance.isSensitive,
      'roleIdsThatCanBeUsedThisEmojiAsReaction':
          instance.roleIdsThatCanBeUsedThisEmojiAsReaction,
    };

_Flash _$FlashFromJson(Map<String, dynamic> json) => _Flash(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  userId: json['userId'] as String,
  user: UserLite.fromJson(json['user'] as Map<String, dynamic>),
  title: json['title'] as String,
  summary: json['summary'] as String,
  script: json['script'] as String,
  visibility: $enumDecode(_$FlashVisibilityEnumMap, json['visibility']),
  likedCount: json['likedCount'] as num,
  isLiked: json['isLiked'] as bool?,
);

Map<String, dynamic> _$FlashToJson(_Flash instance) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'userId': instance.userId,
  'user': instance.user,
  'title': instance.title,
  'summary': instance.summary,
  'script': instance.script,
  'visibility': _$FlashVisibilityEnumMap[instance.visibility]!,
  'likedCount': instance.likedCount,
  'isLiked': instance.isLiked,
};

const _$FlashVisibilityEnumMap = {
  FlashVisibility.private: 'private',
  FlashVisibility.public: 'public',
};

_Signin _$SigninFromJson(Map<String, dynamic> json) => _Signin(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  ip: json['ip'] as String,
  headers: json['headers'] as Map<String, dynamic>,
  success: json['success'] as bool,
);

Map<String, dynamic> _$SigninToJson(_Signin instance) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'ip': instance.ip,
  'headers': instance.headers,
  'success': instance.success,
};

_RoleCondFormulaLogics _$RoleCondFormulaLogicsFromJson(
  Map<String, dynamic> json,
) => _RoleCondFormulaLogics(
  id: json['id'] as String,
  type: $enumDecode(_$RoleCondFormulaLogicsTypeEnumMap, json['type']),
  values: (json['values'] as List<dynamic>)
      .map((e) => RoleCondFormulaValue.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$RoleCondFormulaLogicsToJson(
  _RoleCondFormulaLogics instance,
) => <String, dynamic>{
  'id': instance.id,
  'type': _$RoleCondFormulaLogicsTypeEnumMap[instance.type]!,
  'values': instance.values,
};

const _$RoleCondFormulaLogicsTypeEnumMap = {
  RoleCondFormulaLogicsType.and: 'and',
  RoleCondFormulaLogicsType.or: 'or',
};

_RoleCondFormulaValueNot _$RoleCondFormulaValueNotFromJson(
  Map<String, dynamic> json,
) => _RoleCondFormulaValueNot(
  id: json['id'] as String,
  type: $enumDecode(_$RoleCondFormulaValueNotTypeEnumMap, json['type']),
  value: RoleCondFormulaValue.fromJson(json['value'] as Map<String, dynamic>),
);

Map<String, dynamic> _$RoleCondFormulaValueNotToJson(
  _RoleCondFormulaValueNot instance,
) => <String, dynamic>{
  'id': instance.id,
  'type': _$RoleCondFormulaValueNotTypeEnumMap[instance.type]!,
  'value': instance.value,
};

const _$RoleCondFormulaValueNotTypeEnumMap = {
  RoleCondFormulaValueNotType.not: 'not',
};

_RoleCondFormulaValueIsLocalOrRemote
_$RoleCondFormulaValueIsLocalOrRemoteFromJson(Map<String, dynamic> json) =>
    _RoleCondFormulaValueIsLocalOrRemote(
      id: json['id'] as String,
      type: $enumDecode(
        _$RoleCondFormulaValueIsLocalOrRemoteTypeEnumMap,
        json['type'],
      ),
    );

Map<String, dynamic> _$RoleCondFormulaValueIsLocalOrRemoteToJson(
  _RoleCondFormulaValueIsLocalOrRemote instance,
) => <String, dynamic>{
  'id': instance.id,
  'type': _$RoleCondFormulaValueIsLocalOrRemoteTypeEnumMap[instance.type]!,
};

const _$RoleCondFormulaValueIsLocalOrRemoteTypeEnumMap = {
  RoleCondFormulaValueIsLocalOrRemoteType.isLocal: 'isLocal',
  RoleCondFormulaValueIsLocalOrRemoteType.isRemote: 'isRemote',
};

_RoleCondFormulaValueUserSettingBooleanSchema
_$RoleCondFormulaValueUserSettingBooleanSchemaFromJson(
  Map<String, dynamic> json,
) => _RoleCondFormulaValueUserSettingBooleanSchema(
  id: json['id'] as String,
  type: $enumDecode(
    _$RoleCondFormulaValueUserSettingBooleanSchemaTypeEnumMap,
    json['type'],
  ),
);

Map<String, dynamic> _$RoleCondFormulaValueUserSettingBooleanSchemaToJson(
  _RoleCondFormulaValueUserSettingBooleanSchema instance,
) => <String, dynamic>{
  'id': instance.id,
  'type':
      _$RoleCondFormulaValueUserSettingBooleanSchemaTypeEnumMap[instance.type]!,
};

const _$RoleCondFormulaValueUserSettingBooleanSchemaTypeEnumMap = {
  RoleCondFormulaValueUserSettingBooleanSchemaType.isSuspended: 'isSuspended',
  RoleCondFormulaValueUserSettingBooleanSchemaType.isLocked: 'isLocked',
  RoleCondFormulaValueUserSettingBooleanSchemaType.isBot: 'isBot',
  RoleCondFormulaValueUserSettingBooleanSchemaType.isCat: 'isCat',
  RoleCondFormulaValueUserSettingBooleanSchemaType.isExplorable: 'isExplorable',
};

_RoleCondFormulaValueAssignedRole _$RoleCondFormulaValueAssignedRoleFromJson(
  Map<String, dynamic> json,
) => _RoleCondFormulaValueAssignedRole(
  id: json['id'] as String,
  type: $enumDecode(
    _$RoleCondFormulaValueAssignedRoleTypeEnumMap,
    json['type'],
  ),
  roleId: json['roleId'] as String,
);

Map<String, dynamic> _$RoleCondFormulaValueAssignedRoleToJson(
  _RoleCondFormulaValueAssignedRole instance,
) => <String, dynamic>{
  'id': instance.id,
  'type': _$RoleCondFormulaValueAssignedRoleTypeEnumMap[instance.type]!,
  'roleId': instance.roleId,
};

const _$RoleCondFormulaValueAssignedRoleTypeEnumMap = {
  RoleCondFormulaValueAssignedRoleType.roleAssignedTo: 'roleAssignedTo',
};

_RoleCondFormulaValueCreated _$RoleCondFormulaValueCreatedFromJson(
  Map<String, dynamic> json,
) => _RoleCondFormulaValueCreated(
  id: json['id'] as String,
  type: $enumDecode(_$RoleCondFormulaValueCreatedTypeEnumMap, json['type']),
  sec: json['sec'] as num,
);

Map<String, dynamic> _$RoleCondFormulaValueCreatedToJson(
  _RoleCondFormulaValueCreated instance,
) => <String, dynamic>{
  'id': instance.id,
  'type': _$RoleCondFormulaValueCreatedTypeEnumMap[instance.type]!,
  'sec': instance.sec,
};

const _$RoleCondFormulaValueCreatedTypeEnumMap = {
  RoleCondFormulaValueCreatedType.createdLessThan: 'createdLessThan',
  RoleCondFormulaValueCreatedType.createdMoreThan: 'createdMoreThan',
};

_RoleCondFormulaFollowersOrFollowingOrNotes
_$RoleCondFormulaFollowersOrFollowingOrNotesFromJson(
  Map<String, dynamic> json,
) => _RoleCondFormulaFollowersOrFollowingOrNotes(
  id: json['id'] as String,
  type: $enumDecode(
    _$RoleCondFormulaFollowersOrFollowingOrNotesTypeEnumMap,
    json['type'],
  ),
  value: json['value'] as num,
);

Map<String, dynamic> _$RoleCondFormulaFollowersOrFollowingOrNotesToJson(
  _RoleCondFormulaFollowersOrFollowingOrNotes instance,
) => <String, dynamic>{
  'id': instance.id,
  'type':
      _$RoleCondFormulaFollowersOrFollowingOrNotesTypeEnumMap[instance.type]!,
  'value': instance.value,
};

const _$RoleCondFormulaFollowersOrFollowingOrNotesTypeEnumMap = {
  RoleCondFormulaFollowersOrFollowingOrNotesType.followersLessThanOrEq:
      'followersLessThanOrEq',
  RoleCondFormulaFollowersOrFollowingOrNotesType.followersMoreThanOrEq:
      'followersMoreThanOrEq',
  RoleCondFormulaFollowersOrFollowingOrNotesType.followingLessThanOrEq:
      'followingLessThanOrEq',
  RoleCondFormulaFollowersOrFollowingOrNotesType.followingMoreThanOrEq:
      'followingMoreThanOrEq',
  RoleCondFormulaFollowersOrFollowingOrNotesType.notesLessThanOrEq:
      'notesLessThanOrEq',
  RoleCondFormulaFollowersOrFollowingOrNotesType.notesMoreThanOrEq:
      'notesMoreThanOrEq',
};

_RoleLite _$RoleLiteFromJson(Map<String, dynamic> json) => _RoleLite(
  id: json['id'] as String,
  name: json['name'] as String,
  color: json['color'] as String?,
  iconUrl: json['iconUrl'] as String?,
  description: json['description'] as String,
  isModerator: json['isModerator'] as bool,
  isAdministrator: json['isAdministrator'] as bool,
  displayOrder: (json['displayOrder'] as num).toInt(),
);

Map<String, dynamic> _$RoleLiteToJson(_RoleLite instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'color': instance.color,
  'iconUrl': instance.iconUrl,
  'description': instance.description,
  'isModerator': instance.isModerator,
  'isAdministrator': instance.isAdministrator,
  'displayOrder': instance.displayOrder,
};

_Role _$RoleFromJson(Map<String, dynamic> json) => _Role(
  id: json['id'] as String,
  name: json['name'] as String,
  color: json['color'] as String?,
  iconUrl: json['iconUrl'] as String?,
  description: json['description'] as String,
  isModerator: json['isModerator'] as bool,
  isAdministrator: json['isAdministrator'] as bool,
  displayOrder: (json['displayOrder'] as num).toInt(),
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  target: $enumDecode(_$RoleTargetEnumMap, json['target']),
  condFormula: RoleCondFormulaValue.fromJson(
    json['condFormula'] as Map<String, dynamic>,
  ),
  isPublic: json['isPublic'] as bool,
  isExplorable: json['isExplorable'] as bool,
  asBadge: json['asBadge'] as bool,
  preserveAssignmentOnMoveAccount:
      json['preserveAssignmentOnMoveAccount'] as bool,
  canEditMembersByModerator: json['canEditMembersByModerator'] as bool,
  policies: (json['policies'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(k, RolePolicy.fromJson(e as Map<String, dynamic>)),
  ),
  usersCount: (json['usersCount'] as num).toInt(),
);

Map<String, dynamic> _$RoleToJson(_Role instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'color': instance.color,
  'iconUrl': instance.iconUrl,
  'description': instance.description,
  'isModerator': instance.isModerator,
  'isAdministrator': instance.isAdministrator,
  'displayOrder': instance.displayOrder,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'target': _$RoleTargetEnumMap[instance.target]!,
  'condFormula': instance.condFormula,
  'isPublic': instance.isPublic,
  'isExplorable': instance.isExplorable,
  'asBadge': instance.asBadge,
  'preserveAssignmentOnMoveAccount': instance.preserveAssignmentOnMoveAccount,
  'canEditMembersByModerator': instance.canEditMembersByModerator,
  'policies': instance.policies,
  'usersCount': instance.usersCount,
};

const _$RoleTargetEnumMap = {
  RoleTarget.manual: 'manual',
  RoleTarget.conditional: 'conditional',
};

_RolePolicies _$RolePoliciesFromJson(Map<String, dynamic> json) =>
    _RolePolicies(
      gtlAvailable: json['gtlAvailable'] as bool,
      ltlAvailable: json['ltlAvailable'] as bool,
      canPublicNote: json['canPublicNote'] as bool,
      mentionLimit: (json['mentionLimit'] as num).toInt(),
      canInvite: json['canInvite'] as bool,
      inviteLimit: (json['inviteLimit'] as num).toInt(),
      inviteLimitCycle: (json['inviteLimitCycle'] as num).toInt(),
      inviteExpirationTime: (json['inviteExpirationTime'] as num).toInt(),
      canManageCustomEmojis: json['canManageCustomEmojis'] as bool,
      canManageAvatarDecorations: json['canManageAvatarDecorations'] as bool,
      canSearchNotes: json['canSearchNotes'] as bool,
      canSearchUsers: json['canSearchUsers'] as bool,
      canUseTranslator: json['canUseTranslator'] as bool,
      canHideAds: json['canHideAds'] as bool,
      canCreateChannel: json['canCreateChannel'] as bool,
      driveCapacityMb: (json['driveCapacityMb'] as num).toInt(),
      maxFileSizeMb: (json['maxFileSizeMb'] as num).toInt(),
      uploadableFileTypes: (json['uploadableFileTypes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      alwaysMarkNsfw: json['alwaysMarkNsfw'] as bool,
      canUpdateBioMedia: json['canUpdateBioMedia'] as bool,
      pinLimit: (json['pinLimit'] as num).toInt(),
      antennaLimit: (json['antennaLimit'] as num).toInt(),
      wordMuteLimit: (json['wordMuteLimit'] as num).toInt(),
      webhookLimit: (json['webhookLimit'] as num).toInt(),
      clipLimit: (json['clipLimit'] as num).toInt(),
      noteEachClipsLimit: (json['noteEachClipsLimit'] as num).toInt(),
      userListLimit: (json['userListLimit'] as num).toInt(),
      userEachUserListsLimit: (json['userEachUserListsLimit'] as num).toInt(),
      rateLimitFactor: (json['rateLimitFactor'] as num).toInt(),
      avatarDecorationLimit: (json['avatarDecorationLimit'] as num).toInt(),
      canImportAntennas: json['canImportAntennas'] as bool,
      canImportBlocking: json['canImportBlocking'] as bool,
      canImportFollowing: json['canImportFollowing'] as bool,
      canImportMuting: json['canImportMuting'] as bool,
      canImportUserLists: json['canImportUserLists'] as bool,
      chatAvailability: $enumDecode(
        _$ChatAvailabilityEnumMap,
        json['chatAvailability'],
      ),
      noteDraftLimit: (json['noteDraftLimit'] as num).toInt(),
      scheduledNoteLimit: (json['scheduledNoteLimit'] as num).toInt(),
      watermarkAvailable: json['watermarkAvailable'] as bool,
    );

Map<String, dynamic> _$RolePoliciesToJson(_RolePolicies instance) =>
    <String, dynamic>{
      'gtlAvailable': instance.gtlAvailable,
      'ltlAvailable': instance.ltlAvailable,
      'canPublicNote': instance.canPublicNote,
      'mentionLimit': instance.mentionLimit,
      'canInvite': instance.canInvite,
      'inviteLimit': instance.inviteLimit,
      'inviteLimitCycle': instance.inviteLimitCycle,
      'inviteExpirationTime': instance.inviteExpirationTime,
      'canManageCustomEmojis': instance.canManageCustomEmojis,
      'canManageAvatarDecorations': instance.canManageAvatarDecorations,
      'canSearchNotes': instance.canSearchNotes,
      'canSearchUsers': instance.canSearchUsers,
      'canUseTranslator': instance.canUseTranslator,
      'canHideAds': instance.canHideAds,
      'canCreateChannel': instance.canCreateChannel,
      'driveCapacityMb': instance.driveCapacityMb,
      'maxFileSizeMb': instance.maxFileSizeMb,
      'uploadableFileTypes': instance.uploadableFileTypes,
      'alwaysMarkNsfw': instance.alwaysMarkNsfw,
      'canUpdateBioMedia': instance.canUpdateBioMedia,
      'pinLimit': instance.pinLimit,
      'antennaLimit': instance.antennaLimit,
      'wordMuteLimit': instance.wordMuteLimit,
      'webhookLimit': instance.webhookLimit,
      'clipLimit': instance.clipLimit,
      'noteEachClipsLimit': instance.noteEachClipsLimit,
      'userListLimit': instance.userListLimit,
      'userEachUserListsLimit': instance.userEachUserListsLimit,
      'rateLimitFactor': instance.rateLimitFactor,
      'avatarDecorationLimit': instance.avatarDecorationLimit,
      'canImportAntennas': instance.canImportAntennas,
      'canImportBlocking': instance.canImportBlocking,
      'canImportFollowing': instance.canImportFollowing,
      'canImportMuting': instance.canImportMuting,
      'canImportUserLists': instance.canImportUserLists,
      'chatAvailability': _$ChatAvailabilityEnumMap[instance.chatAvailability]!,
      'noteDraftLimit': instance.noteDraftLimit,
      'scheduledNoteLimit': instance.scheduledNoteLimit,
      'watermarkAvailable': instance.watermarkAvailable,
    };

const _$ChatAvailabilityEnumMap = {
  ChatAvailability.available: 'available',
  ChatAvailability.readonly: 'readonly',
  ChatAvailability.unavailable: 'unavailable',
};

_ReversiGameLite _$ReversiGameLiteFromJson(Map<String, dynamic> json) =>
    _ReversiGameLite(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      startedAt: json['startedAt'] == null
          ? null
          : DateTime.parse(json['startedAt'] as String),
      endedAt: json['endedAt'] == null
          ? null
          : DateTime.parse(json['endedAt'] as String),
      isStarted: json['isStarted'] as bool,
      isEnded: json['isEnded'] as bool,
      user1Id: json['user1Id'] as String,
      user2Id: json['user2Id'] as String,
      user1: UserLite.fromJson(json['user1'] as Map<String, dynamic>),
      user2: UserLite.fromJson(json['user2'] as Map<String, dynamic>),
      winnerId: json['winnerId'] as String?,
      winner: json['winner'] == null
          ? null
          : UserLite.fromJson(json['winner'] as Map<String, dynamic>),
      surrenderedUserId: json['surrenderedUserId'] as String?,
      timeoutUserId: json['timeoutUserId'] as String?,
      black: json['black'] as num?,
      bw: $enumDecode(_$ReversiGameLiteBwEnumMap, json['bw']),
      noIrregularRules: json['noIrregularRules'] as bool,
      isLlotheo: json['isLlotheo'] as bool,
      canPutEverywhere: json['canPutEverywhere'] as bool,
      loopedBoard: json['loopedBoard'] as bool,
      timeLimitForEachTurn: json['timeLimitForEachTurn'] as num,
    );

Map<String, dynamic> _$ReversiGameLiteToJson(_ReversiGameLite instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'startedAt': instance.startedAt?.toIso8601String(),
      'endedAt': instance.endedAt?.toIso8601String(),
      'isStarted': instance.isStarted,
      'isEnded': instance.isEnded,
      'user1Id': instance.user1Id,
      'user2Id': instance.user2Id,
      'user1': instance.user1,
      'user2': instance.user2,
      'winnerId': instance.winnerId,
      'winner': instance.winner,
      'surrenderedUserId': instance.surrenderedUserId,
      'timeoutUserId': instance.timeoutUserId,
      'black': instance.black,
      'bw': _$ReversiGameLiteBwEnumMap[instance.bw]!,
      'noIrregularRules': instance.noIrregularRules,
      'isLlotheo': instance.isLlotheo,
      'canPutEverywhere': instance.canPutEverywhere,
      'loopedBoard': instance.loopedBoard,
      'timeLimitForEachTurn': instance.timeLimitForEachTurn,
    };

const _$ReversiGameLiteBwEnumMap = {
  ReversiGameLiteBw.random: 'random',
  ReversiGameLiteBw.v1: '1',
  ReversiGameLiteBw.v2: '2',
};

_ReversiGameDetailed _$ReversiGameDetailedFromJson(Map<String, dynamic> json) =>
    _ReversiGameDetailed(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      startedAt: json['startedAt'] == null
          ? null
          : DateTime.parse(json['startedAt'] as String),
      endedAt: json['endedAt'] == null
          ? null
          : DateTime.parse(json['endedAt'] as String),
      isStarted: json['isStarted'] as bool,
      isEnded: json['isEnded'] as bool,
      form1: json['form1'] as Map<String, dynamic>?,
      form2: json['form2'] as Map<String, dynamic>?,
      user1Ready: json['user1Ready'] as bool,
      user2Ready: json['user2Ready'] as bool,
      user1Id: json['user1Id'] as String,
      user2Id: json['user2Id'] as String,
      user1: UserLite.fromJson(json['user1'] as Map<String, dynamic>),
      user2: UserLite.fromJson(json['user2'] as Map<String, dynamic>),
      winnerId: json['winnerId'] as String?,
      winner: json['winner'] == null
          ? null
          : UserLite.fromJson(json['winner'] as Map<String, dynamic>),
      surrenderedUserId: json['surrenderedUserId'] as String?,
      timeoutUserId: json['timeoutUserId'] as String?,
      black: json['black'] as num?,
      bw: $enumDecode(_$ReversiGameDetailedBwEnumMap, json['bw']),
      noIrregularRules: json['noIrregularRules'] as bool,
      isLlotheo: json['isLlotheo'] as bool,
      canPutEverywhere: json['canPutEverywhere'] as bool,
      loopedBoard: json['loopedBoard'] as bool,
      timeLimitForEachTurn: json['timeLimitForEachTurn'] as num,
      logs: (json['logs'] as List<dynamic>)
          .map((e) => (e as List<dynamic>).map((e) => e as num).toList())
          .toList(),
      map: (json['map'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ReversiGameDetailedToJson(
  _ReversiGameDetailed instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'startedAt': instance.startedAt?.toIso8601String(),
  'endedAt': instance.endedAt?.toIso8601String(),
  'isStarted': instance.isStarted,
  'isEnded': instance.isEnded,
  'form1': instance.form1,
  'form2': instance.form2,
  'user1Ready': instance.user1Ready,
  'user2Ready': instance.user2Ready,
  'user1Id': instance.user1Id,
  'user2Id': instance.user2Id,
  'user1': instance.user1,
  'user2': instance.user2,
  'winnerId': instance.winnerId,
  'winner': instance.winner,
  'surrenderedUserId': instance.surrenderedUserId,
  'timeoutUserId': instance.timeoutUserId,
  'black': instance.black,
  'bw': _$ReversiGameDetailedBwEnumMap[instance.bw]!,
  'noIrregularRules': instance.noIrregularRules,
  'isLlotheo': instance.isLlotheo,
  'canPutEverywhere': instance.canPutEverywhere,
  'loopedBoard': instance.loopedBoard,
  'timeLimitForEachTurn': instance.timeLimitForEachTurn,
  'logs': instance.logs,
  'map': instance.map,
};

const _$ReversiGameDetailedBwEnumMap = {
  ReversiGameDetailedBw.random: 'random',
  ReversiGameDetailedBw.v1: '1',
  ReversiGameDetailedBw.v2: '2',
};

_MetaLite _$MetaLiteFromJson(Map<String, dynamic> json) => _MetaLite(
  maintainerName: json['maintainerName'] as String?,
  maintainerEmail: json['maintainerEmail'] as String?,
  version: json['version'] as String,
  providesTarball: json['providesTarball'] as bool,
  name: json['name'] as String?,
  shortName: json['shortName'] as String?,
  uri: json['uri'] as String,
  description: json['description'] as String?,
  langs: (json['langs'] as List<dynamic>).map((e) => e as String).toList(),
  tosUrl: json['tosUrl'] as String?,
  repositoryUrl: json['repositoryUrl'] as String?,
  feedbackUrl: json['feedbackUrl'] as String?,
  defaultDarkTheme: json['defaultDarkTheme'] as String?,
  defaultLightTheme: json['defaultLightTheme'] as String?,
  clientOptions: MetaClientOptions.fromJson(
    json['clientOptions'] as Map<String, dynamic>,
  ),
  disableRegistration: json['disableRegistration'] as bool,
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
  mascotImageUrl: json['mascotImageUrl'] as String,
  bannerUrl: json['bannerUrl'] as String?,
  serverErrorImageUrl: json['serverErrorImageUrl'] as String?,
  infoImageUrl: json['infoImageUrl'] as String?,
  notFoundImageUrl: json['notFoundImageUrl'] as String?,
  iconUrl: json['iconUrl'] as String?,
  maxNoteTextLength: json['maxNoteTextLength'] as num,
  ads: (json['ads'] as List<dynamic>)
      .map((e) => MetaAd.fromJson(e as Map<String, dynamic>))
      .toList(),
  notesPerOneAd: json['notesPerOneAd'] as num,
  enableEmail: json['enableEmail'] as bool,
  enableServiceWorker: json['enableServiceWorker'] as bool,
  translatorAvailable: json['translatorAvailable'] as bool,
  sentryForFrontend: json['sentryForFrontend'] == null
      ? null
      : MetaLiteSentryForFrontend.fromJson(
          json['sentryForFrontend'] as Map<String, dynamic>,
        ),
  mediaProxy: json['mediaProxy'] as String,
  enableUrlPreview: json['enableUrlPreview'] as bool,
  backgroundImageUrl: json['backgroundImageUrl'] as String?,
  impressumUrl: json['impressumUrl'] as String?,
  logoImageUrl: json['logoImageUrl'] as String?,
  privacyPolicyUrl: json['privacyPolicyUrl'] as String?,
  inquiryUrl: json['inquiryUrl'] as String?,
  serverRules: (json['serverRules'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  themeColor: json['themeColor'] as String?,
  policies: RolePolicies.fromJson(json['policies'] as Map<String, dynamic>),
  noteSearchableScope: $enumDecode(
    _$MetaNoteSearchableScopeEnumMap,
    json['noteSearchableScope'],
  ),
  maxFileSize: json['maxFileSize'] as num,
  federation: $enumDecode(_$MetaFederationModeEnumMap, json['federation']),
);

Map<String, dynamic> _$MetaLiteToJson(_MetaLite instance) => <String, dynamic>{
  'maintainerName': instance.maintainerName,
  'maintainerEmail': instance.maintainerEmail,
  'version': instance.version,
  'providesTarball': instance.providesTarball,
  'name': instance.name,
  'shortName': instance.shortName,
  'uri': instance.uri,
  'description': instance.description,
  'langs': instance.langs,
  'tosUrl': instance.tosUrl,
  'repositoryUrl': instance.repositoryUrl,
  'feedbackUrl': instance.feedbackUrl,
  'defaultDarkTheme': instance.defaultDarkTheme,
  'defaultLightTheme': instance.defaultLightTheme,
  'clientOptions': instance.clientOptions,
  'disableRegistration': instance.disableRegistration,
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
  'maxNoteTextLength': instance.maxNoteTextLength,
  'ads': instance.ads,
  'notesPerOneAd': instance.notesPerOneAd,
  'enableEmail': instance.enableEmail,
  'enableServiceWorker': instance.enableServiceWorker,
  'translatorAvailable': instance.translatorAvailable,
  'sentryForFrontend': instance.sentryForFrontend,
  'mediaProxy': instance.mediaProxy,
  'enableUrlPreview': instance.enableUrlPreview,
  'backgroundImageUrl': instance.backgroundImageUrl,
  'impressumUrl': instance.impressumUrl,
  'logoImageUrl': instance.logoImageUrl,
  'privacyPolicyUrl': instance.privacyPolicyUrl,
  'inquiryUrl': instance.inquiryUrl,
  'serverRules': instance.serverRules,
  'themeColor': instance.themeColor,
  'policies': instance.policies,
  'noteSearchableScope':
      _$MetaNoteSearchableScopeEnumMap[instance.noteSearchableScope]!,
  'maxFileSize': instance.maxFileSize,
  'federation': _$MetaFederationModeEnumMap[instance.federation]!,
};

const _$MetaNoteSearchableScopeEnumMap = {
  MetaNoteSearchableScope.local: 'local',
  MetaNoteSearchableScope.global: 'global',
};

const _$MetaFederationModeEnumMap = {
  MetaFederationMode.all: 'all',
  MetaFederationMode.specified: 'specified',
  MetaFederationMode.none: 'none',
};

_MetaDetailedOnly _$MetaDetailedOnlyFromJson(Map<String, dynamic> json) =>
    _MetaDetailedOnly(
      features: json['features'] == null
          ? null
          : MetaFeatures.fromJson(json['features'] as Map<String, dynamic>),
      proxyAccountName: json['proxyAccountName'] as String?,
      requireSetup: json['requireSetup'] as bool,
      cacheRemoteFiles: json['cacheRemoteFiles'] as bool,
      cacheRemoteSensitiveFiles: json['cacheRemoteSensitiveFiles'] as bool,
    );

Map<String, dynamic> _$MetaDetailedOnlyToJson(_MetaDetailedOnly instance) =>
    <String, dynamic>{
      'features': instance.features,
      'proxyAccountName': instance.proxyAccountName,
      'requireSetup': instance.requireSetup,
      'cacheRemoteFiles': instance.cacheRemoteFiles,
      'cacheRemoteSensitiveFiles': instance.cacheRemoteSensitiveFiles,
    };

_MetaDetailed _$MetaDetailedFromJson(
  Map<String, dynamic> json,
) => _MetaDetailed(
  maintainerName: json['maintainerName'] as String?,
  maintainerEmail: json['maintainerEmail'] as String?,
  version: json['version'] as String,
  providesTarball: json['providesTarball'] as bool,
  name: json['name'] as String?,
  shortName: json['shortName'] as String?,
  uri: json['uri'] as String,
  description: json['description'] as String?,
  langs: (json['langs'] as List<dynamic>).map((e) => e as String).toList(),
  tosUrl: json['tosUrl'] as String?,
  repositoryUrl: json['repositoryUrl'] as String?,
  feedbackUrl: json['feedbackUrl'] as String?,
  defaultDarkTheme: json['defaultDarkTheme'] as String?,
  defaultLightTheme: json['defaultLightTheme'] as String?,
  clientOptions: MetaClientOptions.fromJson(
    json['clientOptions'] as Map<String, dynamic>,
  ),
  disableRegistration: json['disableRegistration'] as bool,
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
  mascotImageUrl: json['mascotImageUrl'] as String,
  bannerUrl: json['bannerUrl'] as String?,
  serverErrorImageUrl: json['serverErrorImageUrl'] as String?,
  infoImageUrl: json['infoImageUrl'] as String?,
  notFoundImageUrl: json['notFoundImageUrl'] as String?,
  iconUrl: json['iconUrl'] as String?,
  maxNoteTextLength: json['maxNoteTextLength'] as num,
  ads: (json['ads'] as List<dynamic>)
      .map((e) => MetaDetailedAdsItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  notesPerOneAd: json['notesPerOneAd'] as num,
  enableEmail: json['enableEmail'] as bool,
  enableServiceWorker: json['enableServiceWorker'] as bool,
  translatorAvailable: json['translatorAvailable'] as bool,
  sentryForFrontend: json['sentryForFrontend'] == null
      ? null
      : MetaDetailedSentryForFrontend.fromJson(
          json['sentryForFrontend'] as Map<String, dynamic>,
        ),
  mediaProxy: json['mediaProxy'] as String,
  enableUrlPreview: json['enableUrlPreview'] as bool,
  backgroundImageUrl: json['backgroundImageUrl'] as String?,
  impressumUrl: json['impressumUrl'] as String?,
  logoImageUrl: json['logoImageUrl'] as String?,
  privacyPolicyUrl: json['privacyPolicyUrl'] as String?,
  inquiryUrl: json['inquiryUrl'] as String?,
  serverRules: (json['serverRules'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  themeColor: json['themeColor'] as String?,
  policies: RolePolicies.fromJson(json['policies'] as Map<String, dynamic>),
  noteSearchableScope: $enumDecode(
    _$MetaDetailedNoteSearchableScopeEnumMap,
    json['noteSearchableScope'],
  ),
  maxFileSize: json['maxFileSize'] as num,
  federation: $enumDecode(_$MetaDetailedFederationEnumMap, json['federation']),
  features: json['features'] == null
      ? null
      : MetaDetailedFeatures.fromJson(json['features'] as Map<String, dynamic>),
  proxyAccountName: json['proxyAccountName'] as String?,
  requireSetup: json['requireSetup'] as bool,
  cacheRemoteFiles: json['cacheRemoteFiles'] as bool,
  cacheRemoteSensitiveFiles: json['cacheRemoteSensitiveFiles'] as bool,
);

Map<String, dynamic> _$MetaDetailedToJson(
  _MetaDetailed instance,
) => <String, dynamic>{
  'maintainerName': instance.maintainerName,
  'maintainerEmail': instance.maintainerEmail,
  'version': instance.version,
  'providesTarball': instance.providesTarball,
  'name': instance.name,
  'shortName': instance.shortName,
  'uri': instance.uri,
  'description': instance.description,
  'langs': instance.langs,
  'tosUrl': instance.tosUrl,
  'repositoryUrl': instance.repositoryUrl,
  'feedbackUrl': instance.feedbackUrl,
  'defaultDarkTheme': instance.defaultDarkTheme,
  'defaultLightTheme': instance.defaultLightTheme,
  'clientOptions': instance.clientOptions,
  'disableRegistration': instance.disableRegistration,
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
  'maxNoteTextLength': instance.maxNoteTextLength,
  'ads': instance.ads,
  'notesPerOneAd': instance.notesPerOneAd,
  'enableEmail': instance.enableEmail,
  'enableServiceWorker': instance.enableServiceWorker,
  'translatorAvailable': instance.translatorAvailable,
  'sentryForFrontend': instance.sentryForFrontend,
  'mediaProxy': instance.mediaProxy,
  'enableUrlPreview': instance.enableUrlPreview,
  'backgroundImageUrl': instance.backgroundImageUrl,
  'impressumUrl': instance.impressumUrl,
  'logoImageUrl': instance.logoImageUrl,
  'privacyPolicyUrl': instance.privacyPolicyUrl,
  'inquiryUrl': instance.inquiryUrl,
  'serverRules': instance.serverRules,
  'themeColor': instance.themeColor,
  'policies': instance.policies,
  'noteSearchableScope':
      _$MetaDetailedNoteSearchableScopeEnumMap[instance.noteSearchableScope]!,
  'maxFileSize': instance.maxFileSize,
  'federation': _$MetaDetailedFederationEnumMap[instance.federation]!,
  'features': instance.features,
  'proxyAccountName': instance.proxyAccountName,
  'requireSetup': instance.requireSetup,
  'cacheRemoteFiles': instance.cacheRemoteFiles,
  'cacheRemoteSensitiveFiles': instance.cacheRemoteSensitiveFiles,
};

const _$MetaDetailedNoteSearchableScopeEnumMap = {
  MetaDetailedNoteSearchableScope.local: 'local',
  MetaDetailedNoteSearchableScope.global: 'global',
};

const _$MetaDetailedFederationEnumMap = {
  MetaDetailedFederation.all: 'all',
  MetaDetailedFederation.specified: 'specified',
  MetaDetailedFederation.none: 'none',
};

_MetaClientOptions _$MetaClientOptionsFromJson(Map<String, dynamic> json) =>
    _MetaClientOptions(
      entrancePageStyle: $enumDecode(
        _$MetaEntrancePageStyleEnumMap,
        json['entrancePageStyle'],
      ),
      showTimelineForVisitor: json['showTimelineForVisitor'] as bool,
      showActivitiesForVisitor: json['showActivitiesForVisitor'] as bool,
    );

Map<String, dynamic> _$MetaClientOptionsToJson(_MetaClientOptions instance) =>
    <String, dynamic>{
      'entrancePageStyle':
          _$MetaEntrancePageStyleEnumMap[instance.entrancePageStyle]!,
      'showTimelineForVisitor': instance.showTimelineForVisitor,
      'showActivitiesForVisitor': instance.showActivitiesForVisitor,
    };

const _$MetaEntrancePageStyleEnumMap = {
  MetaEntrancePageStyle.classic: 'classic',
  MetaEntrancePageStyle.simple: 'simple',
};

_UserWebhook _$UserWebhookFromJson(Map<String, dynamic> json) => _UserWebhook(
  id: json['id'] as String,
  userId: json['userId'] as String,
  name: json['name'] as String,
  onValue: (json['on'] as List<dynamic>)
      .map((e) => $enumDecode(_$UserWebhookOnItemEnumMap, e))
      .toList(),
  url: json['url'] as String,
  secret: json['secret'] as String,
  active: json['active'] as bool,
  latestSentAt: json['latestSentAt'] == null
      ? null
      : DateTime.parse(json['latestSentAt'] as String),
  latestStatus: (json['latestStatus'] as num?)?.toInt(),
);

Map<String, dynamic> _$UserWebhookToJson(
  _UserWebhook instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'name': instance.name,
  'on': instance.onValue.map((e) => _$UserWebhookOnItemEnumMap[e]!).toList(),
  'url': instance.url,
  'secret': instance.secret,
  'active': instance.active,
  'latestSentAt': instance.latestSentAt?.toIso8601String(),
  'latestStatus': instance.latestStatus,
};

const _$UserWebhookOnItemEnumMap = {
  UserWebhookOnItem.mention: 'mention',
  UserWebhookOnItem.unfollow: 'unfollow',
  UserWebhookOnItem.follow: 'follow',
  UserWebhookOnItem.followed: 'followed',
  UserWebhookOnItem.note: 'note',
  UserWebhookOnItem.reply: 'reply',
  UserWebhookOnItem.renote: 'renote',
  UserWebhookOnItem.reaction: 'reaction',
};

_SystemWebhook _$SystemWebhookFromJson(Map<String, dynamic> json) =>
    _SystemWebhook(
      id: json['id'] as String,
      isActive: json['isActive'] as bool,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      latestSentAt: json['latestSentAt'] == null
          ? null
          : DateTime.parse(json['latestSentAt'] as String),
      latestStatus: json['latestStatus'] as num?,
      name: json['name'] as String,
      onValue: (json['on'] as List<dynamic>)
          .map((e) => $enumDecode(_$SystemWebhookOnItemEnumMap, e))
          .toList(),
      url: json['url'] as String,
      secret: json['secret'] as String,
    );

Map<String, dynamic> _$SystemWebhookToJson(
  _SystemWebhook instance,
) => <String, dynamic>{
  'id': instance.id,
  'isActive': instance.isActive,
  'updatedAt': instance.updatedAt.toIso8601String(),
  'latestSentAt': instance.latestSentAt?.toIso8601String(),
  'latestStatus': instance.latestStatus,
  'name': instance.name,
  'on': instance.onValue.map((e) => _$SystemWebhookOnItemEnumMap[e]!).toList(),
  'url': instance.url,
  'secret': instance.secret,
};

const _$SystemWebhookOnItemEnumMap = {
  SystemWebhookOnItem.abuseReport: 'abuseReport',
  SystemWebhookOnItem.abuseReportResolved: 'abuseReportResolved',
  SystemWebhookOnItem.userCreated: 'userCreated',
  SystemWebhookOnItem.inactiveModeratorsWarning: 'inactiveModeratorsWarning',
  SystemWebhookOnItem.inactiveModeratorsInvitationOnlyChanged:
      'inactiveModeratorsInvitationOnlyChanged',
};

_AbuseReportNotificationRecipient _$AbuseReportNotificationRecipientFromJson(
  Map<String, dynamic> json,
) => _AbuseReportNotificationRecipient(
  id: json['id'] as String,
  isActive: json['isActive'] as bool,
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  name: json['name'] as String,
  method: $enumDecode(
    _$AbuseReportNotificationRecipientMethodEnumMap,
    json['method'],
  ),
  userId: json['userId'] as String?,
  user: json['user'] == null
      ? null
      : UserLite.fromJson(json['user'] as Map<String, dynamic>),
  systemWebhookId: json['systemWebhookId'] as String?,
  systemWebhook: json['systemWebhook'] == null
      ? null
      : SystemWebhook.fromJson(json['systemWebhook'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AbuseReportNotificationRecipientToJson(
  _AbuseReportNotificationRecipient instance,
) => <String, dynamic>{
  'id': instance.id,
  'isActive': instance.isActive,
  'updatedAt': instance.updatedAt.toIso8601String(),
  'name': instance.name,
  'method': _$AbuseReportNotificationRecipientMethodEnumMap[instance.method]!,
  'userId': instance.userId,
  'user': instance.user,
  'systemWebhookId': instance.systemWebhookId,
  'systemWebhook': instance.systemWebhook,
};

const _$AbuseReportNotificationRecipientMethodEnumMap = {
  AbuseReportNotificationRecipientMethod.email: 'email',
  AbuseReportNotificationRecipientMethod.webhook: 'webhook',
};

_ChatMessage _$ChatMessageFromJson(Map<String, dynamic> json) => _ChatMessage(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  fromUserId: json['fromUserId'] as String,
  fromUser: UserLite.fromJson(json['fromUser'] as Map<String, dynamic>),
  toUserId: json['toUserId'] as String?,
  toUser: json['toUser'] == null
      ? null
      : UserLite.fromJson(json['toUser'] as Map<String, dynamic>),
  toRoomId: json['toRoomId'] as String?,
  toRoom: json['toRoom'] == null
      ? null
      : ChatRoom.fromJson(json['toRoom'] as Map<String, dynamic>),
  text: json['text'] as String?,
  fileId: json['fileId'] as String?,
  file: json['file'] == null
      ? null
      : DriveFile.fromJson(json['file'] as Map<String, dynamic>),
  isRead: json['isRead'] as bool?,
  reactions: (json['reactions'] as List<dynamic>)
      .map((e) => ChatMessageReactionsItem.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ChatMessageToJson(_ChatMessage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'fromUserId': instance.fromUserId,
      'fromUser': instance.fromUser,
      'toUserId': instance.toUserId,
      'toUser': instance.toUser,
      'toRoomId': instance.toRoomId,
      'toRoom': instance.toRoom,
      'text': instance.text,
      'fileId': instance.fileId,
      'file': instance.file,
      'isRead': instance.isRead,
      'reactions': instance.reactions,
    };

_ChatMessageLite _$ChatMessageLiteFromJson(Map<String, dynamic> json) =>
    _ChatMessageLite(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      fromUserId: json['fromUserId'] as String,
      fromUser: json['fromUser'] == null
          ? null
          : UserLite.fromJson(json['fromUser'] as Map<String, dynamic>),
      toUserId: json['toUserId'] as String?,
      toRoomId: json['toRoomId'] as String?,
      text: json['text'] as String?,
      fileId: json['fileId'] as String?,
      file: json['file'] == null
          ? null
          : DriveFile.fromJson(json['file'] as Map<String, dynamic>),
      reactions: (json['reactions'] as List<dynamic>)
          .map(
            (e) => ChatMessageLiteReactionsItem.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    );

Map<String, dynamic> _$ChatMessageLiteToJson(_ChatMessageLite instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'fromUserId': instance.fromUserId,
      'fromUser': instance.fromUser,
      'toUserId': instance.toUserId,
      'toRoomId': instance.toRoomId,
      'text': instance.text,
      'fileId': instance.fileId,
      'file': instance.file,
      'reactions': instance.reactions,
    };

_ChatMessageLiteFor1on1 _$ChatMessageLiteFor1on1FromJson(
  Map<String, dynamic> json,
) => _ChatMessageLiteFor1on1(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  fromUserId: json['fromUserId'] as String,
  toUserId: json['toUserId'] as String,
  text: json['text'] as String?,
  fileId: json['fileId'] as String?,
  file: json['file'] == null
      ? null
      : DriveFile.fromJson(json['file'] as Map<String, dynamic>),
  reactions: (json['reactions'] as List<dynamic>)
      .map(
        (e) => ChatMessageLiteFor1on1ReactionsItem.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
);

Map<String, dynamic> _$ChatMessageLiteFor1on1ToJson(
  _ChatMessageLiteFor1on1 instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'fromUserId': instance.fromUserId,
  'toUserId': instance.toUserId,
  'text': instance.text,
  'fileId': instance.fileId,
  'file': instance.file,
  'reactions': instance.reactions,
};

_ChatMessageLiteForRoom _$ChatMessageLiteForRoomFromJson(
  Map<String, dynamic> json,
) => _ChatMessageLiteForRoom(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  fromUserId: json['fromUserId'] as String,
  fromUser: UserLite.fromJson(json['fromUser'] as Map<String, dynamic>),
  toRoomId: json['toRoomId'] as String,
  text: json['text'] as String?,
  fileId: json['fileId'] as String?,
  file: json['file'] == null
      ? null
      : DriveFile.fromJson(json['file'] as Map<String, dynamic>),
  reactions: (json['reactions'] as List<dynamic>)
      .map(
        (e) => ChatMessageLiteForRoomReactionsItem.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
);

Map<String, dynamic> _$ChatMessageLiteForRoomToJson(
  _ChatMessageLiteForRoom instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'fromUserId': instance.fromUserId,
  'fromUser': instance.fromUser,
  'toRoomId': instance.toRoomId,
  'text': instance.text,
  'fileId': instance.fileId,
  'file': instance.file,
  'reactions': instance.reactions,
};

_ChatRoom _$ChatRoomFromJson(Map<String, dynamic> json) => _ChatRoom(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  ownerId: json['ownerId'] as String,
  owner: UserLite.fromJson(json['owner'] as Map<String, dynamic>),
  name: json['name'] as String,
  description: json['description'] as String,
  isMuted: json['isMuted'] as bool?,
  invitationExists: json['invitationExists'] as bool?,
);

Map<String, dynamic> _$ChatRoomToJson(_ChatRoom instance) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'ownerId': instance.ownerId,
  'owner': instance.owner,
  'name': instance.name,
  'description': instance.description,
  'isMuted': instance.isMuted,
  'invitationExists': instance.invitationExists,
};

_ChatRoomInvitation _$ChatRoomInvitationFromJson(Map<String, dynamic> json) =>
    _ChatRoomInvitation(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      userId: json['userId'] as String,
      user: UserLite.fromJson(json['user'] as Map<String, dynamic>),
      roomId: json['roomId'] as String,
      room: ChatRoom.fromJson(json['room'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChatRoomInvitationToJson(_ChatRoomInvitation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'userId': instance.userId,
      'user': instance.user,
      'roomId': instance.roomId,
      'room': instance.room,
    };

_ChatRoomMembership _$ChatRoomMembershipFromJson(Map<String, dynamic> json) =>
    _ChatRoomMembership(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      userId: json['userId'] as String,
      user: json['user'] == null
          ? null
          : UserLite.fromJson(json['user'] as Map<String, dynamic>),
      roomId: json['roomId'] as String,
      room: json['room'] == null
          ? null
          : ChatRoom.fromJson(json['room'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChatRoomMembershipToJson(_ChatRoomMembership instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'userId': instance.userId,
      'user': instance.user,
      'roomId': instance.roomId,
      'room': instance.room,
    };
