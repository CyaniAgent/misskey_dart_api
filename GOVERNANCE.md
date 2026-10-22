# Governance

## Roles

- **Maintainer**: SakuraCake. Responsible for merges, releases, security
  response, licensing, and governance decisions.
- **Contributor**: anyone submitting code, documentation, tests, or issue
  reports.

The maintainer list is defined by GitHub repository permissions. New
maintainers must be confirmed in writing by the current maintainer.

## Decision making

- Day-to-day technical decisions use lazy consensus: raise the matter in an
  issue/PR; if no substantive objection is raised, the maintainer proceeds.
- Licensing, security disclosure, and release-blocking decisions are made by
  the maintainer.
- API-breaking changes should include a migration note and a major/minor
  version decision.
- The maintainer should explain rejected PRs but is not required to accept
  every contribution.

## Branches

| Branch | Purpose |
|---|---|
| `main` | Stable release line |
| `develop` | Integration line |
| `feature/*` | Feature branches from `develop` |
| `fix/*` | Fix branches from `develop` |
| `release/*` | Release stabilization branches from `develop` |

Flow: `feature/*` / `fix/*` → `develop` → `release/*` → `main`.

## Releases

- Follow SemVer. Pre-1.0 releases may break APIs in minor versions; document
  every break in `CHANGELOG.md`.
- Tags use `vX.Y.Z` and must point to the release commit.
- Before publishing:
  - `dart format --output=none --set-exit-if-changed .`
  - `dart analyze`
  - `dart test`
  - review `CHANGELOG.md`, `README.md`, and `LICENSE`
- Publish to pub.dev only from `main` after CI passes.
- Never print secrets in CI.

## Contributions and CLA

External contributions require [CLA.md](CLA.md); company contributions use
[CLA-CORPORATE.md](CLA-CORPORATE.md). The CLA grants a perpetual, irrevocable,
sublicensable license that allows the project to use contributions under
BSD-3-Clause or other terms, including proprietary and commercial licenses.

## License

The package uses BSD-3-Clause. Changing the license requires:

1. a maintainer decision;
2. legal review;
3. the required consents from affected copyright holders/contributors;
4. updates to LICENSE, NOTICE, README, and CHANGELOG.

## Security

Report security issues privately; see [SECURITY.md](SECURITY.md). Maintainers
should avoid publishing vulnerability details before a fix is released.

## Trademarks

See [TRADEMARK.md](TRADEMARK.md). The code license does not grant rights to the
Misskey name or marks.

## Amendments

The maintainer may amend this document and record the change in the repository.
Major changes should allow time for community discussion, but not every comment
must be adopted.
