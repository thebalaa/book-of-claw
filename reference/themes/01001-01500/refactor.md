# Theme: Refactor

Refactoring in commits 1001-1500 restructured the codebase at multiple levels as the platform evolved from a macOS-centric app into a multi-platform ecosystem. Key refactors included macOS menu and UI state simplification (1002-1048), gateway locking and health architecture (1012-1080), XPC replacement with Unix sockets (1081), gateway event bus and endpoint resolution extraction (1156-1160), auto-reply backend consolidation (1072-1114), cron store modularization (1241-1250), macOS UI automation delegation to Peekaboo (1339), bridge client parameter restructuring (1322), Swift Observation framework migration (1477), and chat UI compaction (1476). These refactors consistently moved toward cleaner separation of concerns, better testability, and cross-platform code sharing.

## Commits

| # | Subject | Date |
|---|---------|------|
| 01002 | mac: clear status highlight via menu delegate | 2025-12-09 23:01 |
| 01004 | mac: revert webchat menu fallback | 2025-12-09 23:15 |
| 01006 | mac: tie highlight to panel visibility | 2025-12-09 23:20 |
| 01007 | mac: close panel on second click | 2025-12-09 23:25 |
| 01011 | mac: toggle panel purely from visibility | 2025-12-09 23:36 |
| 01012 | gateway: cache health snapshot | 2025-12-09 23:38 |
| 01018 | mac: global outside-click monitor and highlight helper | 2025-12-10 00:51 |
| 01021 | mac: centralize log path lookup | 2025-12-10 00:03 |
| 01024 | mac: drop legacy log path | 2025-12-10 00:04 |
| 01025 | mac: treat pnpm/bun processes as expected gateways | 2025-12-10 01:10 |
| 01030 | mac: route remote mode through SSH | 2025-12-10 01:43 |
| 01031 | mac: avoid spawning local gateway in remote mode | 2025-12-10 01:44 |
| 01032 | infra: use flock gateway lock | 2025-12-10 00:46 |
| 01043 | mac: align web chat UI with web | 2025-12-10 02:18 |
| 01048 | mac: simplify package manager picker | 2025-12-10 02:49 |
| 01049 | fix(voice): unify overlay send flow | 2025-12-10 02:52 |
| 01051 | mac: drop yarn fallback | 2025-12-10 03:49 |
| 01072 | chore: drop rpc->json fallback | 2025-12-10 15:58 |
| 01074 | health: stop direct baileys probes | 2025-12-10 16:35 |
| 01076 | health: gateway-only status and stable reconnect | 2025-12-10 16:47 |
| 01079 | lint: format and stabilize gateway health | 2025-12-10 18:00 |
| 01080 | chore(gateway): use ws bind as lock | 2025-12-11 15:17 |
| 01081 | mac: replace xpc with unix socket control channel | 2025-12-11 16:30 |
| 01082 | style(pi): wrap mode arg lookup | 2025-12-11 18:53 |
| 01092 | mac: remove voice wake forward pref | 2025-12-12 16:09 |
| 01098 | style(mac): hud glass voice overlay | 2025-12-12 16:39 |
| 01114 | refactor(auto-reply): remove pi json fallback | 2025-12-12 17:43 |
| 01124 | refactor(mac): embed work badge in status icon | 2025-12-12 18:40 |
| 01156 | refactor(macos): replace gateway NotificationCenter with event bus | 2025-12-12 22:06 |
| 01159 | refactor(macos): centralize gateway endpoint resolution | 2025-12-12 22:26 |
| 01160 | refactor(macos): extract gateway payload decoding | 2025-12-12 22:26 |
| 01179 | refactor(ios): remove manual URL controls | 2025-12-13 00:31 |
| 01183 | refactor(ios): minimal full-screen canvas | 2025-12-13 00:50 |
| 01190 | refactor(swift): rename ClawdisNodeKit to ClawdisKit | 2025-12-13 01:33 |
| 01201 | macOS: add Cron settings tab | 2025-12-13 02:34 |
| 01208 | macOS: widen settings window | 2025-12-13 03:00 |
| 01209 | refactor(mac): inject context card as NSMenuItem view | 2025-12-13 03:03 |
| 01211 | macOS: compact context menu context rows | 2025-12-13 03:30 |
| 01223 | macOS: adjust context card padding | 2025-12-13 04:00 |
| 01227 | chore: share bonjour escapes - refresh webchat bundle | 2025-12-13 11:12 |
| 01228 | macOS: increase context card row spacing | 2025-12-13 11:34 |
| 01234 | macOS: align sessions list with header | 2025-12-13 14:12 |
| 01236 | macOS: align context padding | 2025-12-13 15:12 |
| 01239 | feat(cron): always post isolated summaries to main | 2025-12-13 16:18 |
| 01241 | refactor(cron): simplify main-summary prefix config | 2025-12-13 17:03 |
| 01248 | refactor(cron): move store into -clawdis-cron | 2025-12-13 19:37 |
| 01250 | refactor(cron): drop auto-migration | 2025-12-13 20:15 |
| 01297 | refactor(mac): reorganize debug settings | 2025-12-13 17:35 |
| 01322 | refactor: apply stashed bridge + CLI changes | 2025-12-13 19:30 |
| 01324 | chore(swift): run swiftformat and clear swiftlint | 2025-12-13 19:53 |
| 01326 | fix: harden pi package resolution | 2025-12-13 20:37 |
| 01339 | refactor(macos)!: remove clawdis-mac ui; host PeekabooBridge | 2025-12-13 23:49 |
| 01346 | feat(chat): share SwiftUI chat across macOS+iOS | 2025-12-14 00:17 |
| 01351 | chore(ci): sync protocol + swiftformat | 2025-12-14 00:36 |
| 01374 | chore(macos): swiftformat | 2025-12-14 01:11 |
| 01385 | feat(camera): share jpeg transcoder + default maxWidth | 2025-12-14 01:56 |
| 01445 | refactor(macos): simplify bridge frame handling | 2025-12-14 03:56 |
| 01457 | fix(chat): improve history + polish SwiftUI panel | 2025-12-14 04:18 |
| 01459 | test(macos): boost Clawdis coverage to 40% | 2025-12-14 04:30 |
| 01476 | refactor(chat-ui): compact layout | 2025-12-14 04:41 |
| 01477 | refactor(observation): migrate SwiftUI state | 2025-12-14 05:04 |
| 01489 | refactor(macos): tidy gateway discovery naming | 2025-12-14 05:28 |
| 01490 | fix(camera): harden capture pipeline | 2025-12-14 05:30 |

## Narrative

Early refactoring focused on macOS menu bar state management. Commits 1002-1011 progressively simplified panel toggle logic, moving from separate state flags to a single visibility-driven toggle. Commit 1012 added health snapshot caching to the gateway, and 1018 introduced a global outside-click monitor. Commits 1021 and 1024 centralized and cleaned up log path lookup.

Gateway infrastructure refactoring replaced the file-based flock lock with WebSocket listener bind (1080) after first introducing flock in 1032. Commit 1074 removed direct Baileys socket probing from health checks, and 1076 restructured health to make gateway reachability the primary metric. The RPC-to-JSON fallback was removed (1072) and auto-reply was simplified to prefer Pi RPC by default, with the JSON fallback removed entirely (1114).

The largest architectural refactor replaced XPC inter-process communication with Unix socket-based communication (1081), removing the AsyncXPCConnection dependency. This was followed by the gateway event bus migration (1156), which replaced NotificationCenter with async Task-based event streaming. Commits 1159-1160 extracted endpoint resolution and payload decoding into dedicated modules, improving testability.

iOS refactoring removed manual URL controls (1179), simplified Canvas to minimal full-screen mode (1183), and renamed ClawdisNodeKit to ClawdisKit (1190) to reflect broader cross-platform scope. Context menu layout went through iterative refinement with NSMenuItem view injection (1209), compacted rows (1211), and padding adjustments (1223, 1228, 1236).

Cron system refactoring simplified the summary prefix config (1241), moved the store into a dedicated clawdis-cron package (1248), and dropped auto-migration (1250). Commit 1297 reorganized debug settings, and 1322 restructured the bridge client to accept parameter objects instead of individual arguments.

The breaking refactor at 1339 removed clawdis-mac UI automation subcommands in favor of hosting the PeekabooBridge socket, delegating UI automation to the separate peekaboo CLI. Commit 1346 shared the SwiftUI chat interface across macOS and iOS, and 1385 shared the JPEG transcoder for camera capture.

The culminating refactors were the chat UI compaction (1476) and the large-scale Observation framework migration (1477), which updated all app state classes, views, and models across iOS and macOS to use the @Observable macro, replacing older state management patterns for better performance and SwiftUI compatibility.

## Cross-references

- [core-feature](core-feature.md) -- refactors frequently enabled or accompanied new feature development
- [bugfix](bugfix.md) -- some refactors were motivated by fixing architectural issues that caused bugs
