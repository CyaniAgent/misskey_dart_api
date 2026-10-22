# Contributing

Thank you for contributing to `misskey_dart_api`.

## 1. Contributor License Agreement

Contributions are not accepted without a CLA. On your first pull request:

1. Read [CLA.md](CLA.md). For company or employer contributions, read
   [CLA-CORPORATE.md](CLA-CORPORATE.md).
2. Comment on the PR using the text below, replacing the handle with your
   GitHub username:

   ```text
   I have read and agree to the misskey_dart_api Contributor License Agreement v1.0.
   GitHub username: @your-handle
   ```

3. A maintainer will record the acceptance. Once CLA Assistant is configured,
   its check is authoritative.

The CLA grants a perpetual, irrevocable, worldwide, royalty-free,
non-exclusive, transferable, sublicensable license that allows the project to
use contributions under BSD-3-Clause or other terms, including proprietary and
commercial licenses. Contributors retain copyright.

## 2. Branches and pull requests

- Create feature branches from `develop`: `feature/<short-slug>`.
- Use `fix/<short-slug>` for fixes.
- Keep one PR focused on one change.
- Target `develop`. Maintainers handle merges into `release/*` and `main`.
- Explain what changed, why, how it was verified, and which issue it addresses.

## 3. Code requirements

- Run before submitting:
  - `dart format .`
  - `dart analyze`
  - `dart test`
- New behavior should have tests. Bug fixes should include a regression test,
  or explain why one is not practical.
- Do not commit keys, tokens, private keys, `.env` files, or real user data.
- New source files should use the SPDX header:

  ```dart
  // SPDX-License-Identifier: BSD-3-Clause
  ```

- Do not hand-edit generated files.
- Do not introduce code or assets incompatible with BSD-3-Clause.
- When adding third-party code or assets, record the source, license, and
  copyright, and update [ATTRIBUTIONS.md](ATTRIBUTIONS.md).
- AI-assisted contributions are allowed if you understand, review, and have the
  right to submit them. You are responsible for them as for hand-written code.

## 4. Conduct and security

- All participants must follow [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md).
- Do not open a public issue for a security vulnerability. Use GitHub Security
  Advisories; see [SECURITY.md](SECURITY.md).
- Do not paste tokens, cookies, private messages, or other sensitive data into
  issues, PRs, tests, or logs.

## 5. Licensing

By submitting a contribution, you agree that it is licensed to the project
under [CLA.md](CLA.md) and may be distributed to the public under BSD-3-Clause.
The project does not assume an obligation to use, support, or compensate your
contribution.
