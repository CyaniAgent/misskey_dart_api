// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/generated/generated.dart';
import '../../models/json.dart';

part 'account_models.g.dart';

enum AccountAppsRequestSort {
  @JsonValue('+createdAt')
  pluscreatedAt,
  @JsonValue('-createdAt')
  minuscreatedAt,
  @JsonValue('+lastUsedAt')
  pluslastUsedAt,
  @JsonValue('-lastUsedAt')
  minuslastUsedAt,
}

enum AccountAuthorizedAppsRequestSort { desc, asc }

enum AccountClaimAchievementRequestName {
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

enum AccountNotificationsRequestIncludeTypesItem {
  note,
  follow,
  mention,
  reply,
  renote,
  quote,
  reaction,
  pollEnded,
  scheduledNotePosted,
  scheduledNotePostFailed,
  receiveFollowRequest,
  followRequestAccepted,
  roleAssigned,
  chatRoomInvitationReceived,
  achievementEarned,
  exportCompleted,
  login,
  createToken,
  app,
  test,
  pollVote,
  groupInvited,
}

enum AccountNotificationsRequestExcludeTypesItem {
  note,
  follow,
  mention,
  reply,
  renote,
  quote,
  reaction,
  pollEnded,
  scheduledNotePosted,
  scheduledNotePostFailed,
  receiveFollowRequest,
  followRequestAccepted,
  roleAssigned,
  chatRoomInvitationReceived,
  achievementEarned,
  exportCompleted,
  login,
  createToken,
  app,
  test,
  pollVote,
  groupInvited,
}

enum AccountNotificationsGroupedRequestIncludeTypesItem {
  note,
  follow,
  mention,
  reply,
  renote,
  quote,
  reaction,
  pollEnded,
  scheduledNotePosted,
  scheduledNotePostFailed,
  receiveFollowRequest,
  followRequestAccepted,
  roleAssigned,
  chatRoomInvitationReceived,
  achievementEarned,
  exportCompleted,
  login,
  createToken,
  app,
  test,
  pollVote,
  groupInvited,
}

enum AccountNotificationsGroupedRequestExcludeTypesItem {
  note,
  follow,
  mention,
  reply,
  renote,
  quote,
  reaction,
  pollEnded,
  scheduledNotePosted,
  scheduledNotePostFailed,
  receiveFollowRequest,
  followRequestAccepted,
  roleAssigned,
  chatRoomInvitationReceived,
  achievementEarned,
  exportCompleted,
  login,
  createToken,
  app,
  test,
  pollVote,
  groupInvited,
}

enum AccountUpdateRequestLang {
  ach,
  ady,
  af,
  @JsonValue('af-NA')
  afNA,
  @JsonValue('af-ZA')
  afZA,
  ak,
  ar,
  @JsonValue('ar-AR')
  arAR,
  @JsonValue('ar-MA')
  arMA,
  @JsonValue('ar-SA')
  arSA,
  @JsonValue('ay-BO')
  ayBO,
  az,
  @JsonValue('az-AZ')
  azAZ,
  @JsonValue('be-BY')
  beBY,
  bg,
  @JsonValue('bg-BG')
  bgBG,
  bn,
  @JsonValue('bn-IN')
  bnIN,
  @JsonValue('bn-BD')
  bnBD,
  br,
  @JsonValue('bs-BA')
  bsBA,
  ca,
  @JsonValue('ca-ES')
  caES,
  cak,
  @JsonValue('ck-US')
  ckUS,
  cs,
  @JsonValue('cs-CZ')
  csCZ,
  cy,
  @JsonValue('cy-GB')
  cyGB,
  da,
  @JsonValue('da-DK')
  daDK,
  de,
  @JsonValue('de-AT')
  deAT,
  @JsonValue('de-DE')
  deDE,
  @JsonValue('de-CH')
  deCH,
  dsb,
  el,
  @JsonValue('el-GR')
  elGR,
  en,
  @JsonValue('en-GB')
  enGB,
  @JsonValue('en-AU')
  enAU,
  @JsonValue('en-CA')
  enCA,
  @JsonValue('en-IE')
  enIE,
  @JsonValue('en-IN')
  enIN,
  @JsonValue('en-PI')
  enPI,
  @JsonValue('en-SG')
  enSG,
  @JsonValue('en-UD')
  enUD,
  @JsonValue('en-US')
  enUS,
  @JsonValue('en-ZA')
  enZA,
  @JsonValue('en@pirate')
  enPirate,
  eo,
  @JsonValue('eo-EO')
  eoEO,
  es,
  @JsonValue('es-AR')
  esAR,
  @JsonValue('es-419')
  es419,
  @JsonValue('es-CL')
  esCL,
  @JsonValue('es-CO')
  esCO,
  @JsonValue('es-EC')
  esEC,
  @JsonValue('es-ES')
  esES,
  @JsonValue('es-LA')
  esLA,
  @JsonValue('es-NI')
  esNI,
  @JsonValue('es-MX')
  esMX,
  @JsonValue('es-US')
  esUS,
  @JsonValue('es-VE')
  esVE,
  et,
  @JsonValue('et-EE')
  etEE,
  eu,
  @JsonValue('eu-ES')
  euES,
  fa,
  @JsonValue('fa-IR')
  faIR,
  @JsonValue('fb-LT')
  fbLT,
  ff,
  fi,
  @JsonValue('fi-FI')
  fiFI,
  fo,
  @JsonValue('fo-FO')
  foFO,
  fr,
  @JsonValue('fr-CA')
  frCA,
  @JsonValue('fr-FR')
  frFR,
  @JsonValue('fr-BE')
  frBE,
  @JsonValue('fr-CH')
  frCH,
  @JsonValue('fy-NL')
  fyNL,
  ga,
  @JsonValue('ga-IE')
  gaIE,
  gd,
  gl,
  @JsonValue('gl-ES')
  glES,
  @JsonValue('gn-PY')
  gnPY,
  @JsonValue('gu-IN')
  guIN,
  gv,
  @JsonValue('gx-GR')
  gxGR,
  he,
  @JsonValue('he-IL')
  heIL,
  hi,
  @JsonValue('hi-IN')
  hiIN,
  hr,
  @JsonValue('hr-HR')
  hrHR,
  hsb,
  ht,
  hu,
  @JsonValue('hu-HU')
  huHU,
  hy,
  @JsonValue('hy-AM')
  hyAM,
  id,
  @JsonValue('id-ID')
  idID,
  @JsonValue('is')
  is_,
  @JsonValue('is-IS')
  isIS,
  it,
  @JsonValue('it-IT')
  itIT,
  ja,
  @JsonValue('ja-JP')
  jaJP,
  @JsonValue('jv-ID')
  jvID,
  @JsonValue('ka-GE')
  kaGE,
  @JsonValue('kk-KZ')
  kkKZ,
  km,
  kl,
  @JsonValue('km-KH')
  kmKH,
  kab,
  kn,
  @JsonValue('kn-IN')
  knIN,
  ko,
  @JsonValue('ko-KR')
  koKR,
  @JsonValue('ku-TR')
  kuTR,
  kw,
  la,
  @JsonValue('la-VA')
  laVA,
  lb,
  @JsonValue('li-NL')
  liNL,
  lt,
  @JsonValue('lt-LT')
  ltLT,
  lv,
  @JsonValue('lv-LV')
  lvLV,
  mai,
  @JsonValue('mg-MG')
  mgMG,
  mk,
  @JsonValue('mk-MK')
  mkMK,
  ml,
  @JsonValue('ml-IN')
  mlIN,
  @JsonValue('mn-MN')
  mnMN,
  mr,
  @JsonValue('mr-IN')
  mrIN,
  ms,
  @JsonValue('ms-MY')
  msMY,
  mt,
  @JsonValue('mt-MT')
  mtMT,
  my,
  no,
  nb,
  @JsonValue('nb-NO')
  nbNO,
  ne,
  @JsonValue('ne-NP')
  neNP,
  nl,
  @JsonValue('nl-BE')
  nlBE,
  @JsonValue('nl-NL')
  nlNL,
  @JsonValue('nn-NO')
  nnNO,
  oc,
  @JsonValue('or-IN')
  orIN,
  pa,
  @JsonValue('pa-IN')
  paIN,
  pl,
  @JsonValue('pl-PL')
  plPL,
  @JsonValue('ps-AF')
  psAF,
  pt,
  @JsonValue('pt-BR')
  ptBR,
  @JsonValue('pt-PT')
  ptPT,
  @JsonValue('qu-PE')
  quPE,
  @JsonValue('rm-CH')
  rmCH,
  ro,
  @JsonValue('ro-RO')
  roRO,
  ru,
  @JsonValue('ru-RU')
  ruRU,
  @JsonValue('sa-IN')
  saIN,
  @JsonValue('se-NO')
  seNO,
  sh,
  @JsonValue('si-LK')
  siLK,
  sk,
  @JsonValue('sk-SK')
  skSK,
  sl,
  @JsonValue('sl-SI')
  slSI,
  @JsonValue('so-SO')
  soSO,
  sq,
  @JsonValue('sq-AL')
  sqAL,
  sr,
  @JsonValue('sr-RS')
  srRS,
  su,
  sv,
  @JsonValue('sv-SE')
  svSE,
  sw,
  @JsonValue('sw-KE')
  swKE,
  ta,
  @JsonValue('ta-IN')
  taIN,
  te,
  @JsonValue('te-IN')
  teIN,
  tg,
  @JsonValue('tg-TJ')
  tgTJ,
  th,
  @JsonValue('th-TH')
  thTH,
  fil,
  tlh,
  tr,
  @JsonValue('tr-TR')
  trTR,
  @JsonValue('tt-RU')
  ttRU,
  uk,
  @JsonValue('uk-UA')
  ukUA,
  ur,
  @JsonValue('ur-PK')
  urPK,
  uz,
  @JsonValue('uz-UZ')
  uzUZ,
  vi,
  @JsonValue('vi-VN')
  viVN,
  @JsonValue('xh-ZA')
  xhZA,
  yi,
  @JsonValue('yi-DE')
  yiDE,
  zh,
  @JsonValue('zh-Hans')
  zhHans,
  @JsonValue('zh-Hant')
  zhHant,
  @JsonValue('zh-CN')
  zhCN,
  @JsonValue('zh-HK')
  zhHK,
  @JsonValue('zh-SG')
  zhSG,
  @JsonValue('zh-TW')
  zhTW,
  @JsonValue('zu-ZA')
  zuZA,
}

enum AccountWebhooksCreateRequestOnItem {
  mention,
  unfollow,
  follow,
  followed,
  note,
  reply,
  renote,
  reaction,
}

enum AccountWebhooksCreateResponseOnItem {
  mention,
  unfollow,
  follow,
  followed,
  note,
  reply,
  renote,
  reaction,
}

enum AccountWebhooksTestRequestType {
  mention,
  unfollow,
  follow,
  followed,
  note,
  reply,
  renote,
  reaction,
}

enum AccountWebhooksUpdateRequestOnItem {
  mention,
  unfollow,
  follow,
  followed,
  note,
  reply,
  renote,
  reaction,
}

enum AccountSwRegisterResponseState {
  @JsonValue('already-subscribed')
  alreadySubscribed,
  subscribed,
}

sealed class AccountRevokeTokenRequest {
  const AccountRevokeTokenRequest();

  Map<String, dynamic> toJson();
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountTwoFactorDoneRequest {
  const AccountTwoFactorDoneRequest({required this.token});
  final String token;

  factory AccountTwoFactorDoneRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountTwoFactorDoneRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AccountTwoFactorDoneRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountTwoFactorDoneResponse {
  const AccountTwoFactorDoneResponse({required this.backupCodes});
  final List<String> backupCodes;

  factory AccountTwoFactorDoneResponse.fromJson(Map<String, dynamic> json) =>
      _$AccountTwoFactorDoneResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AccountTwoFactorDoneResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountTwoFactorKeyDoneRequest {
  const AccountTwoFactorKeyDoneRequest({
    required this.password,
    this.token,
    required this.name,
    required this.credential,
  });
  final String password;
  final String? token;
  final String name;
  final JsonMap credential;

  factory AccountTwoFactorKeyDoneRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountTwoFactorKeyDoneRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AccountTwoFactorKeyDoneRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountTwoFactorKeyDoneResponse {
  const AccountTwoFactorKeyDoneResponse({required this.id, required this.name});
  final String id;
  final String name;

  factory AccountTwoFactorKeyDoneResponse.fromJson(Map<String, dynamic> json) =>
      _$AccountTwoFactorKeyDoneResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AccountTwoFactorKeyDoneResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountTwoFactorPasswordLessRequest {
  const AccountTwoFactorPasswordLessRequest({required this.value});
  final bool value;

  factory AccountTwoFactorPasswordLessRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$AccountTwoFactorPasswordLessRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AccountTwoFactorPasswordLessRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountTwoFactorRegisterRequest {
  const AccountTwoFactorRegisterRequest({required this.password, this.token});
  final String password;
  final String? token;

  factory AccountTwoFactorRegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountTwoFactorRegisterRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AccountTwoFactorRegisterRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountTwoFactorRegisterResponse {
  const AccountTwoFactorRegisterResponse({
    required this.qr,
    required this.url,
    required this.secret,
    required this.label,
    required this.issuer,
  });
  final String qr;
  final String url;
  final String secret;
  final String label;
  final String issuer;

  factory AccountTwoFactorRegisterResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$AccountTwoFactorRegisterResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AccountTwoFactorRegisterResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountTwoFactorRegisterKeyRequest {
  const AccountTwoFactorRegisterKeyRequest({
    required this.password,
    this.token,
  });
  final String password;
  final String? token;

  factory AccountTwoFactorRegisterKeyRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$AccountTwoFactorRegisterKeyRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AccountTwoFactorRegisterKeyRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountTwoFactorRemoveKeyRequest {
  const AccountTwoFactorRemoveKeyRequest({
    required this.password,
    this.token,
    required this.credentialId,
  });
  final String password;
  final String? token;
  final String credentialId;

  factory AccountTwoFactorRemoveKeyRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$AccountTwoFactorRemoveKeyRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AccountTwoFactorRemoveKeyRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountTwoFactorUnregisterRequest {
  const AccountTwoFactorUnregisterRequest({required this.password, this.token});
  final String password;
  final String? token;

  factory AccountTwoFactorUnregisterRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$AccountTwoFactorUnregisterRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AccountTwoFactorUnregisterRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountTwoFactorUpdateKeyRequest {
  const AccountTwoFactorUpdateKeyRequest({
    required this.name,
    required this.credentialId,
  });
  final String name;
  final String credentialId;

  factory AccountTwoFactorUpdateKeyRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$AccountTwoFactorUpdateKeyRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AccountTwoFactorUpdateKeyRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountAppsRequest {
  const AccountAppsRequest({this.sort});
  final AccountAppsRequestSort? sort;

  factory AccountAppsRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountAppsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AccountAppsRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountAppsResponseItem {
  const AccountAppsResponseItem({
    required this.id,
    this.name,
    required this.createdAt,
    this.lastUsedAt,
    required this.permission,
    this.iconUrl,
    this.description,
  });
  final String id;
  final String? name;
  final DateTime createdAt;
  final DateTime? lastUsedAt;
  final List<String> permission;
  final String? iconUrl;
  final String? description;

  factory AccountAppsResponseItem.fromJson(Map<String, dynamic> json) =>
      _$AccountAppsResponseItemFromJson(json);

  Map<String, dynamic> toJson() => _$AccountAppsResponseItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountAuthorizedAppsRequest {
  const AccountAuthorizedAppsRequest({
    this.limit = 10,
    this.offset = 0,
    this.sort = AccountAuthorizedAppsRequestSort.desc,
  });
  final int limit;
  final int offset;
  final AccountAuthorizedAppsRequestSort sort;

  factory AccountAuthorizedAppsRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountAuthorizedAppsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AccountAuthorizedAppsRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountAuthorizedAppsResponseItem {
  const AccountAuthorizedAppsResponseItem({
    required this.id,
    required this.name,
    @JsonKey(name: 'callbackUrl', includeIfNull: true)
    required this.callbackUrl,
    required this.permission,
    this.isAuthorized,
  });
  final String id;
  final String name;
  final String? callbackUrl;
  final List<String> permission;
  final bool? isAuthorized;

  factory AccountAuthorizedAppsResponseItem.fromJson(
    Map<String, dynamic> json,
  ) => _$AccountAuthorizedAppsResponseItemFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AccountAuthorizedAppsResponseItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountChangePasswordRequest {
  const AccountChangePasswordRequest({
    required this.currentPassword,
    required this.newPassword,
    this.token,
  });
  final String currentPassword;
  final String newPassword;
  final String? token;

  factory AccountChangePasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountChangePasswordRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AccountChangePasswordRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountClaimAchievementRequest {
  const AccountClaimAchievementRequest({required this.name});
  final AccountClaimAchievementRequestName name;

  factory AccountClaimAchievementRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountClaimAchievementRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AccountClaimAchievementRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountDeleteAccountRequest {
  const AccountDeleteAccountRequest({required this.password, this.token});
  final String password;
  final String? token;

  factory AccountDeleteAccountRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountDeleteAccountRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AccountDeleteAccountRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountExportFollowingRequest {
  const AccountExportFollowingRequest({
    this.excludeMuting = false,
    this.excludeInactive = false,
  });
  final bool excludeMuting;
  final bool excludeInactive;

  factory AccountExportFollowingRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountExportFollowingRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AccountExportFollowingRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountFavoritesRequest {
  const AccountFavoritesRequest({
    this.limit = 10,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
  });
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;

  factory AccountFavoritesRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountFavoritesRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AccountFavoritesRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountGalleryLikesRequest {
  const AccountGalleryLikesRequest({
    this.limit = 10,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
  });
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;

  factory AccountGalleryLikesRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountGalleryLikesRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AccountGalleryLikesRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountGalleryLikesResponseItem {
  const AccountGalleryLikesResponseItem({required this.id, required this.post});
  final String id;
  final GalleryPost post;

  factory AccountGalleryLikesResponseItem.fromJson(Map<String, dynamic> json) =>
      _$AccountGalleryLikesResponseItemFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AccountGalleryLikesResponseItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountGalleryPostsRequest {
  const AccountGalleryPostsRequest({
    this.limit = 10,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
  });
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;

  factory AccountGalleryPostsRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountGalleryPostsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AccountGalleryPostsRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountImportAntennasRequest {
  const AccountImportAntennasRequest({required this.fileId});
  final String fileId;

  factory AccountImportAntennasRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountImportAntennasRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AccountImportAntennasRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountImportBlockingRequest {
  const AccountImportBlockingRequest({required this.fileId});
  final String fileId;

  factory AccountImportBlockingRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountImportBlockingRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AccountImportBlockingRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountImportFollowingRequest {
  const AccountImportFollowingRequest({required this.fileId, this.withReplies});
  final String fileId;
  final bool? withReplies;

  factory AccountImportFollowingRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountImportFollowingRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AccountImportFollowingRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountImportMutingRequest {
  const AccountImportMutingRequest({required this.fileId});
  final String fileId;

  factory AccountImportMutingRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountImportMutingRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AccountImportMutingRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountImportUserListsRequest {
  const AccountImportUserListsRequest({required this.fileId});
  final String fileId;

  factory AccountImportUserListsRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountImportUserListsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AccountImportUserListsRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountMoveRequest {
  const AccountMoveRequest({required this.moveToAccount});
  final String moveToAccount;

  factory AccountMoveRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountMoveRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AccountMoveRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountNotificationsRequest {
  const AccountNotificationsRequest({
    this.limit = 10,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    this.markAsRead = true,
    this.includeTypes,
    this.excludeTypes,
  });
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final bool markAsRead;
  final List<AccountNotificationsRequestIncludeTypesItem>? includeTypes;
  final List<AccountNotificationsRequestExcludeTypesItem>? excludeTypes;

  factory AccountNotificationsRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountNotificationsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AccountNotificationsRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountNotificationsGroupedRequest {
  const AccountNotificationsGroupedRequest({
    this.limit = 10,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    this.markAsRead = true,
    this.includeTypes,
    this.excludeTypes,
  });
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final bool markAsRead;
  final List<AccountNotificationsGroupedRequestIncludeTypesItem>? includeTypes;
  final List<AccountNotificationsGroupedRequestExcludeTypesItem>? excludeTypes;

  factory AccountNotificationsGroupedRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$AccountNotificationsGroupedRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AccountNotificationsGroupedRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountPageLikesRequest {
  const AccountPageLikesRequest({
    this.limit = 10,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
  });
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;

  factory AccountPageLikesRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountPageLikesRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AccountPageLikesRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountPageLikesResponseItem {
  const AccountPageLikesResponseItem({required this.id, required this.page});
  final String id;
  final Page page;

  factory AccountPageLikesResponseItem.fromJson(Map<String, dynamic> json) =>
      _$AccountPageLikesResponseItemFromJson(json);

  Map<String, dynamic> toJson() => _$AccountPageLikesResponseItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountPagesRequest {
  const AccountPagesRequest({
    this.limit = 10,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
  });
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;

  factory AccountPagesRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountPagesRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AccountPagesRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountPinRequest {
  const AccountPinRequest({required this.noteId});
  final String noteId;

  factory AccountPinRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountPinRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AccountPinRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountReadAnnouncementRequest {
  const AccountReadAnnouncementRequest({required this.announcementId});
  final String announcementId;

  factory AccountReadAnnouncementRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountReadAnnouncementRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AccountReadAnnouncementRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountRegenerateTokenRequest {
  const AccountRegenerateTokenRequest({required this.password});
  final String password;

  factory AccountRegenerateTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountRegenerateTokenRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AccountRegenerateTokenRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountRegistryGetRequest {
  const AccountRegistryGetRequest({
    required this.key,
    required this.scope,
    this.domain,
  });
  final String key;
  final List<String> scope;
  final String? domain;

  factory AccountRegistryGetRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountRegistryGetRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AccountRegistryGetRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountRegistryGetAllRequest {
  const AccountRegistryGetAllRequest({required this.scope, this.domain});
  final List<String> scope;
  final String? domain;

  factory AccountRegistryGetAllRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountRegistryGetAllRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AccountRegistryGetAllRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountRegistryGetDetailRequest {
  const AccountRegistryGetDetailRequest({
    required this.key,
    required this.scope,
    this.domain,
  });
  final String key;
  final List<String> scope;
  final String? domain;

  factory AccountRegistryGetDetailRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountRegistryGetDetailRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AccountRegistryGetDetailRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountRegistryGetDetailResponse {
  const AccountRegistryGetDetailResponse({
    required this.updatedAt,
    required this.value,
  });
  final String updatedAt;
  final JsonMap value;

  factory AccountRegistryGetDetailResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$AccountRegistryGetDetailResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AccountRegistryGetDetailResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountRegistryKeysRequest {
  const AccountRegistryKeysRequest({required this.scope, this.domain});
  final List<String> scope;
  final String? domain;

  factory AccountRegistryKeysRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountRegistryKeysRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AccountRegistryKeysRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountRegistryKeysWithTypeRequest {
  const AccountRegistryKeysWithTypeRequest({required this.scope, this.domain});
  final List<String> scope;
  final String? domain;

  factory AccountRegistryKeysWithTypeRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$AccountRegistryKeysWithTypeRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AccountRegistryKeysWithTypeRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountRegistryRemoveRequest {
  const AccountRegistryRemoveRequest({
    required this.key,
    required this.scope,
    this.domain,
  });
  final String key;
  final List<String> scope;
  final String? domain;

  factory AccountRegistryRemoveRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountRegistryRemoveRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AccountRegistryRemoveRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountRegistryScopesWithDomainResponseItem {
  const AccountRegistryScopesWithDomainResponseItem({
    required this.scopes,
    @JsonKey(name: 'domain', includeIfNull: true) required this.domain,
  });
  final List<List<String>> scopes;
  final String? domain;

  factory AccountRegistryScopesWithDomainResponseItem.fromJson(
    Map<String, dynamic> json,
  ) => _$AccountRegistryScopesWithDomainResponseItemFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AccountRegistryScopesWithDomainResponseItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountRegistrySetRequest {
  const AccountRegistrySetRequest({
    required this.key,
    required this.value,
    required this.scope,
    this.domain,
  });
  final String key;
  final JsonMap value;
  final List<String> scope;
  final String? domain;

  factory AccountRegistrySetRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountRegistrySetRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AccountRegistrySetRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountRevokeTokenRequestByTokenId extends AccountRevokeTokenRequest {
  const AccountRevokeTokenRequestByTokenId({required this.tokenId}) : super();
  final String tokenId;

  factory AccountRevokeTokenRequestByTokenId.fromJson(
    Map<String, dynamic> json,
  ) => _$AccountRevokeTokenRequestByTokenIdFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AccountRevokeTokenRequestByTokenIdToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountRevokeTokenRequestByToken extends AccountRevokeTokenRequest {
  const AccountRevokeTokenRequestByToken({
    @JsonKey(name: 'token', includeIfNull: true) required this.token,
  }) : super();
  final String? token;

  factory AccountRevokeTokenRequestByToken.fromJson(
    Map<String, dynamic> json,
  ) => _$AccountRevokeTokenRequestByTokenFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AccountRevokeTokenRequestByTokenToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountSigninHistoryRequest {
  const AccountSigninHistoryRequest({
    this.limit = 10,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
  });
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;

  factory AccountSigninHistoryRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountSigninHistoryRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AccountSigninHistoryRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountUnpinRequest {
  const AccountUnpinRequest({required this.noteId});
  final String noteId;

  factory AccountUnpinRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountUnpinRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AccountUnpinRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountUpdateRequestAvatarDecorationsItem {
  const AccountUpdateRequestAvatarDecorationsItem({
    required this.id,
    this.angle,
    this.flipH,
    this.offsetX,
    this.offsetY,
  });
  final String id;
  final num? angle;
  final bool? flipH;
  final num? offsetX;
  final num? offsetY;

  factory AccountUpdateRequestAvatarDecorationsItem.fromJson(
    Map<String, dynamic> json,
  ) => _$AccountUpdateRequestAvatarDecorationsItemFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AccountUpdateRequestAvatarDecorationsItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountUpdateRequestFieldsItem {
  const AccountUpdateRequestFieldsItem({
    required this.name,
    required this.value,
  });
  final String name;
  final String value;

  factory AccountUpdateRequestFieldsItem.fromJson(Map<String, dynamic> json) =>
      _$AccountUpdateRequestFieldsItemFromJson(json);

  Map<String, dynamic> toJson() => _$AccountUpdateRequestFieldsItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountUpdateRequestNotificationRecieveConfig {
  const AccountUpdateRequestNotificationRecieveConfig({
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

  factory AccountUpdateRequestNotificationRecieveConfig.fromJson(
    Map<String, dynamic> json,
  ) => _$AccountUpdateRequestNotificationRecieveConfigFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AccountUpdateRequestNotificationRecieveConfigToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountUpdateRequest {
  const AccountUpdateRequest({
    this.name,
    this.description,
    this.followedMessage,
    this.location,
    this.birthday,
    this.lang,
    this.avatarId,
    this.avatarDecorations,
    this.bannerId,
    this.fields,
    this.isLocked,
    this.isExplorable,
    this.hideOnlineStatus,
    this.publicReactions,
    this.carefulBot,
    this.autoAcceptFollowed,
    this.noCrawle,
    this.preventAiLearning,
    this.requireSigninToViewContents,
    this.makeNotesFollowersOnlyBefore,
    this.makeNotesHiddenBefore,
    this.isBot,
    this.isCat,
    this.injectFeaturedNote,
    this.receiveAnnouncementEmail,
    this.alwaysMarkNsfw,
    this.autoSensitive,
    this.followingVisibility,
    this.followersVisibility,
    this.chatScope,
    this.pinnedPageId,
    this.mutedWords,
    this.hardMutedWords,
    this.mutedInstances,
    this.notificationRecieveConfig,
    this.emailNotificationTypes,
    this.alsoKnownAs,
  });
  final String? name;
  final String? description;
  final String? followedMessage;
  final String? location;
  final String? birthday;
  final AccountUpdateRequestLang? lang;
  final String? avatarId;
  final List<AccountUpdateRequestAvatarDecorationsItem>? avatarDecorations;
  final String? bannerId;
  final List<AccountUpdateRequestFieldsItem>? fields;
  final bool? isLocked;
  final bool? isExplorable;
  final bool? hideOnlineStatus;
  final bool? publicReactions;
  final bool? carefulBot;
  final bool? autoAcceptFollowed;
  final bool? noCrawle;
  final bool? preventAiLearning;
  final bool? requireSigninToViewContents;
  final int? makeNotesFollowersOnlyBefore;
  final int? makeNotesHiddenBefore;
  final bool? isBot;
  final bool? isCat;
  final bool? injectFeaturedNote;
  final bool? receiveAnnouncementEmail;
  final bool? alwaysMarkNsfw;
  final bool? autoSensitive;
  final FollowingVisibility? followingVisibility;
  final FollowingVisibility? followersVisibility;
  final ChatScope? chatScope;
  final String? pinnedPageId;
  final List<JsonMap?>? mutedWords;
  final List<JsonMap?>? hardMutedWords;
  final List<String>? mutedInstances;
  final AccountUpdateRequestNotificationRecieveConfig?
  notificationRecieveConfig;
  final List<String>? emailNotificationTypes;
  final List<String>? alsoKnownAs;

  factory AccountUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountUpdateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AccountUpdateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountUpdateEmailRequest {
  const AccountUpdateEmailRequest({
    required this.password,
    this.email,
    this.token,
  });
  final String password;
  final String? email;
  final String? token;

  factory AccountUpdateEmailRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountUpdateEmailRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AccountUpdateEmailRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountWebhooksCreateRequest {
  const AccountWebhooksCreateRequest({
    required this.name,
    required this.url,
    this.secret = '',
    @JsonKey(name: 'on') required this.onValue,
  });
  final String name;
  final String url;
  final String secret;
  final List<AccountWebhooksCreateRequestOnItem> onValue;

  factory AccountWebhooksCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountWebhooksCreateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AccountWebhooksCreateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountWebhooksCreateResponse {
  const AccountWebhooksCreateResponse({
    required this.id,
    required this.userId,
    required this.name,
    @JsonKey(name: 'on') required this.onValue,
    required this.url,
    required this.secret,
    required this.active,
    @JsonKey(name: 'latestSentAt', includeIfNull: true)
    required this.latestSentAt,
    @JsonKey(name: 'latestStatus', includeIfNull: true)
    required this.latestStatus,
  });
  final String id;
  final String userId;
  final String name;
  final List<AccountWebhooksCreateResponseOnItem> onValue;
  final String url;
  final String secret;
  final bool active;
  final DateTime? latestSentAt;
  final int? latestStatus;

  factory AccountWebhooksCreateResponse.fromJson(Map<String, dynamic> json) =>
      _$AccountWebhooksCreateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AccountWebhooksCreateResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountWebhooksDeleteRequest {
  const AccountWebhooksDeleteRequest({required this.webhookId});
  final String webhookId;

  factory AccountWebhooksDeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountWebhooksDeleteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AccountWebhooksDeleteRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountWebhooksShowRequest {
  const AccountWebhooksShowRequest({required this.webhookId});
  final String webhookId;

  factory AccountWebhooksShowRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountWebhooksShowRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AccountWebhooksShowRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountWebhooksTestRequestOverride {
  const AccountWebhooksTestRequestOverride({this.url, this.secret});
  final String? url;
  final String? secret;

  factory AccountWebhooksTestRequestOverride.fromJson(
    Map<String, dynamic> json,
  ) => _$AccountWebhooksTestRequestOverrideFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AccountWebhooksTestRequestOverrideToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountWebhooksTestRequest {
  const AccountWebhooksTestRequest({
    required this.webhookId,
    required this.type,
    this.override,
  });
  final String webhookId;
  final AccountWebhooksTestRequestType type;
  final AccountWebhooksTestRequestOverride? override;

  factory AccountWebhooksTestRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountWebhooksTestRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AccountWebhooksTestRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountWebhooksUpdateRequest {
  const AccountWebhooksUpdateRequest({
    required this.webhookId,
    this.name,
    this.url,
    this.secret,
    @JsonKey(name: 'on') this.onValue,
    this.active,
  });
  final String webhookId;
  final String? name;
  final String? url;
  final String? secret;
  final List<AccountWebhooksUpdateRequestOnItem>? onValue;
  final bool? active;

  factory AccountWebhooksUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountWebhooksUpdateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AccountWebhooksUpdateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountMyAppsRequest {
  const AccountMyAppsRequest({this.limit = 10, this.offset = 0});
  final int limit;
  final int offset;

  factory AccountMyAppsRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountMyAppsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AccountMyAppsRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountSwRegisterRequest {
  const AccountSwRegisterRequest({
    required this.endpoint,
    required this.auth,
    required this.publickey,
    this.sendReadMessage = false,
  });
  final String endpoint;
  final String auth;
  final String publickey;
  final bool sendReadMessage;

  factory AccountSwRegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountSwRegisterRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AccountSwRegisterRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountSwRegisterResponse {
  const AccountSwRegisterResponse({
    this.state,
    @JsonKey(name: 'key', includeIfNull: true) required this.key,
    required this.userId,
    required this.endpoint,
    required this.sendReadMessage,
  });
  final AccountSwRegisterResponseState? state;
  final String? key;
  final String userId;
  final String endpoint;
  final bool sendReadMessage;

  factory AccountSwRegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$AccountSwRegisterResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AccountSwRegisterResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountSwShowRegistrationRequest {
  const AccountSwShowRegistrationRequest({required this.endpoint});
  final String endpoint;

  factory AccountSwShowRegistrationRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$AccountSwShowRegistrationRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AccountSwShowRegistrationRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountSwShowRegistrationResponse {
  const AccountSwShowRegistrationResponse({
    required this.userId,
    required this.endpoint,
    required this.sendReadMessage,
  });
  final String userId;
  final String endpoint;
  final bool sendReadMessage;

  factory AccountSwShowRegistrationResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$AccountSwShowRegistrationResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AccountSwShowRegistrationResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountSwUnregisterRequest {
  const AccountSwUnregisterRequest({required this.endpoint});
  final String endpoint;

  factory AccountSwUnregisterRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountSwUnregisterRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AccountSwUnregisterRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountSwUpdateRegistrationRequest {
  const AccountSwUpdateRegistrationRequest({
    required this.endpoint,
    this.sendReadMessage,
  });
  final String endpoint;
  final bool? sendReadMessage;

  factory AccountSwUpdateRegistrationRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$AccountSwUpdateRegistrationRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AccountSwUpdateRegistrationRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountSwUpdateRegistrationResponse {
  const AccountSwUpdateRegistrationResponse({
    required this.userId,
    required this.endpoint,
    required this.sendReadMessage,
  });
  final String userId;
  final String endpoint;
  final bool sendReadMessage;

  factory AccountSwUpdateRegistrationResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$AccountSwUpdateRegistrationResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AccountSwUpdateRegistrationResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AccountVerifyEmailRequest {
  const AccountVerifyEmailRequest({required this.code});
  final String code;

  factory AccountVerifyEmailRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountVerifyEmailRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AccountVerifyEmailRequestToJson(this);
}
