# Security Policy

## Supported versions

| Version | Security support |
|---|---|
| `main` / latest `0.1.x` | Yes, best effort |
| Older releases | No |

The package is pre-1.0; breaking changes may occur, but security fixes will be
released for the latest published version.

## Reporting a vulnerability

**Do not** disclose vulnerability details through public issues, pull requests,
discussions, or social media.

Use GitHub Security Advisories:

https://github.com/CyaniAgent/misskey_dart_api/security/advisories/new

Please include:

- the affected version or commit;
- reproduction steps or a minimal proof of concept;
- impact (token exposure, request tampering, dependency issue, etc.);
- a suggested fix, if any;
- whether you want public credit, and how.

Remove tokens, cookies, private messages, server addresses, and other sensitive
data from reports.

## Response targets

This is a personal open-source project without a commercial SLA. Targets:

- acknowledge receipt within 3 business days;
- complete initial triage within 7 business days;
- fix time depends on severity, reproducibility, and maintainer availability.

Do not publish details before a fix is available. We will coordinate a
disclosure date with you.

## Scope

In scope:

- package code and generated request construction;
- token handling, logging, and exception text;
- HTTPS/WebSocket behavior;
- dependency and supply-chain issues.

Out of scope:

- vulnerabilities in Misskey instances (contact the instance administrator);
- apps that use this package and their own data handling;
- GitHub, pub.dev, and other third-party services;
- social engineering and denial-of-service stress testing.

## Security baseline

The package must:

- require HTTPS by default; plain HTTP is allowed only through an explicit
  `allowInsecureHttp` opt-in for local development;
- send access tokens in the Misskey request body, not in URLs;
- keep tokens out of exception messages and logs;
- avoid unconditionally disabling TLS certificate validation;
- review dependency licenses and sources.

## Credit

With your consent, we will credit reporters in the fix notes. No bug bounty is
offered unless separately agreed in writing.
