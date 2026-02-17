# Theme: Cleanup

Cleanup commits in the 01501-02000 range span 63 entries covering biome and swiftformat passes, legacy asset removal, codename elimination (Iris), build artifact gitignore updates, deprecated alias removal, canvas bundle refreshes, lint formatting fixes, package metadata tidying, and merge commits. The cleanup effort maintains code hygiene across the rapid feature development in this range.

## Commits

| # | Subject | Date |
|---|---------|------|
| 01508 | chore(auto-reply): satisfy biome | 2025-12-16 10:41 |
| 01515 | fix(gateway): clamp chat.history to 1000 max | 2025-12-16 19:55 |
| 01520 | chore: drop agent-scripts AGENTS pointer | 2025-12-17 10:08 |
| 01545 | iOS: satisfy SwiftFormat in bridge discovery | 2025-12-17 18:01 |
| 01549 | chore(pi): add TODO for mime workaround | 2025-12-17 15:49 |
| 01551 | chore: ignore lit dist build output | 2025-12-17 19:13 |
| 01554 | chore: rebuild CanvasA2UI bundle | 2025-12-17 19:15 |
| 01579 | style: fix lint | 2025-12-17 21:50 |
| 01584 | style: format bridge hello | 2025-12-17 22:04 |
| 01596 | ChatUI: swiftformat fixes | 2025-12-17 22:43 |
| 01599 | chore: remove legacy bundled web assets | 2025-12-17 23:08 |
| 01600 | style: satisfy biome | 2025-12-17 23:12 |
| 01602 | style: remove stale WebChat exclude | 2025-12-17 23:31 |
| 01611 | style: Remove Instances row duplication | 2025-12-18 00:28 |
| 01627 | refactor: Drop legacy theme fallback | 2025-12-18 01:39 |
| 01649 | refactor: Drop screen.* invoke aliases | 2025-12-18 02:17 |
| 01674 | chore(naming): remove Iris codename | 2025-12-18 13:18 |
| 01676 | chore(naming): remove remaining iris references | 2025-12-18 13:30 |
| 01727 | fix(control-ui): drop /ui alias | 2025-12-19 05:13 |
| 01734 | style(macos): swiftformat sources | 2025-12-19 17:52 |
| 01753 | chore: ignore bun build artifacts | 2025-12-19 19:21 |
| 01774 | style: polish logging and lint hints | 2025-12-20 01:48 |
| 01776 | refactor(mac): remove clawdis-mac browser cli | 2025-12-20 01:06 |
| 01782 | refactor(browser): prune browser automation surface | 2025-12-20 02:53 |
| 01794 | chore: remove dist from repo | 2025-12-20 12:06 |
| 01797 | fix: address skills lint | 2025-12-20 12:29 |
| 01800 | style: tidy macos swift formatting | 2025-12-20 12:56 |
| 01816 | style: biome formatting | 2025-12-20 12:52 |
| 01824 | chore(canvas): refresh a2ui bundle | 2025-12-20 13:06 |
| 01831 | style(auto-reply): format bare /new | 2025-12-20 13:31 |
| 01835 | style: fix lint formatting | 2025-12-20 14:47 |
| 01841 | style: soften hover hud status dot | 2025-12-20 15:20 |
| 01843 | Merge branch 'main' of https://github.com/steipete/clawdis | 2025-12-20 14:22 |
| 01860 | refactor: remove canvasHost port config | 2025-12-20 17:15 |
| 01864 | refactor: trim skill install spec | 2025-12-20 17:39 |
| 01865 | refactor: drop pnpm skill installer | 2025-12-20 17:39 |
| 01869 | style: biome formatting | 2025-12-20 17:50 |
| 01874 | style: format skill installer logic | 2025-12-20 17:51 |
| 01879 | style: satisfy swiftformat in chat composer | 2025-12-20 18:18 |
| 01884 | chore: biome format | 2025-12-20 18:38 |
| 01894 | refactor: centralize gateway parsing | 2025-12-20 19:53 |
| 01902 | chore: fix biome + swiftformat lint | 2025-12-20 19:01 |
| 01903 | chore: fix swiftformat lint | 2025-12-20 19:48 |
| 01906 | chore: fix biome formatting | 2025-12-20 20:33 |
| 01910 | chore: format macos relay | 2025-12-20 20:41 |
| 01919 | chore: add homepage metadata | 2025-12-20 21:12 |
| 01922 | chore: widen settings window | 2025-12-20 21:17 |
| 01924 | chore: fix eightctl homepage | 2025-12-20 21:18 |
| 01928 | Merge remote-tracking branch 'origin/main' | 2025-12-20 21:43 |
| 01931 | chore: swiftformat macos settings | 2025-12-20 21:52 |
| 01947 | chore: bump deps, drop steerable transport | 2025-12-20 22:38 |
| 01954 | chore(macos): tidy discovery and runtime | 2025-12-20 23:30 |
| 01956 | chore(android): update icons and platform config | 2025-12-20 23:30 |
| 01957 | chore(android): update kotlin compiler settings | 2025-12-20 23:35 |
| 01959 | chore(canvas): rebuild a2ui bundle | 2025-12-20 22:45 |
| 01961 | style(chat): use integrated bubble tail | 2025-12-20 23:00 |
| 01966 | style(chatui): fix SwiftFormat warnings | 2025-12-21 00:22 |
| 01967 | style(tests): format gateway server test | 2025-12-21 00:22 |
| 01969 | chore(canvas): rebuild a2ui bundle | 2025-12-21 00:22 |
| 01970 | chore(canvas): refresh a2ui bundle | 2025-12-21 00:24 |
| 01978 | chore: ignore ClawdisKit .swiftpm | 2025-12-21 01:10 |
| 01989 | docs: fix npmjs header image | 2025-12-21 01:51 |
| 02000 | refactor(macos): remove manual identity onboarding | 2025-12-21 01:39 |

## Narrative

### Legacy Removal and Formatting (Commits 01508-01602)

The range opened with biome satisfaction (01508) and dropped the agent-scripts AGENTS pointer (01520). iOS SwiftFormat compliance was enforced (01545). Lit dist build output was gitignored (01551) and the CanvasA2UI bundle rebuilt (01554). Lint and format passes addressed bridge hello (01579, 01584), ChatUI (01596), and biome compliance (01600). Legacy bundled web assets were removed (01599) and stale WebChat excludes dropped (01602).

### Codename and Alias Pruning (Commits 01611-01727)

Instance row duplication was removed (01611). The legacy theme fallback was dropped (01627) and screen.* invoke aliases removed (01649). The Iris codename was systematically eliminated (01674, 01676). The control UI /ui alias was dropped (01727). SwiftFormat passes continued for macOS sources (01734).

### Build Artifacts and Formatting Sprints (Commits 01753-01910)

Bun build artifacts were gitignored (01753). Logging and lint hints were polished (01774). The browser CLI was removed from clawdis-mac (01776) and browser automation surface pruned (01782). Dist was removed from the repo (01794). Multiple biome formatting rounds (01816, 01835, 01869, 01874, 01884, 01906) and swiftformat passes (01800, 01879, 01902, 01903, 01910) maintained consistency. Canvas A2UI bundles were refreshed repeatedly (01824, 01959, 01969, 01970). Skills install spec was trimmed (01864) and pnpm installer dropped (01865). Homepage metadata was added (01919, 01924).

### Final Tidying (Commits 01922-02000)

Settings window was widened (01922). Dependencies were bumped with steerable transport dropped (01947). macOS discovery and runtime were tidied (01954). Android icons and config were updated (01956, 01957). SwiftFormat warnings were fixed (01966, 01967). ClawdisKit .swiftpm was gitignored (01978). NPM header image was fixed (01989). Manual identity onboarding was removed (02000).

## Cross-references

- [refactor](refactor.md) -- cleanup and refactor overlap when removing deprecated patterns
- [build](build.md) -- formatting and lint cleanup accompanies build changes
- [dependency](dependency.md) -- dependency bumps and removals overlap with cleanup
