# Theme: Multi-Provider

Late in the day, the monolithic Twilio-only architecture opens up to support WhatsApp Web as an alternative provider, then the codebase is refactored to cleanly separate provider logic into modules.

## Commits

| # | Subject | Time |
|---|---------|------|
| 00045 | Add WhatsApp Web provider option and docs | 17:21 |
| 00048 | Refactor CLI into modules for web provider and utils | 17:43 |

## Narrative Thread

For the first 44 commits, the project was Twilio-only. Commit 00045 introduced the Baileys library (WhatsApp Web protocol) as an alternative provider with a `--provider` flag, giving users the choice between paid-but-reliable (Twilio) and free-but-less-stable (Web). This was a significant architectural shift — the project was no longer tied to a single messaging backend.

Three commits later (00048), the monolithic `cli.ts` was broken into separate modules: `src/provider-web.ts` for the Web provider, `src/utils.ts` for utility functions, and `src/globals.ts` for shared state. This refactoring was a direct consequence of the multi-provider architecture — a single file couldn't cleanly contain two provider implementations.

## Related Themes

- [twilio-api](twilio-api.md) — Twilio becomes one of two providers
- [testing](testing.md) — tests added around the same time cover provider helpers
