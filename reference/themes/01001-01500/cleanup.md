# Theme: Cleanup

Cleanup commits in the 1001-1500 range cover code formatting passes (swiftformat, biome), removal of dead code and legacy paths, tab and settings reorganization, webchat bundle refreshes, merge commits for branch synchronization, gitignore maintenance, and minor style adjustments across macOS, iOS, and gateway code. The theme reflects a codebase undergoing rapid feature development that periodically pauses to tidy formatting, consolidate naming, and remove obsolete artifacts.

## Commits

| # | Subject | Date |
|---|---------|------|
| 01020 | style(webchat): pad error view | 2025-12-10 00:02 |
| 01021 | mac: centralize log path lookup | 2025-12-10 00:03 |
| 01022 | style(webchat): add body padding class on error | 2025-12-10 00:04 |
| 01023 | mac: guard ports and sweep stale tunnels | 2025-12-10 01:04 |
| 01024 | mac: drop legacy log path | 2025-12-10 00:04 |
| 01038 | test: drop obsolete reply session placeholder | 2025-12-10 01:00 |
| 01039 | mac: tidy menu and gateway support | 2025-12-10 01:00 |
| 01041 | webchat: add centered boot loader | 2025-12-10 01:04 |
| 01044 | mac: remove divider above active toggle | 2025-12-10 02:44 |
| 01045 | mac: inline gateway status row | 2025-12-10 02:46 |
| 01046 | mac: move debug toggles to footer | 2025-12-10 02:48 |
| 01047 | chore(mac): align remote ssh controls | 2025-12-10 02:48 |
| 01072 | chore: drop rpc->json fallback | 2025-12-10 15:58 |
| 01074 | health: stop direct baileys probes | 2025-12-10 16:35 |
| 01079 | lint: format and stabilize gateway health | 2025-12-10 18:00 |
| 01082 | style(pi): wrap mode arg lookup | 2025-12-11 18:53 |
| 01092 | mac: remove voice wake forward pref | 2025-12-12 16:09 |
| 01103 | style(tests): format imports | 2025-12-12 16:47 |
| 01118 | style(test): biome format | 2025-12-12 18:07 |
| 01181 | chore(macos): move Permissions tab after Tools | 2025-12-13 00:47 |
| 01190 | refactor(swift): rename ClawdisNodeKit to ClawdisKit | 2025-12-13 01:33 |
| 01194 | ui(ios): clean up connected bridge list | 2025-12-13 02:02 |
| 01197 | ui(ios): glassy settings button | 2025-12-13 02:19 |
| 01207 | docs(mac): drop screenshot alias plan | 2025-12-13 02:51 |
| 01227 | chore: share bonjour escapes - refresh webchat bundle | 2025-12-13 11:12 |
| 01250 | refactor(cron): drop auto-migration | 2025-12-13 20:15 |
| 01257 | chore(ios): rename app to Clawdis | 2025-12-13 13:11 |
| 01264 | chore(webchat): refresh bundled webchat | 2025-12-13 14:19 |
| 01283 | chore(webchat): refresh webchat bundle | 2025-12-13 16:48 |
| 01289 | chore(peekaboo): bump submodule | 2025-12-13 17:11 |
| 01297 | refactor(mac): reorganize debug settings | 2025-12-13 17:35 |
| 01321 | style(macos): tidy settings and CLI | 2025-12-13 19:23 |
| 01324 | chore(swift): run swiftformat and clear swiftlint | 2025-12-13 19:53 |
| 01328 | chore: bump Peekaboo submodule | 2025-12-13 20:46 |
| 01333 | style(macos): mark Reject destructive | 2025-12-13 23:29 |
| 01351 | chore(ci): sync protocol + swiftformat | 2025-12-14 00:36 |
| 01353 | Merge remote-tracking branch 'origin/main' | 2025-12-14 00:43 |
| 01366 | Merge origin/main | 2025-12-14 00:52 |
| 01367 | Merge remote-tracking branch 'origin/main' | 2025-12-14 00:52 |
| 01369 | Merge remote-tracking branch 'origin/main' | 2025-12-14 00:55 |
| 01374 | chore(macos): swiftformat | 2025-12-14 01:11 |
| 01397 | Merge remote-tracking branch 'origin/main' | 2025-12-14 02:18 |
| 01401 | chore(mac): bump Peekaboo submodule | 2025-12-14 02:31 |
| 01405 | Merge remote-tracking branch 'origin/main' | 2025-12-14 02:37 |
| 01423 | chore(ios): gitignore provisioning profiles | 2025-12-14 03:16 |
| 01436 | style(swift): fix lint and formatting warnings | 2025-12-14 03:48 |
| 01442 | ui(macos): remove duplicate canvas toggle | 2025-12-14 04:00 |
| 01443 | style: satisfy formatters | 2025-12-14 04:02 |
| 01446 | chore(macos): silence onboarding type length lint | 2025-12-14 03:56 |
| 01454 | chore(tools): add emoji tool names | 2025-12-14 03:32 |
| 01455 | chore(tools): match repo emojis | 2025-12-14 03:34 |
| 01469 | style(macos): swiftformat | 2025-12-14 04:41 |
| 01470 | style(ios): swiftformat | 2025-12-14 04:47 |
| 01478 | style(macos): swiftformat | 2025-12-14 05:09 |
| 01480 | fix(macos): satisfy swiftformat | 2025-12-14 05:15 |
| 01483 | style(ios): swiftformat | 2025-12-14 05:17 |
| 01486 | chore: gitignore .worktrees | 2025-12-14 05:20 |
| 01489 | refactor(macos): tidy gateway discovery naming | 2025-12-14 05:28 |

## Narrative

The cleanup theme in the 1001-1500 range begins with webchat styling improvements in commits 01020 and 01022, which added padding to error views. Commit 01021 centralized log path lookup, and 01024 dropped the legacy log path entirely. Menu tidying appeared in commits 01039, 01044-01047, which cleaned up menu structure, removed dividers, inlined status rows, moved debug toggles, and aligned SSH controls.

Dead code removal occurred in commit 01038 (obsolete reply session placeholder), 01072 (rpc-to-json fallback), 01074 (direct Baileys probes from health checks), and 01092 (voice wake forward preference). Commit 01082 reformatted pi agent code, and 01079 applied formatting to gateway health modules.

Test file formatting appeared in commits 01103 (import ordering) and 01118 (biome format). Commit 01181 reordered settings tabs. The ClawdisNodeKit-to-ClawdisKit rename in 01190 cleaned up the shared framework naming. Commit 01207 removed a planned screenshot alias from documentation, and 01250 dropped auto-migration logic from the cron system.

Webchat bundle refreshes occurred in commits 01227, 01264, and 01283, keeping the bundled assets current. The iOS app was renamed from ClawdisKit to Clawdis in commit 01257. Peekaboo submodule bumps appeared in 01289, 01328, and 01401.

Settings reorganization continued with commit 01297 (reorganized debug settings) and 01321 (tidied settings and CLI). SwiftFormat and SwiftLint passes became frequent in the later commits: 01324, 01351, 01374, 01436, 01443, 01469, 01470, 01478, 01480, and 01483 all applied formatting standardization across macOS and iOS codebases.

Branch synchronization merges appeared throughout: 01353, 01366, 01367, 01369, 01397, and 01405 integrated upstream changes. Gitignore maintenance occurred in 01423 (provisioning profiles) and 01486 (.worktrees). Commit 01442 removed a duplicate canvas toggle, 01446 silenced a lint warning, and 01489 tidied gateway discovery naming. Tool display was polished in 01454-01455 by adding and synchronizing emoji tool names.

## Cross-references

- [ui](ui.md) -- many cleanup commits touch UI files for formatting and layout adjustments
- [api](api.md) -- cleanup of deprecated API patterns (rpc-to-json fallback, direct Baileys probes)
- [documentation](../00501-01000/documentation.md) -- documentation cleanup overlaps with removal of obsolete plans
