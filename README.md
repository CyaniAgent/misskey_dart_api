# misskey_dart_api

A Dart client for the [Misskey](https://misskey-hub.net/) API. It works in
Flutter and in pure Dart.

> Status: early development (`0.1.x`). The API surface may change before 1.0.
> This package is not published on pub.dev yet.

## Install

Until the first pub.dev release, use a Git dependency:

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
    final meta = await client.meta();
    print('Instance: ${meta['name'] ?? 'unknown'}');
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
  final me = await client.me();
  print(me['username']);
} finally {
  client.close();
}
```

HTTPS is required by default. For local development only:

```dart
final client = MisskeyClient(
  baseUri: Uri.parse('http://localhost:3000'),
  allowInsecureHttp: true,
);
```

## Current API

- `MisskeyClient.fromHost(host, {accessToken, dio, allowInsecureHttp})`
- `MisskeyClient(baseUri: ..., {accessToken, dio, allowInsecureHttp})`
- `meta()` → `POST /api/meta`
- `me()` → `POST /api/i`, requires an access token
- `MisskeyApiException`

The token is sent in the Misskey request body (`i`), not in a URL or header.
Do not log request bodies containing tokens.

## Scope

This package is a client library. It is not the Misskey server and is not
affiliated with the Misskey project. Streaming, generated models, and broader
endpoint coverage will be added incrementally.

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
