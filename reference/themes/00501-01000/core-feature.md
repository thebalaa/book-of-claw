# Theme: Core Feature

Core feature development in commits 501-1000 built the macOS native app from a basic menu bar skeleton into a full-featured desktop agent platform. The arc progressed through relay process management (505-550), voice wake with SSH forwarding (545-586), agent RPC and persistent workers (589-596), health monitoring (601-635), webchat serving and attachments (651-736), voice overlay with push-to-talk (738-807), the control channel and event streaming (795-858), the gateway WebSocket architecture (905-964), and cross-platform message envelope formatting (949-995). Each major feature built on previous infrastructure, creating a layered system of process management, real-time communication, and multi-modal input.

## Commits

| # | Subject | Date |
|---|---------|------|
| 00505 | feat(mac): add child relay process manager | 2025-12-06 22:05 |
| 00506 | feat: unify main session and icon cues | 2025-12-06 23:16 |
| 00508 | feat(macos): add tools tab installers | 2025-12-06 23:25 |
| 00515 | fix(mac): harden relay spawn path and show status | 2025-12-06 23:45 |
| 00518 | fix(mac): resolve relay executable via common paths and pnpm fallback | 2025-12-06 23:48 |
| 00520 | feat(mac): make relay project root configurable from Debug tab | 2025-12-06 23:51 |
| 00523 | fix(mac): run relay with cwd set to configured project root | 2025-12-06 23:57 |
| 00530 | mac: add signing helper and document debug bundle | 2025-12-07 00:30 |
| 00535 | Mac: add mic entitlement to signing helper | 2025-12-06 23:52 |
| 00539 | Mac: privileged CLI helper install via osascript | 2025-12-07 00:50 |
| 00545 | VoiceWake: add SSH forward target | 2025-12-07 01:53 |
| 00546 | VoiceWake: add SSH forwarder tests | 2025-12-07 01:55 |
| 00548 | VoiceWake: add SSH connectivity check UI | 2025-12-07 02:03 |
| 00549 | Mac: run via launchd agent with mach service | 2025-12-07 01:05 |
| 00550 | Mac: let launch checkbox toggle launchd agent | 2025-12-07 01:09 |
| 00555 | VoiceWake: keep listening until silence, gate enable on permissions | 2025-12-07 02:18 |
| 00557 | VoiceWake: log detection, hold to 1s silence, ssh log clarity | 2025-12-07 02:24 |
| 00562 | feat(mac): add automation permission | 2025-12-07 02:34 |
| 00564 | Mac: secure XPC and register mach service via launchd | 2025-12-07 02:27 |
| 00571 | VoiceWake: ssh check also verifies remote clawdis-mac | 2025-12-07 03:53 |
| 00586 | feat(macos): run live voice wake listener and animate ears | 2025-12-07 04:52 |
| 00589 | feat(cli): add agent send command and wire through XPC | 2025-12-07 05:00 |
| 00593 | feat(cli): add stdin/stdout rpc loop for agent sends | 2025-12-07 05:10 |
| 00594 | feat(agent): use persistent rpc worker for agent sends | 2025-12-07 05:14 |
| 00596 | feat(agent): add rpc status command and tests; rpc only path | 2025-12-07 05:20 |
| 00601 | CLI: add health probe command | 2025-12-07 04:33 |
| 00603 | Health: CLI probe and mac UI surfacing | 2025-12-07 04:38 |
| 00613 | chore(health): kick off health refresh at app launch | 2025-12-07 05:43 |
| 00619 | agent: deliver via rpc and voice forward | 2025-12-07 06:05 |
| 00635 | feat: add heartbeat toggle with live RPC control | 2025-12-07 15:32 |
| 00651 | feat(macos): serve web chat over localhost to avoid cors | 2025-12-07 16:30 |
| 00662 | webchat: bundle assets with rolldown | 2025-12-07 17:44 |
| 00672 | feat: add remote clawd toggle | 2025-12-07 18:19 |
| 00708 | feat(macos): add Sparkle updates and release docs | 2025-12-08 00:18 |
| 00713 | webchat: make remote mode load history and send via rpc | 2025-12-08 01:27 |
| 00714 | VoiceWake: capture utterance and add prefix | 2025-12-08 01:35 |
| 00715 | webchat: load remote history from tau fallback and send to session | 2025-12-08 01:36 |
| 00720 | webchat: move serving to relay loopback and tunnel from mac app | 2025-12-08 11:54 |
| 00722 | webchat: send via http rpc endpoint and show errors | 2025-12-08 12:23 |
| 00724 | Remote web chat tunnel and onboarding polish | 2025-12-08 12:50 |
| 00727 | Webchat: auto-start server and simplify config | 2025-12-08 13:12 |
| 00729 | feat(macos): add voice wake mic picker | 2025-12-08 15:05 |
| 00731 | Webchat: run agent in-process for RPC | 2025-12-08 14:14 |
| 00733 | status: read token usage from pi session logs | 2025-12-08 14:46 |
| 00734 | Webchat: inline attachments to agent RPC and fix status compile | 2025-12-08 14:46 |
| 00735 | Webchat: update bundled assets after attachment support | 2025-12-08 14:48 |
| 00736 | Webchat: cap/ persist attachments and strip data URLs | 2025-12-08 14:59 |
| 00737 | feat(cli): unify relay providers and heartbeat flag | 2025-12-08 15:22 |
| 00738 | feat: add voice wake overlay | 2025-12-08 16:29 |
| 00740 | feat: add adaptive voice wake delays | 2025-12-08 16:33 |
| 00752 | chore: use 2s silence or 5s max capture | 2025-12-08 16:55 |
| 00753 | chore: extend voice capture hard stop to 120s | 2025-12-08 16:58 |
| 00755 | chore: use 5s silence before speech, 2s after | 2025-12-08 17:06 |
| 00756 | Webchat: sync thinking level with session | 2025-12-08 16:09 |
| 00757 | Agent: add thinkingOnce flag | 2025-12-08 16:12 |
| 00758 | Webchat: poll session for messages/thinking | 2025-12-08 16:14 |
| 00763 | Webchat: push updates over WebSocket | 2025-12-08 16:19 |
| 00765 | feat(mac): add push-to-talk hotkey | 2025-12-08 17:23 |
| 00787 | RPC: stream heartbeat events to menu | 2025-12-08 20:18 |
| 00790 | VoiceWake: add chimes for trigger and send | 2025-12-08 20:45 |
| 00795 | docs: add control channel reference | 2025-12-08 21:50 |
| 00796 | relay: add control channel and heartbeat stream | 2025-12-08 21:50 |
| 00797 | macos: use control channel for health and heartbeat | 2025-12-08 21:50 |
| 00801 | control: seed events, add tests, update remote doc | 2025-12-08 22:03 |
| 00806 | macos: refine speech noise floor tracking | 2025-12-08 22:24 |
| 00807 | VoiceWake: add level meter | 2025-12-08 22:28 |
| 00822 | VoiceWake: track listening state for PTT | 2025-12-08 23:17 |
| 00830 | feat: emit job-state events from rpc | 2025-12-09 00:18 |
| 00833 | feat: broadcast agent events over control channel | 2025-12-09 00:28 |
| 00834 | feat: stream tool/job events over control channel | 2025-12-09 00:31 |
| 00836 | feat: forward tool/assistant events to agent bus | 2025-12-09 00:44 |
| 00839 | feat(mac): add agent events debug window | 2025-12-09 00:56 |
| 00851 | feat(macos): surface session activity in menu bar | 2025-12-09 01:28 |
| 00856 | Voice wake: send or dismiss on release | 2025-12-09 02:25 |
| 00857 | feat: surface system presence for the agent | 2025-12-09 02:25 |
| 00858 | feat(macos): add instances tab and presence beacons | 2025-12-09 02:25 |
| 00865 | Control: route health/heartbeat over RPC stdio | 2025-12-09 02:25 |
| 00876 | VoiceWake: route forwarding via agent rpc | 2025-12-09 02:50 |
| 00878 | feat(instances): beacon on connect and relay self-entry | 2025-12-09 03:56 |
| 00881 | feat(status): enrich session details | 2025-12-09 03:00 |
| 00886 | Relay: enforce single instance lock | 2025-12-09 03:17 |
| 00890 | feat(mac): tokenized voice overlay adoption | 2025-12-09 04:35 |
| 00904 | Coordinator: centralize voice sessions for wake and push-to-talk | 2025-12-09 05:41 |
| 00905 | Gateway: finalize WS control plane | 2025-12-09 14:41 |
| 00906 | WebChat: loopback snapshot hydration | 2025-12-09 14:41 |
| 00916 | gateway: harden ws protocol and liveness | 2025-12-09 17:02 |
| 00923 | CLI: add gateway --force option | 2025-12-09 16:28 |
| 00927 | Gateway: start providers and route sends to their surface | 2025-12-09 16:38 |
| 00936 | msg: retry web/telegram sends and add regression tests | 2025-12-09 17:23 |
| 00941 | mac: honor local relay path | 2025-12-09 17:40 |
| 00949 | surface: envelope inbound messages for agent | 2025-12-09 18:43 |
| 00955 | feat(mac): reuse running gateway | 2025-12-09 19:00 |
| 00964 | fix: enforce gateway single instance | 2025-12-09 19:40 |
| 00965 | telegram: show name and id in envelope | 2025-12-09 19:56 |
| 00977 | chore(mac): include os version and locale in handshake | 2025-12-09 20:35 |
| 00986 | feat(webchat): auto-start at root | 2025-12-09 21:07 |
| 00994 | feat(telegram): add typing cue | 2025-12-09 21:13 |
| 00995 | feat(webchat): sync theme with system | 2025-12-09 21:22 |

## Narrative

Core feature development began with the macOS relay process manager (505), which spawned and supervised the relay as a child process with crash backoff. Commits 515-523 hardened executable resolution with fallback chains across Homebrew, pnpm, and project-local paths. Commit 520 made the project root configurable from the Debug tab. Commits 549-550 added launchd agent management with Mach service registration, giving users launch-at-login control.

Voice wake functionality emerged in commits 545-586. Commit 545 introduced SSH forwarding with VoiceWakeForwardConfig supporting target, identity, command template, and timeout. Commit 548 added an SSH connectivity check UI. Commit 555 implemented hold-until-silence behavior and permission gating. Commit 557 added TCC automation permission checking. Commit 586 delivered the production VoiceWakeRuntime as a persistent background listener replacing the one-shot test harness.

The agent RPC layer (589-596) enabled the macOS app to invoke the agent without direct relay IPC access. Commit 589 added the agentSend XPC request type. Commit 593 implemented a persistent stdin/stdout JSON-RPC loop, and commit 594 refactored XPC to use this long-running worker instead of spawning per-request processes. Commit 596 added a status health check command with tests.

Health monitoring (601-635) introduced the `clawdis health --json` CLI command, the HealthStore polling mechanism, and a health status card in settings showing link status, auth age, and session details. Commit 635 added a heartbeat toggle with live RPC control from the menu bar.

Webchat evolved through several architectural phases. Commit 651 served assets over localhost to avoid CORS. Commit 662 bundled assets with rolldown. Commits 713-731 progressively moved from CLI subprocess spawning to HTTP RPC to in-process agent execution. Commits 734-736 added attachment support with size capping and data URL stripping. Commits 756-758 synchronized thinking levels with sessions and added polling for real-time updates. Commit 763 introduced WebSocket push updates.

The voice overlay system (738-807) provided visual feedback for voice input. Commit 738 created VoiceWakeOverlay as a floating panel near the menu bar. Commit 740 added adaptive delays based on transcript length. Commit 765 implemented Cmd+Fn push-to-talk with the VoicePushToTalk actor. Commit 790 added audio chimes for trigger and send events. Commits 806-807 added adaptive noise floor tracking and level meter visualization.

The control channel (795-858) introduced a TCP server for real-time RPC and event streaming. Commit 796 implemented the server with support for ping, health, status, and heartbeat queries. Commits 830-836 added agent event broadcasting including job-state, tool execution, and assistant events. Commit 851 surfaced session activity in the menu bar with tool-specific glyphs. Commit 858 added the Instances tab with presence beacons.

The gateway architecture (905-964) replaced the control channel with a WebSocket protocol. Commit 905 introduced the hello/hello-ok handshake with versioning and capabilities. Commit 916 added tick-based liveness monitoring. Commit 927 enabled the gateway to start configured providers and route sends to the correct surface. Commit 955 implemented gateway reuse by probing existing instances before spawning. Commit 964 enforced single-instance locking.

Late features included message envelope formatting (949, 965) providing transport context to the agent, message send retries with exponential backoff (936), Telegram typing indicators (994), and webchat theme synchronization with system appearance (995).

## Cross-references

- [bugfix](bugfix.md) -- new features frequently required immediate follow-up fixes
- [refactor](refactor.md) -- architectural refactors enabled and accompanied feature development
- [testing](../00001-00500/testing.md) -- features introduced test coverage alongside implementation
