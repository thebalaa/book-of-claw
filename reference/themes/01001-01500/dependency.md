# Theme: Dependency

Dependency management in commits 1001-1500 covered routine package bumps for the Pi agent libraries, the addition of Playwright for browser automation, multiple Peekaboo submodule updates, and platform toolchain upgrades for Android and pnpm. The pattern shows a project steadily integrating new capabilities (browser control, UI automation) while keeping core agent dependencies current.

## Commits

| # | Subject | Date |
|---|---------|------|
| 01001 | chore: bump pi deps for tau rpc | 2025-12-09 21:52 |
| 01033 | chore: update dependencies | 2025-12-10 00:48 |
| 01091 | mac: add gog CLI, remove Gmail/Calendar MCPs | 2025-12-12 15:48 |
| 01254 | fix(macos): install gateway via npm | 2025-12-13 13:00 |
| 01264 | chore(webchat): refresh bundled webchat | 2025-12-13 14:19 |
| 01283 | chore(webchat): refresh webchat bundle | 2025-12-13 16:48 |
| 01284 | chore(submodule): add Peekaboo | 2025-12-13 16:55 |
| 01301 | chore(deps): update JS deps | 2025-12-13 17:52 |
| 01317 | chore(deps): add playwright-core | 2025-12-13 18:48 |
| 01394 | chore(android): bump AGP to 8.6.1 | 2025-12-14 02:16 |
| 01406 | chore(deps): bump pnpm dependencies | 2025-12-14 02:21 |

## Narrative

### Pi Agent Library Updates (1001, 1033, 1301)

Commit 01001 updated @mariozechner/pi-ai and @mariozechner/pi-coding-agent from 0.16.0 to 0.17.0, also modifying tau-rpc.ts to handle response failures and accept raw string prompts. Commit 01033 bumped the same packages to 0.18.0. Commit 01301 brought them to 0.20.2 alongside updates to @types/node (25.0.1), lucide (0.561.0), and rolldown (1.0.0-beta.54).

### Tool Consolidation (1091)

Commit 01091 replaced individual Gmail and Google Calendar MCP entries with the unified gog CLI (via steipete/tap/gog), simplifying tool management and consolidating Google service access into a single dependency.

### Gateway Installation (1254)

Commit 01254 added logic to detect and use npm as the primary package manager for installing the gateway, with fallbacks to pnpm and bun, broadening installation compatibility.

### WebChat Bundle Refreshes (1264, 1283)

Commits 01264 and 01283 updated the bundled WebChat assets to incorporate recent UI fixes and features.

### Peekaboo Submodule (1284)

Commit 01284 added Peekaboo as a Git submodule, enabling screenshot and UI automation capabilities in the macOS app for AI vision analysis.

### Browser Automation (1317)

Commit 01317 added playwright-core 1.57.0 as a dependency, enabling browser automation capabilities for the browser control feature set introduced around the same time.

### Platform Toolchain Updates (1394, 1406)

Commit 01394 bumped the Android Gradle Plugin from 8.5.2 to 8.6.1. Commit 01406 updated all pnpm package dependencies and regenerated the lock file.

## Cross-references

- [error-handling](error-handling.md) -- error handling improvements in pi deps update
- [process-lifecycle](process-lifecycle.md) -- gateway locking changes coinciding with dep updates
