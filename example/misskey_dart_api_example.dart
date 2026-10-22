// SPDX-License-Identifier: BSD-3-Clause

import 'package:misskey_dart_api/misskey_dart_api.dart';

Future<void> main() async {
  final client = MisskeyClient.fromHost('misskey.io');
  try {
    final meta = await client.meta();
    print('Instance: ${meta['name'] ?? 'unknown'}');
  } finally {
    client.close();
  }
}
