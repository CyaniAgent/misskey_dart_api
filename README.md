# misskey_dart_api

A Dart client for the [Misskey](https://misskey-hub.net/) API. It works in
Flutter and in pure Dart.

> Status: early development (`0.1.x`). The API surface may change before 1.0.

## Install

```yaml
dependencies:
  misskey_dart_api: ^0.1.0
```

For unreleased revisions:

```yaml
dependencies:
  misskey_dart_api:
    git:
      url: https://github.com/CyaniAgent/misskey_dart_api.git
      ref: main
```

For local development:

```yaml
dependencies:
  misskey_dart_api:
    path: ../misskey_dart_api
```

## Usage

```dart
import 'package:misskey_dart_api/misskey_dart_api.dart';

Future<void> main() async {
  final client = MisskeyClient.fromHost('misskey.io');
  try {
    final meta = await client.meta.get();
    print('Instance: ${meta.name ?? 'unknown'}');
  } finally {
    client.close();
  }
}
```

Authenticated requests use the Misskey access token:

```dart
final client = MisskeyClient.fromHost(
  'misskey.example',
  accessToken: 'YOUR_TOKEN',
);

try {
  final me = await client.account.me();
  print(me.username);

  final notes = await client.notes.timeline(NotesTimelineRequest(limit: 10));
  print(notes.first.text);
} finally {
  client.close();
}
```

Bearer authentication is the default. To send the token in the legacy body
parameter `i` instead:

```dart
final client = MisskeyClient.fromHost(
  'misskey.example',
  accessToken: token,
  authMode: MisskeyAuthMode.body,
);
```

HTTPS is required by default. For local development only:

```dart
final client = MisskeyClient(
  config: MisskeyClientConfig(
    baseUri: Uri.parse('http://localhost:3000'),
    allowInsecureHttp: true,
  ),
);
```

MiAuth token acquisition:

```dart
final session = client.miAuth.createSessionId();
final uri = client.miAuth.buildAuthorizationUri(
  sessionId: session,
  name: 'My App',
  permissions: ['read:notes', 'write:notes'],
);
// Open uri in a browser, then poll:
final result = await client.miAuth.check(session);
print(result.token);
```

Streaming:

```dart
final timeline = await client.streaming.subscribe(
  const TimelineChannel(TimelineKind.home),
);
final subscription = timeline.listen((event) {
  print(event.body.id);
});
// Later:
await subscription.cancel();
client.close();
```

## Current API

- `MisskeyClient.fromHost(host, {accessToken, userAgent, authMode, allowInsecureHttp, dio})`
- `MisskeyClient({required MisskeyClientConfig config, Dio? dio})`
- 30 grouped APIs covering all 438 paths and 462 OpenAPI operations in the
  pinned 2026.9.0 spec: `account`, `admin`, `announcements`, `antennas`, `app`,
  `auth`, `blocking`, `bubbleGame`, `channels`, `charts`, `chat`, `clips`,
  `drive`, `emoji`, `federation`, `flash`, `following`, `gallery`, `hashtags`,
  `invite`, `meta`, `mute`, `nonProductive`, `notes`, `notifications`, `pages`,
  `renoteMute`, `reversi`, `roles`, and `users`
- The 24 paths that define both GET and POST accept an optional `httpMethod`
  (default `MisskeyHttpMethod.post`):

  ```dart
  final count = await client.meta.getOnlineUsersCount(
    httpMethod: MisskeyHttpMethod.get,
  );
  ```

- `client.meta.get()` / `client.meta.detailed()` convenience methods
- `client.account.me()` convenience method
- `client.miAuth` for MiAuth URL generation and token checks
- `client.streaming` for WebSocket channel and note-capture subscriptions
- `MisskeyClientConfig`, `MisskeyAuthMode`, `MisskeyHttpMethod`
- Raw escape hatches: `postParsed`, `postModel`, `postMap`, `postList`, `postVoid`, `postNullableModel`, `postMultipartModel`
- `MisskeyApiException`

Bearer tokens are sent in the `Authorization` header by default. Body mode
sends the token as `i`. Do not log request headers or bodies containing tokens.

## Scope

This package is a client library. It is not the Misskey server and is not
affiliated with the Misskey project. It covers every unique path in the pinned
Misskey OpenAPI 2026.9.0 document, plus MiAuth and the documented streaming
protocol. The OpenAPI document itself is not distributed.

## License

BSD-3-Clause. Copyright (c) 2026 SakuraCake. See [LICENSE](LICENSE).

Third-party dependency notices: [ATTRIBUTIONS.md](ATTRIBUTIONS.md).

## Contributing

External contributions require a Contributor License Agreement:

- [CONTRIBUTING.md](CONTRIBUTING.md)
- [CLA.md](CLA.md)
- [CLA-CORPORATE.md](CLA-CORPORATE.md) for company contributions

Security issues: use GitHub Security Advisories, not a public issue. See
[SECURITY.md](SECURITY.md).

## Repository policy

- [GOVERNANCE.md](GOVERNANCE.md)
- [SUPPORT.md](SUPPORT.md)
- [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md)
- [TRADEMARK.md](TRADEMARK.md)
- [PRIVACY.md](PRIVACY.md)
