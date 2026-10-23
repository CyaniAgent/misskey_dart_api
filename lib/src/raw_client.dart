// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'api/generated/generated.dart';
import 'client.dart';

/// The complete generated Misskey API surface.
class MisskeyRawClient {
  MisskeyRawClient(this.client);

  final MisskeyClient client;

  late final RawAccountApi account = RawAccountApi(client);

  late final RawAdminApi admin = RawAdminApi(client);

  late final RawAnnouncementsApi announcements = RawAnnouncementsApi(client);

  late final RawAntennasApi antennas = RawAntennasApi(client);

  late final RawAppApi app = RawAppApi(client);

  late final RawAuthApi auth = RawAuthApi(client);

  late final RawBlockingApi blocking = RawBlockingApi(client);

  late final RawBubbleGameApi bubbleGame = RawBubbleGameApi(client);

  late final RawChannelsApi channels = RawChannelsApi(client);

  late final RawChartsApi charts = RawChartsApi(client);

  late final RawChatApi chat = RawChatApi(client);

  late final RawClipsApi clips = RawClipsApi(client);

  late final RawDriveApi drive = RawDriveApi(client);

  late final RawEmojiApi emoji = RawEmojiApi(client);

  late final RawFederationApi federation = RawFederationApi(client);

  late final RawFlashApi flash = RawFlashApi(client);

  late final RawFollowingApi following = RawFollowingApi(client);

  late final RawGalleryApi gallery = RawGalleryApi(client);

  late final RawHashtagsApi hashtags = RawHashtagsApi(client);

  late final RawInviteApi invite = RawInviteApi(client);

  late final RawMetaApi meta = RawMetaApi(client);

  late final RawMuteApi mute = RawMuteApi(client);

  late final RawNonProductiveApi nonProductive = RawNonProductiveApi(client);

  late final RawNotesApi notes = RawNotesApi(client);

  late final RawNotificationsApi notifications = RawNotificationsApi(client);

  late final RawPagesApi pages = RawPagesApi(client);

  late final RawRenoteMuteApi renoteMute = RawRenoteMuteApi(client);

  late final RawReversiApi reversi = RawReversiApi(client);

  late final RawRolesApi roles = RawRolesApi(client);

  late final RawUsersApi users = RawUsersApi(client);
}
