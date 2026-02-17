# Theme: Build

Build commits in the 01501-02000 range span 44 entries covering wireit task runner addition, CI fixes for SwiftFormat and bun, Canvas A2UI bundle refreshes, appcast updates for beta releases, bun-compiled embedded gateway with bytecode compilation, DMG and ZIP packaging, TypeScript type restoration, biome and swiftformat formatting passes, Playwright bundling, relay binary bundling, iOS workflow splitting, and Mac packaging warning suppression.

## Commits

| # | Subject | Date |
|---|---------|------|
| 01527 | chore: bump Peekaboo submodule | 2025-12-17 11:37 |
| 01530 | Build: add wireit | 2025-12-17 13:20 |
| 01652 | ci: fix swiftformat and bun CI | 2025-12-18 08:55 |
| 01672 | ci: fix swiftformat | 2025-12-18 12:50 |
| 01675 | ci: retry submodule checkout | 2025-12-18 13:26 |
| 01677 | ci: retry swiftpm build/test | 2025-12-18 13:37 |
| 01681 | style: biome format gateway server | 2025-12-18 14:00 |
| 01685 | style: biome format ws logging | 2025-12-18 14:31 |
| 01689 | Web: fix lint/format for error formatter | 2025-12-18 18:22 |
| 01705 | CanvasA2UI: refresh bundled renderer | 2025-12-18 23:08 |
| 01732 | build(canvas): refresh a2ui bundle | 2025-12-19 12:40 |
| 01742 | chore: update appcast for 2.0.0-beta1 | 2025-12-19 18:24 |
| 01749 | feat(gateway): support bun-compiled embedded gateway | 2025-12-19 19:20 |
| 01750 | build(macos): bundle bun gateway | 2025-12-19 19:20 |
| 01753 | chore: ignore bun build artifacts | 2025-12-19 19:21 |
| 01755 | fix: restore mac app build | 2025-12-19 22:08 |
| 01757 | perf(macos): compile embedded gateway with bytecode | 2025-12-19 22:11 |
| 01758 | docs(mac): add bun gateway packaging notes | 2025-12-19 22:13 |
| 01759 | style(macos): add dmg background | 2025-12-19 22:22 |
| 01760 | build(macos): add dmg+zip packaging | 2025-12-19 22:22 |
| 01761 | docs(mac): document dmg packaging | 2025-12-19 22:22 |
| 01779 | fix(browser): restore tsc types | 2025-12-20 01:27 |
| 01794 | chore: remove dist from repo | 2025-12-20 12:06 |
| 01801 | build: refresh a2ui bundle | 2025-12-20 12:57 |
| 01824 | chore(canvas): refresh a2ui bundle | 2025-12-20 13:06 |
| 01836 | fix: stabilize a2ui bundle output | 2025-12-20 14:50 |
| 01869 | style: biome formatting | 2025-12-20 17:50 |
| 01874 | style: format skill installer logic | 2025-12-20 17:51 |
| 01879 | style: satisfy swiftformat in chat composer | 2025-12-20 18:18 |
| 01884 | chore: biome format | 2025-12-20 18:38 |
| 01896 | chore(deps): add chromium-bidi and long | 2025-12-20 19:16 |
| 01897 | fix(macos): patch bun Long for protobuf | 2025-12-20 19:16 |
| 01899 | build(macos): bundle playwright in embedded gateway | 2025-12-20 19:16 |
| 01908 | refactor: bundle single relay binary | 2025-12-20 19:35 |
| 01909 | docs: update bundled bun notes | 2025-12-20 19:35 |
| 01911 | perf: shrink rw image before lzma convert | 2025-12-20 19:44 |
| 01957 | chore(android): update kotlin compiler settings | 2025-12-20 23:35 |
| 01959 | chore(canvas): rebuild a2ui bundle | 2025-12-20 22:45 |
| 01965 | chore(ios): link AppIntents framework | 2025-12-21 00:22 |
| 01969 | chore(canvas): rebuild a2ui bundle | 2025-12-21 00:22 |
| 01970 | chore(canvas): refresh a2ui bundle | 2025-12-21 00:24 |
| 01985 | build: update iOS lint scripts | 2025-12-21 01:47 |
| 01988 | ci: split ios workflow | 2025-12-21 00:49 |
| 01992 | build: silence mac packaging warnings | 2025-12-21 02:06 |

## Narrative

### Task Runner and CI (Commits 01527-01689)

The range opened with a Peekaboo submodule bump (01527) and wireit task runner addition (01530). CI fixes addressed SwiftFormat and bun pipelines (01652, 01672), submodule checkout retries (01675), and SwiftPM build/test retries (01677). Biome formatting passes covered the gateway server (01681), WebSocket logging (01685), and error formatter (01689). Canvas A2UI bundles were refreshed (01705, 01732).

### Embedded Gateway and Packaging (Commits 01742-01765)

Appcast was updated for 2.0.0-beta1 (01742). The bun-compiled embedded gateway (01749) with macOS bundling (01750) and bytecode compilation (01757) was a significant build milestone. Bun build artifacts were gitignored (01753). DMG and ZIP packaging were added (01760) with background styling (01759, 01761). TypeScript types were restored for browser (01779).

### Bundles, Playwright, and Final CI (Commits 01794-01992)

Dist was removed from the repo (01794) and A2UI bundles refreshed repeatedly (01801, 01824, 01836, 01959, 01969, 01970). Formatting passes continued (01869, 01874, 01879, 01884). Chromium-bidi and Long dependencies were added (01896) and Playwright was bundled into the embedded gateway (01899). The relay binary was bundled (01908). DMG image size was optimized (01911). Android Kotlin compiler settings were updated (01957). iOS AppIntents framework was linked (01965). iOS workflow was split (01988) and iOS lint scripts updated (01985). Mac packaging warnings were silenced (01992).

## Cross-references

- [devops](devops.md) -- CI and build pipeline changes overlap
- [dependency](dependency.md) -- dependency additions support build changes
- [cleanup](cleanup.md) -- formatting passes accompany build work
