# Third-Party Components

This package depends on third-party Dart packages. Their licenses remain with
their respective authors.

## Direct runtime dependencies

- **dio**: HTTP client. See the package's `LICENSE` for its license terms.

## Development dependencies

- **lints**: lint rules.
- **test**: test runner.

Development dependencies are not shipped to consumers in the same way as
runtime dependencies, but their licenses still apply to their code.

## Dart and Flutter SDK

The Dart and Flutter SDKs are licensed by their respective projects. This
package does not redistribute the SDK.

## Before release

Review the dependency graph and licenses before publishing:

```bash
dart pub deps --style=compact
```

If the package later includes third-party code or assets, add the source,
license, and copyright here.

## Misskey

This package implements calls to the Misskey API from public protocol
documentation. It does not include or redistribute Misskey server source code.
"Misskey" is a mark of the Misskey project; see [TRADEMARK.md](TRADEMARK.md).
