# Theme: CI

CI commits in the 1001-1500 range establish and refine continuous integration pipelines for iOS and Android platforms, add coverage enforcement gates, fix workflow YAML formatting, and improve simulator management in CI environments.

## Commits

| # | Subject | Date |
|---|---------|------|
| 01409 | ci: run iOS xcodebuild tests | 2025-12-14 02:32 |
| 01419 | ci: emit swift + iOS coverage | 2025-12-14 03:04 |
| 01426 | ci: enforce 40% iOS coverage | 2025-12-14 03:25 |
| 01427 | ci: add Android build job | 2025-12-14 03:31 |
| 01431 | ci: raise iOS coverage gate to 50% | 2025-12-14 03:37 |
| 01432 | ci: pick iOS simulator via simctl json | 2025-12-14 03:39 |
| 01434 | ci: fix python heredoc indentation | 2025-12-14 03:45 |
| 01437 | ci: fix yaml indentation for python blocks | 2025-12-14 03:51 |
| 01447 | ci: create iOS simulator when missing | 2025-12-14 04:09 |
| 01448 | ci: fix iOS simulator selection indentation | 2025-12-14 04:13 |

## Narrative

The CI infrastructure build-out began at commit 01409, which configured a GitHub Actions workflow to run iOS unit tests using xcodebuild with test target selection, coverage reporting, and result upload. Commit 01419 extended this to emit Swift compilation details and collect iOS test coverage metrics.

Coverage enforcement was introduced at commit 01426 with a minimum 40% threshold for iOS tests, causing builds to fail if coverage dropped below that level. This was quickly raised to 50% at commit 01431 as the test suite expanded. Commit 01427 added a separate GitHub Actions workflow for Android application builds.

Simulator management proved challenging: commit 01432 improved iOS simulator selection by parsing simctl JSON output instead of fragile string matching, commit 01447 added logic to automatically create a simulator if none exists, and commit 01448 fixed YAML indentation in the simulator selection script. Commits 01434 and 01437 fixed Python script block indentation within CI workflow YAML files.

## Cross-references

- [devops](devops.md) -- CI is a subset of broader devops work
- [build](build.md) -- CI workflows depend on build configuration
