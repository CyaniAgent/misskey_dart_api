# misskey_dart_api

A Dart client for the [Misskey](https://misskey-hub.net/) API. It works in
Flutter and in pure Dart.

> Status: early development (`0.2.x`). The API surface may change before 1.0.

## Install

```yaml
dependencies:
  misskey_dart_api: ^0.2.0
```

To track unreleased work, point at the repository:

```yaml
dependencies:
  misskey_dart_api:
    git:
      url: https://github.com/CyaniAgent/misskey_dart_api.git
      ref: main
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

The normal API uses flat named parameters:

```dart
final note = await client.notes.create(text: 'hello');
final timeline = await client.notes.timeline(limit: 10);
final user = await client.users.showByUserId(userId: 'user-id');
print(user.username);
final alice = await client.users.showByUsername(username: 'alice');
print(alice.id);
```

### Authentication

Tokens are supplied by a `TokenProvider`, which may be asynchronous:

```dart
final client = MisskeyClient(
  config: MisskeyClientConfig(baseUri: Uri.parse('https://misskey.example')),
  tokenProvider: () async => await tokenStore.read(),
);
```

`fromHost` is the shorter form. `accessToken` is a convenience for static
tokens; it does not add persistence or refresh:

```dart
final client = MisskeyClient.fromHost(
  'misskey.example',
  accessToken: 'YOUR_TOKEN',
);
```

The SDK does not persist, cache, or refresh tokens. The application owns the
token source and must update it when credentials change.

Bearer authentication is the default. To send the token in the legacy body
parameter `i` instead:

```dart
final client = MisskeyClient.fromHost(
  'misskey.example',
  accessToken: token,
  authMode: MisskeyAuthMode.body,
);
```

Required endpoints fail with `MisskeyAuthenticationException` before any HTTP
request when no token is available. HTTP 401 responses use the same exception
type.

HTTPS is required by default. For local development only:

```dart
final client = MisskeyClient(
  config: MisskeyClientConfig(
    baseUri: Uri.parse('http://localhost:3000'),
    allowInsecureHttp: true,
  ),
  tokenProvider: () => token,
);
```

### Raw API

Every path, including admin endpoints, remains available under `client.raw`.
Request and response models are exported by the main library; import
`package:misskey_dart_api/raw.dart` when you need the generated `Raw...Api`
classes or the endpoint manifest:

```dart
final ads = await client.raw.admin.adList(AdminAdListRequest());
final rawNote = await client.raw.notes.create(
  NotesCreateRequest(text: 'raw'),
);
```

The 24 paths that define both GET and POST accept an optional `httpMethod`
(default `MisskeyHttpMethod.post`):

```dart
final count = await client.meta.getOnlineUsersCount(
  httpMethod: MisskeyHttpMethod.get,
);
```

### Pagination

Cursor-based list operations have a generated `...Page` method:

```dart
final page = await client.notes.timelinePage(limit: 20);
for (final note in page.items) {
  print(note.id);
}

final next = await page.next();
if (next != null) {
  print(next.items.length);
}

await for (final note in page.stream()) {
  print(note.id);
}
```

`next()` returns `null` when the cursor chain is exhausted. `stream()`
de-duplicates items by id. The page limit must be between 1 and 100.

### MiAuth

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
// Apply result.token to your own TokenProvider and rebuild/reconfigure the client.
```

MiAuth only returns the token. It does not mutate the client's token source.

### Streaming

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

The streaming token is resolved when the connection opens. Changing the token
source does not mutate an active stream; close it and create a new streaming
client (or a new `MisskeyClient`) after changing credentials.

## Regenerating the API

The generated client is committed. The pinned Misskey OpenAPI document is not
distributed; use the Misskey OpenAPI **2026.10.1** document with SHA-256
`a548632511845482e2f0403154dbe494d3715d63ddc7ed6836a29095509cdfc7`.

Misskey serves its own spec at `GET /api.json`, but only upstream instances
produce an upstream document — a fork's spec carries its private schemas. The
pinned file was generated from the `2026.10.1` tag of
`misskey-dev/misskey` with its own spec generator:

```sh
git clone --depth 1 --branch 2026.10.1 https://github.com/misskey-dev/misskey.git
cd misskey && pnpm install --filter "backend..." --ignore-scripts
cd packages/backend && pnpm dlx tsx@4 -e "
  import { genOpenapiSpec } from '@/server/api/openapi/gen-spec.js';
  process.stdout.write(JSON.stringify(
    genOpenapiSpec({ version: '2026.10.1', apiUrl: 'https://example.invalid/api' }),
    null, 2,
  ));
" > misskey_api_2026.10.1.json
```

(`--ignore-scripts` skips the native `re2` build; stub it with a `RegExp`
subclass when the generator runs, as it never evaluates a pattern.)

```powershell
dart run tool/generate_api.dart --spec <path-to-misskey_api_2026.10.1.json>
dart run build_runner build
dart run tool/generate_api.dart --spec <path-to-misskey_api_2026.10.1.json> --check
dart format .
dart analyze
dart test
```

`--check` exits non-zero when generated files are stale. CI analyzes and tests
the committed output, but the spec is intentionally not committed, so the
generator check must be run locally with the pinned spec. Do not hand-edit files
under `lib/src/api/generated/` or `lib/src/api/high_level/`.

## Current API

High-level flat methods cover every non-admin group: `client.notes`,
`client.users`, `client.drive`, `client.account`, `client.meta`, and the other
group properties. `client.raw` exposes the complete generated surface for all
438 paths and 462 operations, admin included; admin is raw-only.

`CursorPage<T>` supports `next()` and `stream()`, with a generated `...Page`
method for every non-admin cursor operation.

Client-wide escape hatches: `postParsed`, `postModel`, `postMap`, `postList`,
`postVoid`, `postNullableModel`, `postMultipartModel`.

Bearer tokens are sent in the `Authorization` header by default. Body mode
sends the token as `i`. Do not log request headers or bodies containing tokens.

## Scope

This package is a client library. It is not the Misskey server and is not
affiliated with the Misskey project. It covers every unique path in the pinned
Misskey OpenAPI 2026.10.1 document, plus MiAuth and the documented streaming
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
