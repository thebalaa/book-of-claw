# Theme: Testing

Testing in commits 501-1000 expanded from focused Swift unit tests for voice wake forwarding (546, 585, 587) through CLI health probes and command resolver coverage (601, 606-608), into comprehensive protocol-level testing for the RPC loop (869), control channel (801), and Gateway WebSocket server (918, 924). The trajectory shows testing maturing from UI helper validation to full end-to-end protocol verification, with consistent attention to regression coverage for fixes (677, 742, 848, 954).

## Commits

| # | Subject | Date |
|---|---------|------|
| 00546 | VoiceWake: add SSH forwarder tests | 2025-12-07 01:55 |
| 00585 | test: add voice wake forwarder cache coverage | 2025-12-07 04:52 |
| 00587 | test(voicewake): cover trigger matching for runtime listener | 2025-12-07 04:53 |
| 00596 | feat(agent): add rpc status command and tests; rpc only path | 2025-12-07 05:20 |
| 00601 | CLI: add health probe command | 2025-12-07 04:33 |
| 00603 | Health: CLI probe and mac UI surfacing | 2025-12-07 04:38 |
| 00606 | test: cover command resolver fallbacks | 2025-12-07 05:36 |
| 00607 | chore: fix test import and lint | 2025-12-07 05:38 |
| 00608 | Health: strengthen probe tests | 2025-12-07 04:39 |
| 00628 | ci: use macos-latest with Xcode 26.1 | 2025-12-07 15:00 |
| 00629 | debug: add voice forward test button | 2025-12-07 15:00 |
| 00632 | debug: surface ssh error details in voice test | 2025-12-07 15:07 |
| 00636 | Debug: make voice wake test follow config | 2025-12-07 14:33 |
| 00639 | Debug: surface detailed voice send errors | 2025-12-07 14:41 |
| 00669 | test(mac): cover voice wake helpers | 2025-12-07 17:56 |
| 00677 | VoiceWake: add escaping regression tests | 2025-12-07 18:25 |
| 00690 | Telegram: enable grammY throttler and webhook tests | 2025-12-07 22:52 |
| 00697 | fix: remote test uses CLI path discovery again | 2025-12-07 23:12 |
| 00742 | test: cover trigger trimming for voice wake | 2025-12-08 16:36 |
| 00765 | feat(mac): add push-to-talk hotkey | 2025-12-08 17:23 |
| 00801 | control: seed events, add tests, update remote doc | 2025-12-08 22:03 |
| 00843 | ci: test node and bun runtimes | 2025-12-09 01:00 |
| 00848 | test: ensure tool events emit without verbose | 2025-12-09 01:24 |
| 00864 | Docs: voice overlay plan and fix web mocks | 2025-12-09 03:25 |
| 00869 | RPC: extract stdio loop and tests | 2025-12-09 02:37 |
| 00877 | tests: cover voicewake template defaults | 2025-12-09 02:52 |
| 00906 | WebChat: loopback snapshot hydration | 2025-12-09 14:41 |
| 00918 | tests: cover agent sequencing, tick watchdog, presence fingerprint | 2025-12-09 17:05 |
| 00924 | Tests: cover gateway --force helpers | 2025-12-09 16:31 |
| 00936 | msg: retry web/telegram sends and add regression tests | 2025-12-09 17:23 |
| 00949 | surface: envelope inbound messages for agent | 2025-12-09 18:43 |
| 00954 | test(overlay): cover token guard outcomes | 2025-12-09 19:51 |

## Narrative

### Voice Wake Test Foundation (546, 585, 587)

The earliest testing commits in this range focused on the voice wake system. Commit 00546 created VoiceWakeForwarderTests using Swift Testing to verify command rendering, SSH target parsing (user@host:port variations), and template variable substitution. Commit 00585 added tests for the forwarder's remote CLI path caching behavior. Commit 00587 covered VoiceWakeRuntime trigger word matching logic, verifying that configured trigger phrases fire forwarding actions correctly.

### RPC and Health Probe Tests (596, 601, 603, 606-608)

Commit 00596 added unit tests covering RPC send, status, error handling, and malformed request cases alongside the new status command. Commit 00601 introduced the health probe command with tests for linked/unlinked scenarios. Commit 00603 added health monitoring UI tests alongside the HealthStore implementation. Commit 00606 created CommandResolverTests covering binary preference order and fallback logic. Commit 00607 fixed test imports, and commit 00608 strengthened health probe tests with better assertions on JSON output structure.

### CI Infrastructure (628, 843)

Commit 00628 updated CI to use macos-latest with Xcode 26.1. Commit 00843 added matrix testing for both Node.js and Bun runtimes with separate lint, test, and build steps.

### Debug Test Buttons (629, 632, 636, 639)

A series of commits added interactive test buttons to the macOS Debug settings tab. Commit 00629 added a voice forward test button, commit 00632 surfaced SSH error details in test results, commit 00636 made the test follow actual runtime config instead of hardcoded values, and commit 00639 further improved error detail surfacing.

### Voice Wake Regression and Helper Tests (669, 677, 697, 742)

Commit 00669 added test coverage for voice wake helper functions including CLI path resolution and SSH argument construction. Commit 00677 added regression tests for shell escaping edge cases covering special characters, quotes, and whitespace to prevent injection vulnerabilities. Commit 00697 fixed remote tests to use CLI path discovery logic matching production behavior. Commit 00742 added unit tests for trigger phrase trimming, verifying post-trigger text extraction.

### Provider Tests (690)

Commit 00690 enabled the grammY throttler plugin for Telegram and added webhook test coverage to verify automatic request throttling.

### Push-to-Talk Tests (765)

Commit 00765 included unit tests for push-to-talk delta computation and attributed string coloring alongside the feature implementation.

### Control Channel and Protocol Tests (801, 869, 918, 924)

Commit 00801 added the control channel test suite using Vitest, testing ping, health, and heartbeat event streaming. Commit 00869 extracted the RPC stdio loop into a standalone module with comprehensive tests for status, health, heartbeat, system-event, and system-presence control requests. Commit 00918 added comprehensive Gateway protocol tests covering agent event sequencing, tick watchdog timeout detection, and presence fingerprint validation. Commit 00924 covered the gateway --force flag behavior.

### Event and Envelope Tests (848, 864, 877, 906, 936, 949)

Commit 00848 verified that tool events emit even without verbose mode. Commit 00864 fixed web provider test mocks for the new reply signature. Commit 00877 covered voice wake template variable defaults. Commit 00906 tested WebChat snapshot hydration from the Gateway. Commit 00936 added regression tests for retry logic with exponential backoff on WhatsApp and Telegram sends. Commit 00949 tested the message envelope format providing agent transport context.

### Overlay Token Guard Tests (954)

Commit 00954 refactored voice overlay token guard logic into a testable function returning explicit outcomes (accept, dismiss, drop) and added unit tests covering all three validation paths.

## Cross-references

- [process-lifecycle](process-lifecycle.md) -- control channel and gateway protocol tests
- [auto-reply](auto-reply.md) -- auto-reply related test coverage
