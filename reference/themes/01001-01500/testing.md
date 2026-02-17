# Theme: Testing

Testing in commits 1001-1500 expanded from Node.js gateway utility coverage (1035-1038, 1052-1053) through Swift gateway channel and endpoint store tests (1088, 1151, 1161), into comprehensive cross-platform test suites spanning macOS, iOS, and Android (1307, 1386, 1390-1392, 1408-1414, 1425, 1430, 1459). The trajectory shows testing evolving from focused unit tests for individual features into systematic coverage campaigns with CI-enforced coverage gates (1419, 1426, 1431), smoke test suites, and platform-specific test infrastructure.

## Commits

| # | Subject | Date |
|---|---------|------|
| 01008 | test: cover chat attachments | 2025-12-09 23:31 |
| 01035 | test: isolate gateway lock per run | 2025-12-10 00:58 |
| 01036 | test: add test:force helper | 2025-12-10 01:00 |
| 01038 | test: drop obsolete reply session placeholder | 2025-12-10 01:00 |
| 01042 | chore(test): document force run and relax coverage scope | 2025-12-10 01:06 |
| 01052 | test: add gateway/runtime utility coverage | 2025-12-10 01:19 |
| 01053 | test: add semver and gateway helpers coverage | 2025-12-10 01:26 |
| 01071 | fix(auto-reply): acknowledge reset triggers | 2025-12-10 15:55 |
| 01083 | test(gateway): cover port lock guard | 2025-12-11 18:53 |
| 01088 | test(mac): cover concurrent gateway connect | 2025-12-12 14:29 |
| 01096 | test: cover main last-channel routing | 2025-12-12 16:35 |
| 01111 | test(voice): cover gateway last-channel whatsapp | 2025-12-12 17:29 |
| 01122 | test(cli): verify gateway exits 0 on SIGTERM | 2025-12-12 18:30 |
| 01151 | test(macos): cover gateway connection reuse | 2025-12-12 21:42 |
| 01161 | test(macos): cover gateway endpoint store | 2025-12-12 22:26 |
| 01164 | test(web): retry session tmp cleanup | 2025-12-12 22:55 |
| 01216 | test(cron): cover disabled scheduler | 2025-12-13 03:43 |
| 01220 | test(cron): cover default-enabled scheduling | 2025-12-13 03:54 |
| 01221 | fix(discovery): lazy-load bonjour; add tests | 2025-12-13 03:55 |
| 01231 | test(clawdiskit): cover BonjourEscapes decoding | 2025-12-13 12:22 |
| 01267 | test(telegram): cover inbound media download | 2025-12-13 16:18 |
| 01279 | test(gateway): extend sessions RPC coverage | 2025-12-13 16:36 |
| 01307 | test(mac): cover codesign + node manager paths | 2025-12-13 18:08 |
| 01327 | test: raise vitest coverage | 2025-12-13 20:37 |
| 01368 | test(cli): cover camera flags | 2025-12-14 00:54 |
| 01375 | fix(web): heartbeat fallback after group inbound | 2025-12-14 01:26 |
| 01386 | test(macos): cover camera snap defaults | 2025-12-14 01:57 |
| 01390 | test(ios): add unit test target | 2025-12-14 02:05 |
| 01392 | test(android): add bridge unit tests | 2025-12-14 02:13 |
| 01395 | test(ios): share scheme and add deep link tests | 2025-12-14 02:17 |
| 01408 | test(ios): add bridge session + keychain suites | 2025-12-14 02:32 |
| 01409 | ci: run iOS xcodebuild tests | 2025-12-14 02:32 |
| 01411 | test(ios): cover voice trigger + camera clamps | 2025-12-14 02:43 |
| 01412 | test(ios): cover settings host/port parsing | 2025-12-14 02:46 |
| 01413 | fix(macos): avoid health polling in tests | 2025-12-14 02:54 |
| 01414 | test(macos): add settings view smoke coverage | 2025-12-14 02:54 |
| 01418 | test(macos): cover settings + activity models | 2025-12-14 03:06 |
| 01419 | ci: emit swift + iOS coverage | 2025-12-14 03:04 |
| 01425 | test(ios): add smoke coverage tests | 2025-12-14 03:25 |
| 01426 | ci: enforce 40% iOS coverage | 2025-12-14 03:25 |
| 01430 | test(ios): cover bridge client + more views | 2025-12-14 03:37 |
| 01431 | ci: raise iOS coverage gate to 50% | 2025-12-14 03:37 |
| 01440 | test(web): make heartbeat call selection deterministic | 2025-12-14 03:59 |
| 01459 | test(macos): boost Clawdis coverage to 40% | 2025-12-14 04:30 |
| 01462 | test(bonjour): cover watchdog and failure modes | 2025-12-14 04:33 |
| 01466 | test: cover identity defaults and pi flags | 2025-12-14 04:39 |
| 01491 | test(macos): cover control/camera disabled paths | 2025-12-14 05:30 |
| 01494 | test(web): stabilize group heartbeat test | 2025-12-14 05:35 |
| 01496 | test(ios): cover ScreenController webview setup | 2025-12-14 05:42 |
| 01497 | test(ios): exercise ScreenController eval | 2025-12-14 05:51 |
| 01498 | test(ios): cover RootCanvas bridge states | 2025-12-14 05:51 |
| 01499 | test(ios): bump app coverage | 2025-12-14 06:09 |

## Narrative

### Gateway and Node.js Test Infrastructure (1008, 1035-1038, 1042)

The earliest testing commits in this range established test infrastructure for the Node.js gateway. Commit 01008 added coverage for WebSocket chat attachments. Commits 01035-01036 improved test isolation by giving each run its own gateway lock file and adding a test:force npm script. Commit 01038 cleaned up obsolete reply session fixtures, and commit 01042 documented the force-run helper and relaxed coverage scope to focus on critical paths.

### Swift Gateway Utility and Semver Tests (1052-1053)

Commits 01052-01053 added comprehensive Swift test suites for gateway runtime utilities including Semver parsing and comparison, gateway port configuration, runtime resolution with version validation, entrypoint location, and log file discovery.

### Auto-Reply, Port Lock, and Protocol Tests (1071, 1083, 1088, 1096, 1111, 1122)

Commit 01071 added a regression test for bare /new trigger handling. Commit 01083 covered the WebSocket bind lock guard ensuring proper port-in-use detection. Commit 01088 introduced test protocol abstractions for mocking URLSession and WebSocket tasks to test concurrent gateway connections. Commit 01096 tested the updateLastRoute function for voice wake channel routing. Commit 01111 added WhatsApp-specific last-channel routing tests. Commit 01122 verified clean gateway exit on SIGTERM.

### macOS Gateway Channel and Endpoint Tests (1151, 1161, 1164)

Commit 01151 extended gateway channel tests to cover concurrent requests, connection reuse, and shutdown scenarios. Commit 01161 added comprehensive endpoint store tests for caching, expiration, and refresh behavior under concurrent access. Commit 01164 added retry logic to session temp directory cleanup for CI reliability.

### Cron and Discovery Tests (1216, 1220, 1221, 1231)

Commits 01216 and 01220 covered the cron scheduler in disabled and default-enabled states respectively. Commit 01221 added tests for lazy-loaded Bonjour discovery. Commit 01231 tested BonjourEscapes decoding for various input formats.

### Provider and Gateway RPC Tests (1267, 1279, 1307, 1327)

Commit 01267 added Telegram inbound media download test coverage. Commit 01279 extended tests for the new Gateway sessions list/patch RPC methods. Commit 01307 covered code signature team identifier lookups and node manager binary path resolution. Commit 01327 added comprehensive test suites for agent index and pi-path binary resolution.

### Cross-Platform Test Campaigns (1386, 1390-1395, 1408-1414, 1418-1419)

Starting at commit 01386, a systematic cross-platform testing campaign began. Commit 01386 added macOS camera snap default tests. Commit 01390 introduced the iOS unit test target with bridge endpoint ID tests. Commit 01392 added Android bridge pairing unit tests in Kotlin. Commit 01395 added iOS deep link parser tests. Commits 01408-01412 rapidly expanded iOS coverage with bridge session, keychain, voice trigger, camera clamp, and settings parsing suites. Commit 01409 configured GitHub Actions for iOS xcodebuild tests. Commit 01413 fixed macOS tests to avoid background health polling interference. Commits 01414 and 01418 added macOS settings view smoke tests and activity model coverage.

### CI Coverage Gates and Coverage Campaigns (1419, 1425-1426, 1430-1431, 1459)

Commit 01419 configured CI to emit Swift and iOS coverage metrics. Commit 01425 added iOS smoke tests and commit 01426 enforced a 40% coverage gate. Commit 01430 expanded iOS bridge client and view tests, and commit 01431 raised the gate to 50%. Commit 01459 boosted macOS Clawdis test coverage to 40% with comprehensive tests across settings, overlay, utilities, and window placement.

### Late-Stage Feature and Stability Tests (1440, 1462, 1466, 1491, 1494-1499)

Commit 01440 made web heartbeat tests deterministic. Commit 01462 covered Bonjour watchdog failure modes. Commit 01466 tested agent identity defaults and Pi flag handling. Commit 01491 covered macOS control/camera disabled paths. Commits 01494-01499 stabilized flaky tests and added iOS ScreenController, RootCanvas, and app coverage tests.

## Cross-references

- [documentation](documentation.md) -- test documentation and coverage scope docs
- [ux](ux.md) -- settings view smoke tests and onboarding UI testing
