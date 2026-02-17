# Theme: Logging

Logging commits in the 1001-1500 range focus on improving observability across the gateway, WebSocket, Telegram, and Bonjour subsystems. Early work expanded gateway attach diagnostics and suppressed noisy warnings, followed by detailed WebSocket handshake and connection lifecycle logging. Later commits added verbose Telegram message logging, WebChat bootstrap status output, and Bonjour advertisement failure reporting with watchdog logging. iOS also gained a discovery debug log view for diagnosing network issues.

## Commits

| # | Subject | Date |
|---|---------|------|
| 01026 | fix: expand gateway attach log | 2025-12-10 00:19 |
| 01029 | mac: silence proc_pidpath warning | 2025-12-10 01:43 |
| 01066 | telegram: fix verbose log ordering | 2025-12-10 14:33 |
| 01068 | webchat: improve logging and static serving | 2025-12-10 15:32 |
| 01069 | gateway: add webchat handshake logging | 2025-12-10 15:32 |
| 01078 | chore(gateway): log pre-hello ws closures | 2025-12-10 16:58 |
| 01144 | feat(mac): add rolling diagnostics log | 2025-12-12 20:46 |
| 01461 | fix(bonjour): log advertise failures and watchdog | 2025-12-14 04:33 |
| 01463 | feat(ios): add discovery debug logs | 2025-12-14 04:34 |

## Narrative

The first logging improvement in this range appeared at commit 01026, which expanded gateway attach log messages to include more detailed diagnostic information for troubleshooting connection issues. Shortly after, commit 01029 suppressed noisy proc_pidpath warnings that appeared when querying process information for non-existent processes in the PortGuardian.

Commit 01066 added verbose logging for inbound Telegram messages, showing chatId, sender, message length, and preview before reply processing. Commits 01068 and 01069 enhanced WebChat and gateway logging respectively: 01068 added detailed WebSocket connection lifecycle status messages to the bootstrap script, while 01069 added comprehensive handshake logging including hello message details, presence snapshots, and health status. Commit 01078 further improved gateway observability by logging WebSocket closures that occur before the hello handshake completes.

Later in the range, commit 01144 introduced a rolling diagnostics log system in the macOS app for ongoing debugging and troubleshooting. Near the end, commit 01461 improved Bonjour service logging by capturing advertisement failures and watchdog timeouts, and commit 01463 added a dedicated debug log view to iOS settings for visualizing the gateway discovery process.

## Cross-references

- [debugging](debugging.md) -- logging improvements often support debugging workflows
- [networking](networking.md) -- Bonjour and WebSocket logging directly supports network diagnostics
