# Theme: Persistence

Persistence commits in the 1001-1500 range address agent usage data preservation, Android foreground service connectivity, and session store race condition handling. These changes ensure data and connections survive across process boundaries and concurrent access.

## Commits

| # | Subject | Date |
|---|---------|------|
| 01055 | fix: persist usage from rpc | 2025-12-10 01:37 |
| 01388 | feat(android): keep node connected via foreground service | 2025-12-14 02:01 |
| 01467 | fix(config): tolerate session store races | 2025-12-14 04:41 |

## Narrative

Commit 01055 fixed an issue where agent metadata and usage stats were lost when assistant messages contained no text. The parsing logic was updated to always record the last assistant message, preserving model, provider, and usage information across RPC calls.

Commit 01388 added foreground service configuration to the Android manifest, keeping the node connection alive with a persistent notification. This prevents Android from suspending the app and ensures continuous bridge connectivity for the node application.

Commit 01467 fixed the session store to gracefully handle concurrent access races. This improves robustness of session persistence when multiple processes attempt to read and write sessions simultaneously, preventing data corruption or loss.

## Cross-references

- [config](config.md) -- session store configuration relates to persistence behavior
- [networking](networking.md) -- Android foreground service maintains network connectivity
