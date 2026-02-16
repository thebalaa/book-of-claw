# Theme: Multi-Provider

The project began as a Twilio-only system but evolved to support multiple messaging providers through architectural refactoring. The multi-provider architecture lasted from commit 45 through commit 404, when all Twilio code was removed in favor of a web-only approach. Commit 453 later added Discord provider support.

## Commits

| # | Subject | Time |
|---|---------|------|
| 00045 | Add WhatsApp Web provider option and docs | 17:21 |
| 00048 | Refactor CLI into modules for web provider and utils | 17:43 |
| 00053 | Add web provider inbound monitor with auto-replies | 18:33 |
| 00057 | Fix provider-web mocks and make tests green | 00:16 |
| 00059 | Fix bailey auth import fallback and assert login alias | 00:22 |
| 00060 | Pin to @whiskeysockets/baileys 7.0.0-rc.9 and remove auth fallback | 00:28 |
| 00062 | Switch to Baileys multi-file auth with latest rc | 00:34 |
| 00063 | Fix web auth detection and auto-restart after 515 | 00:49 |
| 00068 | Silence Baileys session logs unless verbose | 01:40 |
| 00079 | test: add infra coverage and fix web logging | 03:50 |
| 00102 | chore: log web media sends | 05:09 |
| 00103 | chore: add connection/send logs and web error surfacing | 05:10 |
| 00109 | fix: accept file/media tokens safely and improve web media send | 05:34 |
| 00134 | web: send read receipts for inbound messages | 06:36 |
| 00136 | web: announce available presence when relay starts | 06:42 |
| 00190 | Web relay: auto-reconnect Baileys and test | 18:09 |
| 00192 | web: compress auto-reply media | 20:09 |
| 00327 | limits: chunk replies for twilio/web | 23:10 |
| 00328 | web: handle multi-payload replies | 23:46 |
| 00334 | Heartbeat: normalize reply arrays for twilio/web | 00:43 |
| 00405 | chore: drop twilio and go web-only | 19:03 |
| 00453 | Discord: CV2! (#16364) | 10:24 |

## Narrative Thread

For the first 44 commits, the project was exclusively Twilio-based. Commit 00045 marked a significant architectural shift by introducing the Baileys library (WhatsApp Web protocol) as an alternative provider. Users gained a `--provider` flag that offered a choice between paid-but-reliable Twilio and free-but-less-stable WhatsApp Web.

Three commits later (00048), the monolithic CLI structure broke apart. The codebase split into separate modules: `src/provider-web.ts` for Web provider logic, `src/utils.ts` for shared utilities, and `src/globals.ts` for application state. This modularization was a direct consequence of supporting multiple providers—a single file couldn't cleanly implement two different messaging backends.

Commit 00053 added an inbound monitor for the web provider, enabling it to listen for messages and execute auto-replies from configuration. This brought the web provider to feature parity with Twilio's polling-based monitoring.

The following commits (00057-00063) focused on stabilizing the Baileys integration. The codebase pinned to a specific Baileys release candidate (7.0.0-rc.9), migrated from single-file to multi-file authentication storage, and implemented auto-restart logic to recover from WhatsApp Web logout events. Commit 00068 added logging controls to silence verbose Baileys session output unless the user enabled verbose mode.

Commits 00079, 00102, and 00103 improved web provider observability by adding connection logs, media send notifications, and better error surfacing. Commit 00109 enhanced media handling with file token normalization and improved error handling for web media sends.

The web provider gained additional WhatsApp-specific features in commits 00134 and 00136: automatic read receipt marking and presence announcement when the relay starts. Commit 00190 added auto-reconnect logic to ensure the Baileys connection recovered from disconnections without manual intervention.

Commit 00192 implemented media compression for auto-reply attachments sent through the web provider, reducing bandwidth usage and transmission times. Commits 00327, 00328, and 00334 introduced reply chunking across both providers—splitting long messages into multiple parts to respect provider-specific length limits.

The dramatic turning point came at commit 00405. All Twilio integration code was removed, and the system became web-only. This eliminated the dual-provider architecture entirely. Twilio-specific modules, test files, message chunking logic, and configuration structures were deleted. The provider abstraction remained, but only the WhatsApp Web implementation survived.

Much later, commit 00453 added Discord provider support, marking the return of multi-provider architecture—but this time with WhatsApp Web and Discord rather than Twilio and WhatsApp Web.

## Related Themes

- [twilio-api](twilio-api.md) — Twilio was the first provider (commits 1-44), became optional (45-404), then was removed (405+)
- [testing](testing.md) — Provider tests expanded alongside the multi-provider architecture
- [auto-reply](auto-reply.md) — Auto-reply functionality worked across both Twilio and web providers
- [media](media.md) — Media handling required provider-specific implementations
