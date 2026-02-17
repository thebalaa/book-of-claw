# Theme: Documentation

Documentation commits in the 501-1000 range cover macOS app build and signing guides, XPC and voice wake setup, health probes, agent RPC design documents, remote SSH topology, control channel API references, gateway protocol specifications, and the comprehensive relay-to-gateway rename. The documentation effort tracks closely with feature development, often shipping in the same commit or immediately after, ensuring that new capabilities like the control channel, voice wake forwarding, Telegram integration, and the gateway WebSocket protocol are recorded as they land.

## Commits

| # | Subject | Date |
|---|---------|------|
| 00501 | build: add mac icon pipeline | 2025-12-06 21:00 |
| 00516 | build: sign debug app and use stable bundle id | 2025-12-06 23:46 |
| 00517 | docs: document debug signing and bundle id | 2025-12-06 23:46 |
| 00524 | docs: add 500 LOC cap to guardrails | 2025-12-06 23:59 |
| 00528 | docs: update relay run mode | 2025-12-07 00:16 |
| 00530 | mac: add signing helper and document debug bundle | 2025-12-07 00:30 |
| 00533 | Docs: note SIGN_IDENTITY for mac signing | 2025-12-06 23:45 |
| 00540 | CLI: add --help and usage | 2025-12-07 00:53 |
| 00558 | tools: add clawlog helper for unified logs | 2025-12-07 02:25 |
| 00562 | feat(mac): add automation permission | 2025-12-07 02:34 |
| 00565 | Docs: describe mac XPC setup | 2025-12-07 02:27 |
| 00566 | Docs: add clawlog helper note | 2025-12-07 03:30 |
| 00568 | docs(mac): document webchat auto-open and debug flow | 2025-12-07 03:34 |
| 00592 | docs: outline RPC plan for agent CLI | 2025-12-07 05:08 |
| 00601 | CLI: add health probe command | 2025-12-07 04:33 |
| 00604 | docs: add voice wake forwarding tips to agents | 2025-12-07 05:30 |
| 00610 | Docs: scrub personal phone example | 2025-12-07 04:40 |
| 00611 | Docs: swap to obviously fake phone numbers | 2025-12-07 04:42 |
| 00612 | Docs: add no-real-data rule to AGENTS | 2025-12-07 04:43 |
| 00623 | chore(macos): clean up CLI helper subtext | 2025-12-07 14:49 |
| 00637 | docs: record current rpc protocol and heartbeat toggle | 2025-12-07 15:33 |
| 00661 | docs(mac): document privacy-off logging | 2025-12-07 17:35 |
| 00665 | auto-reply: enrich chat status | 2025-12-07 16:53 |
| 00673 | VoiceWake: document escape path and reset stale forward command | 2025-12-07 18:20 |
| 00674 | VoiceWake: document escape path and reset stale forward command | 2025-12-07 18:23 |
| 00689 | Add Bun bundle docs and Telegram grammY support | 2025-12-07 22:46 |
| 00692 | docs: move grammY research note to docs/grammy.md | 2025-12-07 22:53 |
| 00708 | feat(macos): add Sparkle updates and release docs | 2025-12-08 00:18 |
| 00719 | docs: outline web chat move to relay server | 2025-12-08 11:25 |
| 00723 | refactor(cli): drop tmux helpers and update help copy | 2025-12-08 12:43 |
| 00724 | Remote web chat tunnel and onboarding polish | 2025-12-08 12:50 |
| 00725 | SSH remote uses clawdis only | 2025-12-08 13:20 |
| 00726 | Split clawdis node vs mac helper commands | 2025-12-08 13:26 |
| 00732 | Docs: webchat now served in-process, no CLI spawn | 2025-12-08 14:15 |
| 00756 | Webchat: sync thinking level with session | 2025-12-08 16:09 |
| 00766 | docs: document push-to-talk hotkey | 2025-12-08 17:23 |
| 00769 | docs/macos: simplify sag install (auto-tap) | 2025-12-08 18:19 |
| 00790 | VoiceWake: add chimes for trigger and send | 2025-12-08 20:45 |
| 00795 | docs: add control channel reference | 2025-12-08 21:50 |
| 00801 | control: seed events, add tests, update remote doc | 2025-12-08 22:03 |
| 00825 | docs: note Mac app for relay debugging | 2025-12-08 23:37 |
| 00828 | Mac: clarify runtime comments | 2025-12-09 00:08 |
| 00855 | fix: block partial replies on external chat surfaces | 2025-12-09 01:48 |
| 00864 | Docs: voice overlay plan and fix web mocks | 2025-12-09 03:25 |
| 00891 | Docs: clarify relay launch mechanism | 2025-12-09 03:36 |
| 00906 | WebChat: loopback snapshot hydration | 2025-12-09 14:41 |
| 00917 | ci/docs: enforce protocol check and deprecate control api | 2025-12-09 17:03 |
| 00922 | Docs: rename relay command to gateway | 2025-12-09 17:24 |
| 00942 | settings: clarify pause toggles gateway messaging | 2025-12-09 17:40 |
| 00944 | docs: add docs:list helper and front matter | 2025-12-09 17:51 |
| 00945 | chore: rename relay to gateway | 2025-12-09 18:00 |
| 00965 | telegram: show name and id in envelope | 2025-12-09 19:56 |
| 00969 | gateway: drop ipc and simplify cli | 2025-12-09 20:18 |
| 00973 | docs: refresh gateway cli params | 2025-12-09 20:28 |
| 00986 | feat(webchat): auto-start at root | 2025-12-09 21:07 |

## Narrative

The documentation theme in the 501-1000 range begins with macOS app build infrastructure. Commit 00501 documented the icon generation pipeline, followed by commits 00516-00517 and 00530-00533 which established signing guides, bundle identity documentation, and SIGN_IDENTITY examples. Commit 00524 added a 500-line-of-code cap to the project guardrails document.

As the macOS app gained features, documentation tracked each addition. Commit 00528 updated relay run mode documentation after the switch to child process management. Commits 00540 added CLI help text. Commits 00562 and 00565 documented the XPC mach service setup and automation permissions. Commits 00558 and 00566 introduced and documented the clawlog unified logging helper. Commit 00568 documented webchat auto-open behavior.

A privacy cleanup occurred in commits 00610-00612, scrubbing real phone numbers from documentation and tests and adding an explicit no-real-data rule to AGENTS.md.

The agent RPC and health probe features brought significant documentation. Commit 00592 outlined the RPC worker design document. Commit 00601 shipped health probe documentation alongside the feature. Commit 00604 added voice wake forwarding tips. Commit 00637 documented the RPC protocol and heartbeat toggle.

Voice wake documentation appeared in commits 00661, 00673-00674, 00766, and 00790, covering privacy-off logging, shell escape approaches, push-to-talk hotkey behavior, and chime configuration.

Telegram integration documentation arrived with commit 00689, which created Bun bundle and Telegram grammY guides, followed by commit 00692 consolidating grammY research notes.

The webchat architecture evolution was documented across commits 00719, 00724, 00732, and 00756, tracking the move from macOS-served to relay-served webchat, remote tunneling, and thinking level synchronization.

The control channel and gateway protocol transition produced the largest documentation cluster. Commit 00795 added comprehensive control channel API references. Commit 00801 updated remote documentation. Commits 00864 and 00891 documented voice overlay session plans and relay launch mechanisms. The gateway protocol migration in commits 00917, 00922, 00945, and 00973 deprecated the control API, renamed relay to gateway throughout all documentation, and refreshed CLI parameter references. Commit 00944 added a docs:list helper with front matter standardization.

## Cross-references

- [testing](../00001-00500/testing.md) -- documentation often ships alongside test commits
- [linting](linting.md) -- formatting passes sometimes accompany documentation cleanup
- [dependency](dependency.md) -- new dependencies like Sparkle and grammY are documented on arrival
