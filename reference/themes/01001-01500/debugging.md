# Theme: Debugging

Debugging commits in the 1001-1500 range add diagnostic tools and interfaces for gateway port management, webchat inspection, rolling diagnostics, and network discovery troubleshooting. These features help developers and users identify and resolve operational issues.

## Commits

| # | Subject | Date |
|---|---------|------|
| 01014 | mac: open latest log file | 2025-12-09 23:45 |
| 01016 | mac: add port diagnostics for gateway | 2025-12-10 00:49 |
| 01028 | mac: add browser webchat debug entry | 2025-12-10 01:33 |
| 01144 | feat(mac): add rolling diagnostics log | 2025-12-12 20:46 |
| 01463 | feat(ios): add discovery debug logs | 2025-12-14 04:34 |

## Narrative

Commit 01014 added a menu action to open the most recently created log file from the macOS application logs directory, providing quick access to diagnostic output. Commit 01016 introduced the PortGuardian actor to track and manage gateway processes by port, recording process IDs, commands, and connection modes to diagnose port conflicts and stale processes.

Commit 01028 added a debug menu entry to open the webchat interface in the default browser, enabling easier testing and debugging of the webchat UI outside the native panel.

Commit 01144 implemented a rolling diagnostic logging system in the macOS app, providing persistent structured logs for ongoing troubleshooting. Near the end of the range, commit 01463 added a dedicated discovery debug log view to the iOS settings, allowing users to visualize the Bonjour gateway discovery process and diagnose connectivity issues.

## Cross-references

- [logging](logging.md) -- debugging tools often rely on logging infrastructure
- [networking](networking.md) -- discovery debug logs directly support network troubleshooting
