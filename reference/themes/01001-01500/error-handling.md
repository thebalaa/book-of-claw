# Theme: Error-Handling

Error handling in commits 1001-1500 expanded across multiple surfaces: WebSocket error formatting for webchat, tau RPC retry and auto-cancellation logic, gateway authentication failure surfacing, empty message rejection, Bonjour advertisement failure logging, bridge connection timeouts, and session load error reporting. The pattern shows a maturing system adding user-facing error messages and graceful degradation where previously errors were silent or caused hangs.

## Commits

| # | Subject | Date |
|---|---------|------|
| 01003 | fix(macos): harden presence decode | 2025-12-09 22:08 |
| 01037 | webchat: handle bind errors gracefully | 2025-12-10 01:00 |
| 01054 | webchat: show real ws errors | 2025-12-10 01:27 |
| 01058 | RPC: handle tau auto-compaction retries | 2025-12-10 11:40 |
| 01059 | RPC: auto-cancel hook UI prompts | 2025-12-10 11:46 |
| 01062 | Auto-reply: reject empty inbound messages | 2025-12-10 13:51 |
| 01065 | mac: surface gateway auth failures | 2025-12-10 14:32 |
| 01291 | fix(macos): surface gateway sessions load errors | 2025-12-13 17:15 |
| 01299 | fix(cli): improve browser control errors | 2025-12-13 17:37 |
| 01308 | fix(mac): clarify attach-only gateway errors | 2025-12-13 18:09 |
| 01319 | fix(ios): avoid actor-isolated access from audio tap | 2025-12-13 19:14 |
| 01410 | fix(ios): timeout bridge connect | 2025-12-14 02:41 |
| 01461 | fix(bonjour): log advertise failures and watchdog | 2025-12-14 04:33 |
| 01495 | fix(android): avoid non-exhaustive sheet switch | 2025-12-14 05:42 |

## Narrative

### Presence and Protocol Hardening (1003)

Commit 01003 refactored presence event decoding to use a dedicated PresenceEventPayload struct with proper Codable decoding, replacing manual JSON manipulation and improving type safety with proper error handling.

### WebChat Error Surfaces (1037, 1054)

Commit 01037 improved the webchat server to gracefully handle port binding failures with clear error messages. Commit 01054 introduced a WebSocket error formatter that distinguishes between CloseEvent, WebSocket error events, and generic errors, displaying actionable messages with state labels and reasoning details.

### RPC Retry and Cancellation (1058, 1059)

Commit 01058 implemented retry logic for tau RPC auto-compaction events with state tracking and a resolution timing window. Commit 01059 added automatic cancellation of hook_ui_request events in non-interactive surfaces like WhatsApp, sending fire-and-forget responses to prevent UI prompts from blocking the agent.

### Input Validation (1062)

Commit 01062 added early validation to reject empty inbound message bodies after normalization, returning a user-friendly message instead of sending empty prompts to the agent.

### Gateway Authentication (1065, 1308)

Commit 01065 enhanced error reporting for gateway authentication failures by detecting URLError with dataNotAllowed code (WS close 1008) and surfacing token mismatch errors with actionable guidance. Commit 01308 improved error messaging when attach-only gateway mode is enabled and the gateway cannot be reached.

### Session and Browser Errors (1291, 1299)

Commit 01291 added user-facing error messages when the macOS app fails to load sessions from the gateway. Commit 01299 enhanced error messages for browser control CLI commands to provide clearer feedback on operation failures.

### Actor Isolation (1319)

Commit 01319 fixed actor isolation compliance in VoiceWakeManager by properly typing the audio tap callback block and storing it before installation, avoiding crossing actor boundaries that could cause runtime errors.

### Bridge Timeout (1410)

Commit 01410 added timeout handling to iOS bridge connection logic so connection attempts fail gracefully after a specified duration instead of hanging indefinitely.

### Bonjour Logging (1461)

Commit 01461 improved Bonjour service logging by capturing advertise failures and watchdog timeouts, adding detailed error reporting when service advertisement fails.

### Android Exhaustiveness (1495)

Commit 01495 fixed Android sheet handling to avoid non-exhaustive switch statement compiler warnings, ensuring all possible sheet states are handled with an appropriate default case.

## Cross-references

- [process-lifecycle](process-lifecycle.md) -- RPC compaction retries and gateway shutdown
- [dependency](dependency.md) -- pi agent updates that changed error handling in tau-rpc
