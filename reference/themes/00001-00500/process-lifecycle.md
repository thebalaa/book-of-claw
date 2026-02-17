# Theme: Process Lifecycle

Addresses how the CLI process stays alive after setup, shuts down gracefully, manages child processes, handles sessions and prompts, maintains heartbeat monitoring, implements crash recovery mechanisms, enables IPC for concurrent connections, manages tau RPC lifecycle for Pi agents, operates in Pi-only mode, and processes directives for system-level actions.

## Commits

| # | Subject | Date |
|---|---------|------|
| 00024 | Keep setup/webhook running with waitForever and graceful SIGINT | 2025-11-24 13:25 |
| 00026 | Keep process alive reliably with unref interval in waitForever | 2025-11-24 13:36 |
| 00037 | Add command timeout and async polling auto-replies | 2025-11-24 16:06 |
| 00041 | Run auto-reply commands via spawn with TTY to avoid hangs | 2025-11-24 16:15 |
| 00092 | feat: serialize command auto-replies with queue | 2025-11-25 04:40 |
| 00201 | feat: send session prompt once | 2025-11-25 23:52 |
| 00228 | feat: add heartbeat cli and relay trigger | 2025-11-26 17:04 |
| 00230 | fix: heartbeat falls back to last session contact | 2025-11-26 17:08 |
| 00234 | feat: add heartbeat idle override and preserve session freshness | 2025-11-26 17:26 |
| 00240 | Heartbeat: harden targeting and support lid mapping | 2025-11-26 18:15 |
| 00243 | Heartbeat: session-id override and safer fallback | 2025-11-26 18:19 |
| 00246 | Heartbeat: honor session override | 2025-11-26 18:32 |
| 00254 | Fix WebSocket crash + heartbeat default 10min + docs refresh | 2025-11-27 18:21 |
| 00286 | Add auto-recovery from stuck WhatsApp sessions | 2025-11-30 17:53 |
| 00288 | Increase watchdog timeout to 30 minutes | 2025-11-30 18:03 |
| 00293 | Add IPC to prevent Signal session corruption from concurrent connections | 2025-12-02 06:31 |
| 00301 | chore(security): harden ipc socket | 2025-12-02 16:09 |
| 00302 | chore(security): purge session store on logout | 2025-12-02 16:33 |
| 00303 | chore(logs): rotate daily and prune after 24h | 2025-12-02 17:11 |
| 00307 | perf(pi): reuse tau rpc for command auto-replies | 2025-12-02 20:09 |
| 00320 | fix(media): clean up files after response finishes | 2025-12-02 21:10 |
| 00333 | Heartbeat: normalize array replies | 2025-12-03 00:40 |
| 00335 | Heartbeat: guard optional heartbeatCommand | 2025-12-03 00:45 |
| 00347 | Auto-reply: stream verbose tool results via tau rpc | 2025-12-03 09:21 |
| 00349 | Tau RPC: resolve on agent_end | 2025-12-03 09:39 |
| 00361 | Tau RPC: wait for agent_end when tools run | 2025-12-03 11:29 |
| 00362 | Pi: resume Tau sessions with --continue | 2025-12-03 11:33 |
| 00363 | Tau RPC: resolve on agent_end or exit | 2025-12-03 11:34 |
| 00364 | Pi: stream assistant text during RPC runs | 2025-12-03 11:50 |
| 00365 | Pi: stream tool results faster (0.5s, flush after 5) | 2025-12-03 12:08 |
| 00401 | chore: make pi-only rpc with fixed sessions | 2025-12-05 17:50 |
| 00403 | fix: harden pi rpc prompt handling | 2025-12-05 18:24 |
| 00404 | Route pi agent prompts via RPC stdin | 2025-12-05 18:34 |
| 00407 | fix: ignore rpc toolcall deltas to avoid duplicate replies | 2025-12-05 19:16 |
| 00409 | feat: stream turn completions and tighten rpc timeout | 2025-12-05 21:13 |
| 00411 | fix: normalize directive triggers and short-circuit | 2025-12-05 21:29 |
| 00413 | chore: add system marker to directives and abort | 2025-12-05 21:37 |
| 00418 | fix: avoid directive hits inside URLs and add tests | 2025-12-05 22:28 |
| 00419 | test: cover directive parsing and abort/restart prefixes | 2025-12-05 22:29 |
| 00420 | fix: ignore directives inside history blocks | 2025-12-05 22:49 |
| 00423 | fix: broaden prompt-echo guard and add heartbeat directive test | 2025-12-05 22:56 |
| 00424 | fix: allow inline directives to continue and add mixed-message test | 2025-12-05 22:57 |
| 00425 | fix: handle prompt-too-long by resetting session and continuing inline directives | 2025-12-05 23:01 |
| 00426 | revert prompt-too-long fallback and keep inline directives | 2025-12-05 23:18 |
| 00440 | fix: harden directive handling | 2025-12-05 23:43 |
| 00444 | fix: bundle pi dependency and directive handling | 2025-12-06 00:49 |

## Narrative Thread

The process lifecycle story begins with keeping Node.js alive. When the webhook server or setup command completed, the process would exit because nothing kept the event loop running. Commit 00024 introduced `waitForever()` with graceful SIGINT handling. Eleven minutes later, commit 00026 refined this using an unref'd interval that permits clean shutdown without blocking the loop.

Early command execution faced reliability issues. Commit 00037 added configurable timeouts for auto-reply commands and enabled asynchronous polling-mode replies. Commit 00041 switched child processes from `exec` to `spawn` with TTY inheritance because commands like `claude` would hang without a pseudo-terminal. Commit 00092 serialized command auto-replies with a queue to prevent concurrent invocations from interfering.

Session management arrived with commit 00201, which added `sendSystemOnce` to avoid re-sending long system prompts on every turn. Sessions now tracked a `systemSent` flag, sending bodyPrefix and template only on first contact.

The heartbeat system emerged as a proactive monitoring mechanism. Commit 00228 introduced `warelay heartbeat` to manually trigger polls and `--heartbeat-now` for startup polling. Commit 00230 hardened targeting with fallback to the most recent contact. Commit 00234 added `--heartbeat-skip-idle` to skip when sessions were quiet and ensured heartbeats preserved session freshness by updating timestamps. Commit 00240 supported @lid format in targeting. Commit 00243 added `--session-id` override for manual session selection with safer fallback logic. Commit 00246 ensured the override was honored throughout the send flow.

Crash recovery became critical with commit 00254, which wrapped Baileys connection listeners in try-catch and added global unhandledRejection/uncaughtException handlers to prevent silent crashes, while also changing the default heartbeat from 30 to 10 minutes. Commit 00286 implemented a message timeout watchdog that auto-restarted connections after 10 minutes of silence, added early allowFrom filtering to block unauthorized senders before encryption, and integrated health monitoring into heartbeat warnings when over 30 minutes elapsed without messages. Commit 00288 increased the watchdog timeout to 30 minutes to avoid false positives during normal heartbeat cycles.

Concurrent connection handling required IPC. Commit 00293 implemented Unix socket IPC at `~/.warelay/relay.sock` allowing `warelay send` and `warelay heartbeat` to reuse the relay's existing connection instead of creating new Baileys sockets that corrupted Signal session ratchets. Commit 00301 hardened the socket with 0700 directory and 0600 socket permissions, symlink rejection, and ownership validation. Commit 00302 purged the session store on logout. Commit 00303 added daily log rotation with 24-hour pruning.

The tau RPC lifecycle became central to Pi agent operation. Commit 00307 optimized Pi replies by reusing tau RPC connections for command auto-replies instead of creating new connections. Commit 00320 cleaned up temporary media files after response delivery. Commit 00333 normalized heartbeat array replies. Commit 00335 guarded optional heartbeatCommand. Commit 00347 streamed verbose tool results via tau RPC for real-time display. Commit 00349 fixed tau RPC resolution to occur at agent completion (`agent_end`). Commit 00361 ensured RPC waited for `agent_end` even when tools ran. Commit 00362 added `--continue` flag support for resuming Tau sessions without cold starts. Commit 00363 refined resolution to handle both `agent_end` events and process exit. Commit 00364 enabled streaming of assistant messages during RPC execution. Commit 00365 optimized tool result streaming with 0.5s debounce and flush-after-5 strategy.

The Pi-only era began with commit 00401, which dropped support for all non-Pi agents and restructured agent handling to default to Pi RPC. Commit 00403 hardened Pi RPC prompt handling to ensure body messages always went via RPC stdin even when command arrays omitted the template. Commit 00404 refactored Pi invocation to drive the agent via RPC stdin, sending prompts as JSON structures for server-side auto-compaction and streaming.

Directive handling and process management matured in the 400s. Commit 00407 fixed duplicate reply handling by ignoring RPC toolcall delta events. Commit 00409 implemented streaming of turn completions and tightened RPC timeout. Commit 00411 normalized directive triggers and added short-circuit logic for early termination. Commit 00413 added system markers to identify directive messages and improved abort logic. Commit 00418 fixed directive parsing to avoid triggers inside URLs. Commit 00419 expanded test coverage for directive parsing. Commit 00420 ignored directives inside history blocks. Commit 00423 broadened prompt-echo guards and added heartbeat directive tests. Commit 00424 allowed inline directives to continue processing. Commit 00425 handled "prompt too long" errors by resetting sessions. Commit 00426 reverted the session reset but kept inline directive continuation. Commit 00440 hardened directive parsing against edge cases and malformed syntax. Commit 00444 bundled the Pi CLI dependency and fixed directive handling for the bundled version.

## Related Themes

- [auto-reply](auto-reply.md) — lifecycle management for auto-reply child processes and command execution
- [verbosity-and-ux](verbosity-and-ux.md) — timeout logging and heartbeat monitoring visibility
- [twilio-api](twilio-api.md) — early webhook lifecycle before web-only transition
- [provider](provider.md) — web provider session management and reconnection
- [core-feature](core-feature.md) — session persistence, heartbeat triggers, IPC, and directive handling
