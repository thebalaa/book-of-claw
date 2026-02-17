# Theme: Auto-Reply

In commits 501-1000, the auto-reply system saw relatively few direct changes, shifting from message-level enhancements to higher-level features. The /status in-chat command was introduced to report agent readiness without invoking the agent (665), and the webchat gained thinkingOnce support allowing per-message thinking level overrides that sync with session state (756-757). A late bugfix addressed auto-send task initialization errors in the voice overlay (800).

## Commits

| # | Subject | Date |
|---|---------|------|
| 00665 | auto-reply: enrich chat status | 2025-12-07 16:53 |
| 00756 | Webchat: sync thinking level with session | 2025-12-08 16:09 |
| 00757 | Agent: add thinkingOnce flag | 2025-12-08 16:12 |
| 00800 | fix: avoid auto-send task init error | 2025-12-08 22:02 |

## Narrative

### In-Chat Status Command (665)

Commit 00665 introduced the /status directive, allowing users to query agent readiness, session context usage, thinking and verbose option states, and WhatsApp web credential age directly in chat without triggering a full agent invocation. This was accompanied by documentation updates across multiple files including CHANGELOG.md, README.md, and troubleshooting guides.

### Thinking Level Synchronization (756-757)

Commits 00756 and 00757 added per-message thinking level control to the webchat and agent command. Commit 00756 implemented a thinkingOnce flag in the webchat that allows overriding the thinking level for a single message, with the selector mirroring the session's persisted level and reverting after one use. The server reads the persisted thinkingLevel from the session store and returns it in bootstrap info. Commit 00757 added the thinkingOnce command-line option to the agent, establishing a resolution order of thinkOnce > thinkOverride > persisted > defaults.

### Auto-Send Task Fix (800)

Commit 00800 fixed an initialization error in the voice overlay's auto-send task that could occur when the overlay was dismissed before the task completed, adding proper task cleanup and cancellation handling.

## Cross-references

- [process-lifecycle](process-lifecycle.md) -- voice overlay lifecycle and task management
- [testing](testing.md) -- auto-reply test coverage in related commits
