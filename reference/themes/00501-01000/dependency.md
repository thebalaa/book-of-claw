# Theme: Dependency

Dependency commits in the 501-1000 range cover the addition of major new libraries (Sparkle for macOS auto-updates, grammY for Telegram bot support), bundling of web chat UI dependencies for offline use, routine dependency version bumps, webchat bundle rebuilds, and the removal of Bun runtime support in favor of Node-only. These commits reflect the project expanding its platform reach while periodically maintaining its dependency tree.

## Commits

| # | Subject | Date |
|---|---------|------|
| 00505 | feat(mac): add child relay process manager | 2025-12-06 22:05 |
| 00525 | fix(mac): bundle web chat UI deps | 2025-12-07 00:05 |
| 00689 | Add Bun bundle docs and Telegram grammY support | 2025-12-07 22:46 |
| 00691 | chore: update dependencies | 2025-12-07 22:53 |
| 00708 | feat(macos): add Sparkle updates and release docs | 2025-12-08 00:18 |
| 00823 | Build: update webchat bundle | 2025-12-08 23:20 |
| 00841 | chore: guard host runtime and simplify packaging | 2025-12-09 00:59 |
| 00852 | chore: harden rpc assistant streaming types | 2025-12-09 01:31 |
| 00899 | Runtime: drop bun support | 2025-12-09 04:13 |
| 00900 | Update auto-reply and voice wake runtime | 2025-12-09 04:15 |
| 00928 | chore: update dependencies | 2025-12-09 17:43 |

## Narrative

The dependency theme begins at commit 00505, which added the Swift Subprocess package to support the child relay process manager in the macOS app. Commit 00525 bundled web chat UI dependencies (including a pi-ai stub and vendored packages) into the app resources to eliminate network fetches and enable offline usage.

The Telegram provider brought new dependencies in commit 00689, adding grammY and @grammyjs/transformer-throttler to package.json for Bot API integration. Commit 00691 followed with a routine update of all project dependencies to latest compatible versions.

Commit 00708 integrated the Sparkle framework (version 2.8.1) for automatic macOS app updates, adding appcast.xml feed configuration and the Sparkle Swift package dependency.

Later commits maintained the dependency tree through bundle updates and cleanups. Commit 00823 rebuilt the webchat bundle with accumulated changes. Commit 00841 added runtime guards to prevent bundling host-specific dependencies incorrectly. Commit 00852 updated bundled web chat dependencies with stricter pnpm lockfile paths for RPC streaming types.

A significant simplification arrived at commit 00899, which removed Bun runtime support entirely, requiring Node 22.0.0 or later. This deleted the RuntimeKind.bun case, minimum version checks, and binary search logic, simplifying the RuntimeLocator to resolve only Node. Commit 00900 updated auto-reply and voice wake runtime package versions for compatibility. Commit 00928 performed another routine dependency update near the end of the range.

## Cross-references

- [documentation](documentation.md) -- new dependencies like Sparkle and grammY are documented on arrival
- [optimization](optimization.md) -- bundling and runtime simplification relate to performance
