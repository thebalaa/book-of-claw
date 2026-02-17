# Theme: Build

Build commits in the 1001-1500 range cover macOS notification entitlements, iOS fastlane configuration, Android toolchain updates, iOS provisioning profile management, and protocol artifact generation.

## Commits

| # | Subject | Date |
|---|---------|------|
| 01123 | build(mac): enable time-sensitive notifications | 2025-12-12 18:40 |
| 01403 | fix(ios): make fastlane beta lane work | 2025-12-14 02:35 |
| 01404 | fix(ios): make fastlane beta lane work | 2025-12-14 02:35 |
| 01407 | chore(android): update toolchain and deps | 2025-12-14 02:30 |
| 01423 | chore(ios): gitignore provisioning profiles | 2025-12-14 03:16 |
| 01427 | ci: add Android build job | 2025-12-14 03:31 |
| 01432 | ci: pick iOS simulator via simctl json | 2025-12-14 03:39 |
| 01446 | chore(macos): silence onboarding type length lint | 2025-12-14 03:56 |
| 01447 | ci: create iOS simulator when missing | 2025-12-14 04:09 |
| 01468 | chore(protocol): sync generated artifacts | 2025-12-14 04:41 |

## Narrative

Commit 01123 enabled time-sensitive notification entitlements in the macOS app build configuration, allowing notifications to break through Focus modes. This was later refined when the entitlement proved too restrictive.

The fastlane build pipeline for iOS beta distribution was established across commits 01403 and 01404, which configured the Fastfile with correct certificate matching, provisioning profile handling, and Matchfile for fastlane match. Commit 01423 added provisioning profile patterns to .gitignore to protect sensitive credential files.

Commit 01407 updated the Android build toolchain including Kotlin, AGP, and supporting library versions. Commits 01427, 01432, and 01447 built out the CI infrastructure for Android builds and iOS simulator management.

Commit 01446 added lint suppression for onboarding type length warnings, and commit 01468 synchronized generated protocol artifacts to keep Swift models and JSON schema aligned.

## Cross-references

- [ci](ci.md) -- CI workflows are closely tied to build configuration
- [devops](devops.md) -- build toolchain management is part of broader devops
