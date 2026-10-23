## 0.1.0 - 2026-10-23

- First public release.
- Full generated client for the pinned Misskey OpenAPI 2026.9.0 surface:
  438 paths and 462 operations across 30 API groups.
- 69 component schemas generated as freezed models, plus typed request and
  response models, response unions, multipart Drive upload, MiAuth, and
  WebSocket streaming.
- Bearer authentication by default, with body and none modes; HTTPS
  enforcement; structured `MisskeyApiException`.
- The 24 paths that define both GET and POST accept
  `httpMethod: MisskeyHttpMethod.get`; POST remains the default.
