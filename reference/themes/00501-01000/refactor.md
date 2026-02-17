# Theme: Refactor

Refactoring in the 501-1000 range followed three major arcs: decomposing the monolithic macOS app (504-579), extracting shared utilities and consolidating process management (595-700), and the architectural migration from relay-based IPC to a WebSocket gateway protocol (796-996). Early refactors split 3000-line source files into focused modules. Mid-range refactors unified command resolution, sound playback, and voice wake forwarding. The final third executed a comprehensive rename from "relay" to "gateway" and replaced HTTP/stdio RPC with a typed WebSocket control plane, culminating in IPC removal and protocol code generation.

## Commits

| # | Subject | Date |
|---|---------|------|
| 00504 | mac: streamline model config UI | 2025-12-06 21:39 |
| 00507 | chore: remove bin/warelay.js | 2025-12-06 23:17 |
| 00509 | chore(mac): guard Darwin import for relay manager | 2025-12-06 23:26 |
| 00511 | chore: move model reload to debug tab | 2025-12-06 23:40 |
| 00526 | macOS: split AppMain into focused modules | 2025-12-07 00:10 |
| 00529 | fix: remove legacy relay references | 2025-12-06 23:21 |
| 00543 | Mac: align app version with package.json | 2025-12-07 01:00 |
| 00551 | Mac: disable KeepAlive; launch toggle controls agent | 2025-12-07 01:13 |
| 00563 | Mac: stabilize XPC and voice wake handling | 2025-12-07 02:09 |
| 00564 | Mac: secure XPC and register mach service via launchd | 2025-12-07 02:27 |
| 00570 | Mac: allow signed CLI + same-uid XPC clients | 2025-12-07 02:48 |
| 00577 | Logging: use /tmp/clawdis for default pino logs | 2025-12-07 03:32 |
| 00579 | chore: purge warelay references | 2025-12-07 03:36 |
| 00581 | build: require signing identity for mac packaging | 2025-12-07 04:38 |
| 00595 | chore(agent): drop cli fallback, rpc only for sends | 2025-12-07 05:16 |
| 00602 | Settings: move session store path to Debug | 2025-12-07 04:38 |
| 00605 | fix: reuse resolver for agent rpc launch | 2025-12-07 05:34 |
| 00618 | Revert "fix: auto-start rpc worker for agent calls" | 2025-12-07 05:54 |
| 00651 | feat(macos): serve web chat over localhost to avoid cors | 2025-12-07 16:30 |
| 00652 | voice wake: use clean PATH (no inherited junk) | 2025-12-07 16:33 |
| 00659 | VoiceWake: pipe transcript to ssh forwarder | 2025-12-07 16:59 |
| 00663 | VoiceWake: send transcript via python/base64 instead of stdin | 2025-12-07 17:45 |
| 00668 | refactor(mac): split voice wake settings | 2025-12-07 17:54 |
| 00670 | VoiceWake: remove python hop; use escaped literal under /bin/sh | 2025-12-07 18:03 |
| 00686 | Utilities: add age helper for menu health label | 2025-12-07 19:02 |
| 00693 | chore: refresh webchat bundle | 2025-12-07 22:57 |
| 00695 | ui: align voice wake forwarding with remote mode | 2025-12-07 23:04 |
| 00698 | ui: reuse compact remote card in General and hide voice wake forwarder | 2025-12-07 23:20 |
| 00700 | ui: move health/cli info to Debug; add single health row in General | 2025-12-07 23:22 |
| 00712 | ui: drop default sound picker; use cli per-notification sound | 2025-12-08 00:56 |
| 00720 | webchat: move serving to relay loopback and tunnel from mac app | 2025-12-08 11:54 |
| 00723 | refactor(cli): drop tmux helpers and update help copy | 2025-12-08 12:43 |
| 00725 | SSH remote uses clawdis only | 2025-12-08 13:20 |
| 00726 | Split clawdis node vs mac helper commands | 2025-12-08 13:26 |
| 00728 | macOS webchat: use relay HTTP transport directly | 2025-12-08 13:12 |
| 00731 | Webchat: run agent in-process for RPC | 2025-12-08 14:14 |
| 00737 | feat(cli): unify relay providers and heartbeat flag | 2025-12-08 15:22 |
| 00751 | fix(mac): run remote health with pnpm under zsh | 2025-12-08 16:52 |
| 00754 | chore: fix lint warnings and formatting | 2025-12-08 17:05 |
| 00760 | chore: tighten webchat types and formatting | 2025-12-08 17:09 |
| 00764 | Webchat: clean server build and add ws types | 2025-12-08 16:21 |
| 00772 | perf(mac): move blocking launchctl/webchat work off main | 2025-12-08 18:42 |
| 00774 | tweak: centralize overlay max/min heights | 2025-12-08 18:52 |
| 00776 | chore: launch app in restart script instead of launch agent | 2025-12-08 19:01 |
| 00788 | VoiceWake: sanitize triggers only when applying | 2025-12-08 20:20 |
| 00791 | VoiceWake: streamline chimes, default to Glass | 2025-12-08 20:50 |
| 00794 | VoiceWake: centralize send chime and guard play | 2025-12-08 21:25 |
| 00796 | relay: add control channel and heartbeat stream | 2025-12-08 21:50 |
| 00797 | macos: use control channel for health and heartbeat | 2025-12-08 21:50 |
| 00798 | chore: sync webchat bundle and voice wake settings | 2025-12-08 21:51 |
| 00802 | macos: control channel diagnostics and tunnel-based testing | 2025-12-08 22:04 |
| 00805 | macos: polish voice overlay and remote command handling | 2025-12-08 22:23 |
| 00810 | macos: stabilize control connection wait | 2025-12-08 21:31 |
| 00821 | control: drop runtime export of type-only HeartbeatEventPayload | 2025-12-08 23:15 |
| 00832 | refactor(mac): split menubar UI into smaller files | 2025-12-09 00:27 |
| 00835 | chore: ignore macOS swiftpm cache | 2025-12-09 00:43 |
| 00838 | macOS: extract attributed string helper | 2025-12-09 00:55 |
| 00840 | chore: tidy agent event streaming types | 2025-12-09 00:57 |
| 00841 | chore: guard host runtime and simplify packaging | 2025-12-09 00:59 |
| 00842 | chore(mac): prefer host runtime for remote relay | 2025-12-09 00:59 |
| 00845 | chore(mac): drop duplicate job-state tracking | 2025-12-09 01:06 |
| 00846 | chore: single-source working state from agent events | 2025-12-09 01:17 |
| 00853 | refactor: type tau rpc stream events | 2025-12-09 01:37 |
| 00865 | Control: route health/heartbeat over RPC stdio | 2025-12-09 02:25 |
| 00869 | RPC: extract stdio loop and tests | 2025-12-09 02:37 |
| 00872 | macOS: centralize sound effect catalog/player | 2025-12-09 03:37 |
| 00876 | VoiceWake: route forwarding via agent rpc | 2025-12-09 02:50 |
| 00883 | VoiceWake: drop remote ssh config and harden template parsing | 2025-12-09 03:04 |
| 00885 | VoiceWake: drop unused forward health check state | 2025-12-09 03:12 |
| 00890 | feat(mac): tokenized voice overlay adoption | 2025-12-09 04:35 |
| 00895 | chore(instances): harden presence refresh and fix lint | 2025-12-09 04:51 |
| 00899 | Runtime: drop bun support | 2025-12-09 04:13 |
| 00901 | RPC: route logs to stderr to keep stdout JSON clean | 2025-12-09 04:30 |
| 00902 | Relay: force app to run relay via system node | 2025-12-09 04:36 |
| 00904 | Coordinator: centralize voice sessions for wake and push-to-talk | 2025-12-09 05:41 |
| 00905 | Gateway: finalize WS control plane | 2025-12-09 14:41 |
| 00907 | Gateway: discriminated protocol schema + CLI updates | 2025-12-09 15:01 |
| 00908 | CLI: remove relay/heartbeat legacy commands | 2025-12-09 15:06 |
| 00910 | Protocol: add TypeBox-driven Swift generator | 2025-12-09 15:21 |
| 00911 | Protocol: legacy shim file for Xcode references | 2025-12-09 15:23 |
| 00912 | Mac: use typed GatewayFrame + forward-compatible Swift generator | 2025-12-09 15:26 |
| 00913 | Mac: build GatewayProtocol target and typed presence handling | 2025-12-09 15:35 |
| 00915 | Mac: type agent events end-to-end | 2025-12-09 15:38 |
| 00917 | ci/docs: enforce protocol check and deprecate control api | 2025-12-09 17:03 |
| 00919 | Mac: launch gateway and add relay installer | 2025-12-09 16:15 |
| 00929 | UI: unify refresh buttons | 2025-12-09 17:54 |
| 00933 | IPC: rename relay socket to gateway.sock | 2025-12-09 17:03 |
| 00937 | chore: drop runner shim and add committer helper | 2025-12-09 17:24 |
| 00939 | chore(mac): make package/restart skip ts relay | 2025-12-09 17:36 |
| 00945 | chore: rename relay to gateway | 2025-12-09 18:00 |
| 00948 | chore: add gateway env/process manager after rename | 2025-12-09 19:37 |
| 00953 | fix(overlay): dismiss on token mismatch; keep gateway log clear helper | 2025-12-09 19:50 |
| 00954 | test(overlay): cover token guard outcomes | 2025-12-09 19:51 |
| 00958 | mac: fix gateway hello types | 2025-12-09 19:01 |
| 00959 | gateway: enforce hello order and modern json | 2025-12-09 19:09 |
| 00962 | chore(mac): dedupe local gateway label | 2025-12-09 19:13 |
| 00969 | gateway: drop ipc and simplify cli | 2025-12-09 20:18 |
| 00970 | chore: drop gateway ipc remnants | 2025-12-09 20:21 |
| 00972 | cli: gateway subcommands, drop ipc probes | 2025-12-09 20:26 |
| 00996 | chore: remove legacy rpc command | 2025-12-09 21:28 |

## Narrative

The refactoring arc in commits 501-1000 began with the macOS app's monolithic AppMain.swift reaching 3000+ lines. Commit 526 executed the first major split, extracting AppState, Constants, Utilities, and individual settings tab files into focused modules. Commit 507 deleted the legacy bin/warelay.js entrypoint, and commit 579 purged remaining "warelay" references throughout the codebase.

Process management refactoring consolidated command resolution logic. Commit 605 extracted CommandResolver as a shared utility for RelayProcessManager, AgentRPC, and XPCService, eliminating duplicated executable discovery code. Commit 595 dropped the CLI fallback path, making RPC the sole channel for agent sends.

The voice wake system underwent three transcript delivery refactors in rapid succession. Commit 659 moved from stdin piping to environment variables, commit 663 tried Python base64 encoding, and commit 670 settled on shell-escaped literals. Commit 876 later eliminated SSH-based forwarding entirely in favor of AgentRPC, and commits 883 and 885 cleaned up the now-dead SSH configuration UI and health check state.

WebChat architecture went through a significant restructuring. Commit 651 replaced file:// URLs with a localhost HTTP server. Commit 720 moved serving to the relay loopback. Commit 728 simplified to direct HTTP transport, and commit 731 eliminated subprocess spawning by running the agent in-process.

The control channel (796-865) introduced TCP-based RPC for health checks and heartbeat monitoring, replacing shell-out commands. Commit 797 updated the macOS app to use this channel. Commit 832 split MenuBar.swift by extracting CritterStatusLabel. Commits 845-846 consolidated working state to use agent events as the single source of truth.

The most significant refactoring arc was the gateway migration (905-996). Commit 905 replaced HTTP RPC with a WebSocket control plane. Commit 907 introduced discriminated union types with TypeBox schemas. Commit 910 added a TypeBox-driven Swift code generator. Commits 912-915 progressively replaced raw dictionary handling with typed GatewayFrame structs throughout the macOS codebase. Commit 945 executed the comprehensive relay-to-gateway rename across the entire project. Commits 969-972 completed IPC removal and restructured the CLI into gateway subcommands. Commit 996 removed the legacy RPC command, completing the architectural migration.

Supporting refactors included centralized sound management (872), voice session coordination (904), and token-based overlay sessions (890) that prevented cross-session interference between wake word and push-to-talk modes.

## Cross-references

- [bugfix](bugfix.md) -- refactors frequently introduced regressions requiring immediate fixes
- [core-feature](core-feature.md) -- many refactors accompanied or enabled new features
- [testing](../00001-00500/testing.md) -- test deduplication in 469-500 set patterns for this range
