# Theme: Process-Lifecycle

Process lifecycle management in commits 501-1000 evolved dramatically from simple child process spawning (505) through launchd agent management (549-551), XPC service stabilization (563, 598), and RPC worker supervision (882), culminating in the Gateway WebSocket architecture with tick-based liveness monitoring (916) and reconnect watchdogs (985). The trajectory shows a clear migration from shell-out patterns to persistent, supervised connections with proper cleanup, timeout handling, and single-instance enforcement.

## Commits

| # | Subject | Date |
|---|---------|------|
| 00505 | feat(mac): add child relay process manager | 2025-12-06 22:05 |
| 00549 | Mac: run via launchd agent with mach service | 2025-12-07 01:05 |
| 00551 | Mac: disable KeepAlive; launch toggle controls agent | 2025-12-07 01:13 |
| 00563 | Mac: stabilize XPC and voice wake handling | 2025-12-07 02:09 |
| 00583 | Mac: add relay restart button in Debug | 2025-12-07 03:42 |
| 00598 | chore(agent): start rpc worker at launch, fail if not running | 2025-12-07 05:24 |
| 00616 | fix: keep launch agent alive and inject PATH | 2025-12-07 05:49 |
| 00617 | fix: auto-start rpc worker for agent calls | 2025-12-07 05:54 |
| 00664 | macOS: fix health shell timeout race | 2025-12-07 16:48 |
| 00685 | Launch agent: disable autostart without killing running app | 2025-12-07 19:01 |
| 00761 | fix(mac): harden remote webchat tunnel and keep it alive | 2025-12-08 17:10 |
| 00762 | fix: restart webchat tunnel on main actor | 2025-12-08 17:12 |
| 00776 | chore: launch app in restart script instead of launch agent | 2025-12-08 19:01 |
| 00786 | HeartbeatStore: fix main-actor cleanup | 2025-12-08 20:17 |
| 00796 | relay: add control channel and heartbeat stream | 2025-12-08 21:50 |
| 00875 | mac: stop leaking ssh processes on quit | 2025-12-09 02:50 |
| 00882 | rpc: ensure worker is killed if it hangs on shutdown | 2025-12-09 03:04 |
| 00902 | Relay: force app to run relay via system node | 2025-12-09 04:36 |
| 00916 | gateway: harden ws protocol and liveness | 2025-12-09 17:02 |
| 00948 | chore: add gateway env/process manager after rename | 2025-12-09 19:37 |
| 00985 | mac: add gateway reconnect watchdog | 2025-12-09 21:07 |

## Narrative

### Child Process Foundation (505)

Commit 00505 introduced RelayProcessManager to spawn and supervise the relay as a child process using Swift Subprocess. It managed start/stop/restart lifecycle, streamed stdout/stderr to an in-memory log buffer, and enforced crash backoff (3 crashes in 120 seconds triggering permanent failure).

### Launchd Agent Management (549, 551, 616, 685, 776)

Commit 00549 switched the restart script to install a launchd agent plist with MachServices and KeepAlive. Commit 00551 immediately removed KeepAlive to give users direct control over agent lifetime. Commit 00616 re-added KeepAlive and injected proper PATH environment including Homebrew and pnpm directories. Commit 00685 refined this further by allowing users to disable autostart without killing the running app instance. By commit 00776, the restart mechanism shifted back to direct app launch instead of relying on the launch agent.

### XPC and RPC Worker Stabilization (563, 598, 617)

Commit 00563 stabilized XPC connections with retry logic (up to 10 attempts with 100ms delay), added duplicate instance detection, and fixed voice wake MainActor dispatch. Commit 00598 modified agentSend to eagerly start the RPC worker if not running and return clear errors on failure. Commit 00617 attempted auto-starting the RPC worker for agent calls but was immediately reverted in commit 00618.

### Debug and Restart Controls (583)

Commit 00583 added a "Restart relay" button to Debug settings that terminates the clawdis CLI relay process, with the next IPC request automatically spawning a fresh instance.

### Timeout and Race Fixes (664, 786)

Commit 00664 fixed a race condition in health check shell command timeout logic. Commit 00786 fixed a concurrency issue in HeartbeatStore by ensuring cleanup operations run on the main actor.

### SSH Tunnel Management (761, 762, 875)

Commits 00761-00762 hardened the remote webchat SSH tunnel with improved error handling and reconnection logic, ensuring tunnel restart operations run on the main actor. Commit 00875 addressed SSH process leaks by adding cleanup on app quit, calling SSHTunnelManager.stopAll() and VoiceWakeRuntime.shared.stop() in AppState deinit.

### Control Channel Architecture (796)

Commit 00796 implemented the control channel server -- a TCP server on 127.0.0.1:18789 serving newline-delimited JSON for RPC-style requests (ping, health, status, last-heartbeat, set-heartbeats) and streaming events. This replaced file-based heartbeat events with an in-memory event bus and refactored health and status commands to export summary functions.

### Worker Supervision (882, 902)

Commit 00882 added a 3-second timeout to RPC worker termination, sending SIGKILL after SIGTERM fails to prevent zombie processes. Commit 00902 changed RelayProcessManager to use system Node runtime instead of bundled executables.

### Gateway WebSocket Protocol (916, 948, 985)

Commit 00916 introduced tick-based liveness monitoring to the Gateway WebSocket protocol. The gateway broadcasts tick events at configurable intervals (default 30s), and clients track lastTick and reconnect if no tick arrives within 2x the interval tolerance. Commit 00948 added process and environment management utilities for the gateway after the relay-to-gateway rename. Commit 00985 implemented a watchdog timer to detect and recover from stalled gateway connections, automatically reconnecting when the connection becomes unresponsive.

## Cross-references

- [testing](testing.md) -- control channel and gateway tests
- [auto-reply](auto-reply.md) -- auto-send task lifecycle
