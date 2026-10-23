// SPDX-License-Identifier: BSD-3-Clause

import 'package:misskey_dart_api/misskey_dart_api.dart';

Future<void> main() async {
  final client = MisskeyClient.fromHost('misskey.io');
  try {
    final announcements = await client.announcements.list(
      AnnouncementsListRequest(),
    );
    if (announcements.isNotEmpty) {
      print(announcements.first.title);
    }
  } finally {
    client.close();
  }
}
