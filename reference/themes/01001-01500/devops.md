# Theme: DevOps

DevOps commits in the 1001-1500 range cover CI pipeline creation, build system configuration, and deployment automation. The work begins with switching the gateway lock mechanism from flock to WebSocket bind, then moves into establishing CI workflows for iOS and Android platforms, configuring fastlane for iOS beta distribution, managing iOS simulator selection in CI, enforcing coverage gates, and maintaining dependency toolchains.

## Commits

| # | Subject | Date |
|---|---------|------|
| 01080 | chore(gateway): use ws bind as lock | 2025-12-11 15:17 |
| 01083 | test(gateway): cover port lock guard | 2025-12-11 18:53 |
| 01325 | fix(ci): stabilize runners | 2025-12-13 20:04 |
| 01391 | feat(ios): add fastlane setup | 2025-12-14 02:10 |
| 01394 | chore(android): bump AGP to 8.6.1 | 2025-12-14 02:16 |
| 01399 | chore(fastlane): support p8 key path | 2025-12-14 02:19 |
| 01400 | chore(fastlane): support p8 key path | 2025-12-14 02:19 |
| 01406 | chore(deps): bump pnpm dependencies | 2025-12-14 02:21 |
| 01407 | chore(android): update toolchain and deps | 2025-12-14 02:30 |

## Narrative

Commit 01080 switched the gateway locking mechanism from file-based flock to WebSocket listener bind, eliminating stale lock files and enabling faster failure detection when a port is already occupied. Commit 01083 added test coverage for this new port lock guard, verifying that GatewayLockError is thrown when the port is in use and that the port is released after close.

Commit 01325 stabilized CI runners by adding recursive submodule checkout, updating the bun download URL to bypass GitHub API rate limiting, and adding platform guards to avoid non-macOS restart attempts. This was a foundational fix for CI reliability.

The fastlane series began at commit 01391, which added fastlane configuration for iOS beta distribution. Commits 01399 and 01400 refined fastlane to support p8 key path authentication, with adjustments to Android AGP versioning along the way. Commit 01394 bumped the Android Gradle Plugin to 8.6.1 for latest toolchain compatibility.

Commits 01406 and 01407 performed broad dependency updates: 01406 updated all pnpm package dependencies with a regenerated lock file, and 01407 updated Android build toolchain versions including Kotlin, AGP, and supporting libraries.

## Cross-references

- [ci](ci.md) -- CI-specific workflow commits are closely related
- [build](build.md) -- build configuration overlaps with devops toolchain management
