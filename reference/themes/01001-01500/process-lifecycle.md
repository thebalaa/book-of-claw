# Theme: Process-Lifecycle

Process lifecycle management in commits 1001-1500 shifted from file-based locking and XPC communication to WebSocket-based gateway coordination, Unix socket control channels, and cron-based scheduled execution. The trajectory shows consolidation around the gateway as the central process orchestrator, with improvements to connection serialization, graceful shutdown, tunnel keepalive, and the introduction of a full cron scheduler for automated agent invocations.

## Commits

| # | Subject | Date |
|---|---------|------|
| 01032 | infra: use flock gateway lock | 2025-12-10 00:46 |
| 01058 | RPC: handle tau auto-compaction retries | 2025-12-10 11:40 |
| 01080 | chore(gateway): use ws bind as lock | 2025-12-11 15:17 |
| 01081 | mac: replace xpc with unix socket control channel | 2025-12-11 16:30 |
| 01093 | Merge remote-tracking branch 'origin/main' | 2025-12-12 16:10 |
| 01099 | Merge remote-tracking branch 'origin/main' | 2025-12-12 16:39 |
| 01104 | Merge remote-tracking branch 'origin/main' | 2025-12-12 16:47 |
| 01121 | fix(gateway): handle SIGTERM shutdown cleanly | 2025-12-12 18:28 |
| 01132 | Merge remote-tracking branch 'origin/main' | 2025-12-12 19:28 |
| 01200 | Cron: add scheduler, wakeups, and run history | 2025-12-13 02:34 |
| 01206 | Merge remote-tracking branch 'origin/main' | 2025-12-13 02:50 |
| 01224 | Merge remote-tracking branch 'origin/main' | 2025-12-13 04:01 |
| 01229 | Merge remote-tracking branch 'origin/main' | 2025-12-13 12:03 |
| 01232 | Merge remote-tracking branch 'origin/main' | 2025-12-13 13:01 |
| 01235 | Merge remote-tracking branch 'origin/main' | 2025-12-13 14:45 |
| 01257 | chore(ios): rename app to Clawdis | 2025-12-13 13:11 |
| 01263 | Merge remote-tracking branch 'origin/main' | 2025-12-13 14:15 |
| 01422 | feat: bootstrap agent workspace and AGENTS.md | 2025-12-14 03:14 |
| 01492 | Merge remote-tracking branch 'origin/main' | 2025-12-14 05:31 |
| 01493 | Merge remote-tracking branch 'origin/main' | 2025-12-14 05:32 |

## Narrative

### Gateway Locking Evolution (1032, 1080)

Commit 01032 replaced the gateway's locking mechanism with file-based flock for improved cross-platform compatibility. Commit 01080 then eliminated file locks entirely by switching to WebSocket listener bind as the lock mechanism -- if the port is already occupied, the gateway fails fast without stale lock files.

### RPC Retry and Compaction (1058)

Commit 01058 implemented retry logic for tau RPC auto-compaction events, tracking compaction state and pending retries with a resolution timing window to allow compaction events to arrive after agent_end. This addressed a lifecycle gap where compaction could silently fail.

### XPC to Unix Socket Migration (1081)

Commit 01081 removed the AsyncXPCConnection dependency and replaced XPC inter-process communication with a Unix socket-based control channel. This simplified the architecture by removing Apple-specific IPC in favor of a portable socket-based approach.

### Graceful Shutdown (1121)

Commit 01121 implemented SIGTERM signal handling in the gateway server, enabling clean shutdown with proper resource cleanup instead of abrupt termination.

### Cron Scheduler Introduction (1200)

Commit 01200 introduced a comprehensive cron scheduler system with periodic task support, wake-up triggers, and execution history tracking. This enabled scheduled agent invocations and automated background operations, representing a significant expansion of the gateway's process orchestration capabilities.

### Agent Workspace Bootstrap (1422)

Commit 01422 implemented agent workspace bootstrapping that initializes a new agent environment with required configuration files and directory structure, along with an AGENTS.md specification document for agent creation and management.

### Branch Integration

Commits 01093, 01099, 01104, 01132, 01206, 01224, 01229, 01232, 01235, 01263, 01492, and 01493 are merge integration commits keeping feature branches synchronized with upstream main. Commit 01257 renamed the iOS app from ClawdisKit to Clawdis across the codebase.

## Cross-references

- [error-handling](error-handling.md) -- gateway shutdown and timeout handling
- [dependency](dependency.md) -- XPC removal and package updates
