## 0.1.0 - 2026-10-23

- First public release.
- Full generated client for the pinned Misskey OpenAPI 2026.9.0 surface:
  438 paths and 462 operations across 30 API groups.
- 69 component schemas generated as freezed models, plus typed request and
  response models, response unions, multipart Drive upload, MiAuth, and
  WebSocket streaming.
- Flat high-level methods for every non-admin group, with typed return
  unwrapping for `notes.create` and `users.show` variants.
- Complete generated API preserved under `client.raw` and
  `package:misskey_dart_api/raw.dart`; admin endpoints are raw-only.
- Asynchronous `TokenProvider` authentication, `MisskeyAuthenticationException`,
  and preflight checks for required endpoints.
- `CursorPage<T>` pagination with generated `...Page`, `next()`, and `stream()`
  methods for cursor-based list operations.
- Common `User` and `UserDetailed` profile fields are available directly on the
  sealed base types, without variant casts.
- The generator workflow, pinned spec hash, and `--check` command are documented;
  public API documentation is enforced by `public_member_api_docs`.
- Bearer authentication by default, with body and none modes; HTTPS
  enforcement; structured `MisskeyApiException`.
- The 24 paths that define both GET and POST accept
  `httpMethod: MisskeyHttpMethod.get`; POST remains the default.
