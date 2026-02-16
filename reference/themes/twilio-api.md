# Theme: Twilio API

The Twilio integration evolves from initial webhook support through a long series of fixes and refinements — sender discovery, webhook registration fallbacks, and API call corrections. This is the most technically complex theme, with multiple bug-fix cycles.

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

## Narrative Thread

The initial commit 00002 established the Twilio-based architecture: webhook server, polling mode, and send command. Early refinements (00015–00018) improved the setup experience — funnel timeouts, better error messages, and the `TWILIO_SENDER_SID` escape hatch for when auto-discovery fails.

A focused bug-fix cluster at 12:50–12:59 (commits 00019–00022) fixed the sender discovery flow: correcting the API call parameters, tightening types, reordering the SID override check, and switching to the official SDK method. This suggests the sender discovery was a significant pain point.

Webhook registration proved equally troublesome. Commit 00028 added a phone-number fallback when the channel sender webhook update failed. Commit 00030 fixed webhook field names and normalized the path. Commit 00033 fixed form encoding. By the afternoon (00042–00044), the webhook update logic was being experimentally reworked, a messaging service fallback was added as a third path, and the entire flow was consolidated.

## Related Themes

- [verbosity-and-ux](verbosity-and-ux.md) — many Twilio fixes improve error messages
- [type-safety](type-safety.md) — commit 00020 tightens Twilio-specific types
- [multi-provider](multi-provider.md) — Twilio becomes one of two provider options
