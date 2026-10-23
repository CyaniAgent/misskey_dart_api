// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'api/generated/generated.dart';
import 'client.dart';

/// The complete generated Misskey API surface.
class MisskeyRawClient {
  /// Creates a raw API facade backed by [client].
  MisskeyRawClient(this.client);

  /// The shared client used for transport and authentication.
  final MisskeyClient client;

  /// Raw `account` endpoints.
  late final RawAccountApi account = RawAccountApi(client);

  /// Raw `admin` endpoints.
  late final RawAdminApi admin = RawAdminApi(client);

  /// Raw `announcements` endpoints.
  late final RawAnnouncementsApi announcements = RawAnnouncementsApi(client);

  /// Raw `antennas` endpoints.
  late final RawAntennasApi antennas = RawAntennasApi(client);

  /// Raw `app` endpoints.
  late final RawAppApi app = RawAppApi(client);

  /// Raw `auth` endpoints.
  late final RawAuthApi auth = RawAuthApi(client);

  /// Raw `blocking` endpoints.
  late final RawBlockingApi blocking = RawBlockingApi(client);

  /// Raw `bubbleGame` endpoints.
  late final RawBubbleGameApi bubbleGame = RawBubbleGameApi(client);

  /// Raw `channels` endpoints.
  late final RawChannelsApi channels = RawChannelsApi(client);

  /// Raw `charts` endpoints.
  late final RawChartsApi charts = RawChartsApi(client);

  /// Raw `chat` endpoints.
  late final RawChatApi chat = RawChatApi(client);

  /// Raw `clips` endpoints.
  late final RawClipsApi clips = RawClipsApi(client);

  /// Raw `drive` endpoints.
  late final RawDriveApi drive = RawDriveApi(client);

  /// Raw `emoji` endpoints.
  late final RawEmojiApi emoji = RawEmojiApi(client);

  /// Raw `federation` endpoints.
  late final RawFederationApi federation = RawFederationApi(client);

  /// Raw `flash` endpoints.
  late final RawFlashApi flash = RawFlashApi(client);

  /// Raw `following` endpoints.
  late final RawFollowingApi following = RawFollowingApi(client);

  /// Raw `gallery` endpoints.
  late final RawGalleryApi gallery = RawGalleryApi(client);

  /// Raw `hashtags` endpoints.
  late final RawHashtagsApi hashtags = RawHashtagsApi(client);

  /// Raw `invite` endpoints.
  late final RawInviteApi invite = RawInviteApi(client);

  /// Raw `meta` endpoints.
  late final RawMetaApi meta = RawMetaApi(client);

  /// Raw `mute` endpoints.
  late final RawMuteApi mute = RawMuteApi(client);

  /// Raw `nonProductive` endpoints.
  late final RawNonProductiveApi nonProductive = RawNonProductiveApi(client);

  /// Raw `notes` endpoints.
  late final RawNotesApi notes = RawNotesApi(client);

  /// Raw `notifications` endpoints.
  late final RawNotificationsApi notifications = RawNotificationsApi(client);

  /// Raw `pages` endpoints.
  late final RawPagesApi pages = RawPagesApi(client);

  /// Raw `renoteMute` endpoints.
  late final RawRenoteMuteApi renoteMute = RawRenoteMuteApi(client);

  /// Raw `reversi` endpoints.
  late final RawReversiApi reversi = RawReversiApi(client);

  /// Raw `roles` endpoints.
  late final RawRolesApi roles = RawRolesApi(client);

  /// Raw `users` endpoints.
  late final RawUsersApi users = RawUsersApi(client);
}
