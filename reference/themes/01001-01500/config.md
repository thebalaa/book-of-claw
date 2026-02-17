# Theme: Config

Configuration commits in the 1001-1500 range address gateway settings, session defaults, scheduling options, browser control ports, and protocol artifact synchronization. Work spans adding webchat port overrides, security-oriented default allowlists, cron scheduler enablement, canvas toggles, iOS icon configuration, and generated protocol schema syncing.

## Commits

| # | Subject | Date |
|---|---------|------|
| 01056 | mac: add attach-only gateway toggle | 2025-12-10 11:31 |
| 01075 | fix(session): ignore agent meta session id | 2025-12-10 16:38 |
| 01077 | feat(gateway): allow webchat port override | 2025-12-10 16:55 |
| 01084 | web: default to self-only without config | 2025-12-12 00:50 |
| 01188 | feat(macos): add Allow Canvas toggle to settings | 2025-12-13 01:17 |
| 01218 | feat(cron): default scheduler enabled | 2025-12-13 03:49 |
| 01241 | refactor(cron): simplify main-summary prefix config | 2025-12-13 17:03 |
| 01271 | fix(browser): default control url uses 18791 | 2025-12-13 15:29 |
| 01377 | fix(ios): ensure app icon asset catalog | 2025-12-14 01:50 |
| 01389 | fix(ios): set CFBundleIconName | 2025-12-14 02:05 |
| 01399 | chore(fastlane): support p8 key path | 2025-12-14 02:19 |
| 01400 | chore(fastlane): support p8 key path | 2025-12-14 02:19 |
| 01468 | chore(protocol): sync generated artifacts | 2025-12-14 04:41 |
| 01486 | chore: gitignore .worktrees | 2025-12-14 05:20 |

## Narrative

Commit 01056 added a debug toggle allowing the macOS app to attach to an existing gateway without spawning a local one, useful for isolated testing. Commit 01075 temporarily disabled agent meta session ID updates via an allowMetaSessionId flag to work around instability in pi-mono's session ID persistence.

Commit 01077 introduced a --webchat-port option to override the loopback WebChat HTTP server port, with validation logic. Commit 01084 implemented default self-only allowlist behavior when no allowFrom config is present, restricting replies to same-phone DMs for security.

Commit 01188 added a settings toggle to enable or disable Canvas functionality. Commit 01218 changed the cron scheduler to be enabled by default, and commit 01241 simplified the cron summary prefix configuration. Commit 01271 standardized the default browser control URL port to 18791.

iOS configuration work included commits 01377 and 01389 which ensured proper app icon asset catalog inclusion and CFBundleIconName resolution. Commit 01468 synchronized generated protocol artifacts including Swift models and JSON schema to keep macOS protocol definitions aligned with the canonical gateway schema.

## Cross-references

- [security](security.md) -- self-only default allowlist is a security-oriented configuration
- [build](build.md) -- iOS asset catalog and protocol sync relate to build configuration
