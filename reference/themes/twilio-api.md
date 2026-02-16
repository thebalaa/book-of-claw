# Theme: Twilio API

The Twilio integration traces a complete lifecycle from birth to death across 403 commits. It began as the original messaging backend in commit 2, grew through intensive bug-fixing in the first afternoon, settled into maintenance mode after the web provider arrived in commit 45, and was completely removed in commit 405 when the system went web-only. This theme documents the full arc of a deprecated feature: initial implementation, stabilization through iteration, long-term maintenance, and final removal.

## Commits

| # | Subject | Time |
|---|---------|------|
| 00002 | Add warelay CLI with Twilio webhook support | 11:23 |
| 00015 | Timeout tailscale funnel in verbose runs and surface command output | 12:02 |
| 00017 | Improve funnel error UX and add -y auto-confirm | 12:30 |
| 00018 | Add TWILIO_SENDER_SID override and better funnel/setup error messages | 12:36 |
| 00019 | Fix Twilio sender list call (use params instead of qs) | 12:50 |
| 00020 | Tighten types for Twilio requests and sender lookup | 12:53 |
| 00021 | Support TWILIO_SENDER_SID override before sender lookup | 12:56 |
| 00022 | Use Twilio SDK channelsSenders.list to discover sender | 12:59 |
| 00028 | Fallback webhook update to incoming phone number when channels sender update fails | 14:20 |
| 00030 | Normalize webhook path, always log inbound, fix Twilio webhook field names, log polling tip | 15:28 |
| 00033 | Fix webhook update: send form fields via request; keep SDK/phone fallbacks | 15:37 |
| 00042 | Experiment with Twilio webhook updates (no functional change yet) | 16:32 |
| 00043 | Add messaging service webhook fallback; always log inbound | 16:47 |
| 00044 | Improve Twilio webhook update flow | 16:56 |
| 00152 | tests: mock twilio auth for update-webhook helpers | 12:21 |
| 00312 | fix: follow redirects when downloading Twilio media | 14:28 |
| 00319 | test(media): add redirect coverage and update changelog | 21:09 |
| 00327 | limits: chunk replies for twilio/web | 23:10 |
| 00405 | chore: drop twilio and go web-only | 19:03 |

## Narrative Thread

Commit 00002 established Twilio as the original messaging backend for the Warelay CLI. The system supported webhook server mode for receiving messages, polling mode for checking messages, and a send command. This was day one: Twilio was the architecture.

The first afternoon (commits 00015–00044) saw intensive stabilization work. Setup experience improvements came first: funnel timeouts, better error messages, and the `TWILIO_SENDER_SID` escape hatch for when auto-discovery failed. Then came a focused bug-fix cluster at 12:50–12:59 (commits 00019–00022) that fixed sender discovery: correcting API call parameters, tightening types, reordering the SID override check, and switching to the official SDK method. Sender discovery was clearly a significant pain point.

Webhook registration proved equally troublesome. Commit 00028 added a phone-number fallback when the channel sender webhook update failed. Commit 00030 fixed webhook field names and normalized the path. Commit 00033 fixed form encoding. By the afternoon (00042–00044), the webhook update logic was being experimentally reworked, a messaging service fallback was added as a third path, and the entire flow was consolidated. By 16:56, the Twilio webhook flow was stable.

After commit 00045 added the WhatsApp Web provider as an alternative, Twilio work slowed dramatically. For 107 commits, Twilio received no attention. When it resumed, the work was maintenance rather than feature development. Commit 00152 added test improvements: mocking Twilio auth for update-webhook helpers. Much later, commit 00312 fixed a media download bug where Node.js `https.request()` was not following redirects, causing Twilio media URLs (which 302 to CDN) to save placeholder metadata instead of actual images. Commit 00319 added test coverage for the redirect fix. Commit 00327 implemented reply chunking for both Twilio and web providers to respect message length limits.

Then came the end. Commit 00405, at 19:03 on 2025-12-05, removed all Twilio integration code. The system went web-only. Twilio-specific modules, test files, message chunking logic, and configuration structures were deleted. The multi-provider architecture collapsed back to a single provider. Twilio had lasted 403 commits.

## Related Themes

- [verbosity-and-ux](verbosity-and-ux.md) — many Twilio fixes improve error messages
- [type-safety](type-safety.md) — commit 00020 tightens Twilio-specific types
- [multi-provider](multi-provider.md) — Twilio becomes one of two provider options before removal
- [testing](testing.md) — commits 00152, 00319 add Twilio test coverage
- [refactor](refactor.md) — commit 00405 removes all Twilio code
