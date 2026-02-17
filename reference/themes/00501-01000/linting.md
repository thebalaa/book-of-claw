# Theme: Linting

Linting and formatting commits in the 501-1000 range reflect the growing macOS Swift codebase and the parallel TypeScript server code. The theme begins with SwiftLint configuration after the AppMain split, progresses through periodic SwiftFormat passes as the codebase grows, and includes TypeScript formatting cleanups in the webchat server and protocol layers. Several commits combine linting fixes with functional changes, particularly around voice wake overlay polish and gateway protocol development.

## Commits

| # | Subject | Date |
|---|---------|------|
| 00527 | chore: fix swiftlint after split | 2025-12-07 00:14 |
| 00607 | chore: fix test import and lint | 2025-12-07 05:38 |
| 00653 | chore: format macOS sources | 2025-12-07 16:35 |
| 00716 | chore(ci): fix lint and swiftformat failures | 2025-12-08 01:48 |
| 00754 | chore: fix lint warnings and formatting | 2025-12-08 17:05 |
| 00760 | chore: tighten webchat types and formatting | 2025-12-08 17:09 |
| 00768 | fix: polish voice overlay and webchat lint | 2025-12-08 17:32 |
| 00789 | ux: keep window in edit, add escape to cancel; fix lint drift | 2025-12-08 20:22 |
| 00892 | chore(mac): apply swiftformat and lint fixes | 2025-12-09 04:42 |
| 00895 | chore(instances): harden presence refresh and fix lint | 2025-12-09 04:51 |
| 00909 | Protocol: lint fixes for client/program | 2025-12-09 15:18 |
| 00914 | chore(swabble): apply swiftformat | 2025-12-09 15:36 |
| 00934 | chore: format swift/ts and fix gateway lint | 2025-12-09 17:11 |

## Narrative

The linting theme starts at commit 00527, which updated the SwiftLint configuration after the monolithic AppMain.swift was split into focused modules in the preceding commit. This established the pattern of linting fixes following structural refactors.

Commit 00607 fixed test import statements and lint issues in the newly created CommandResolverTests. Commit 00653 ran the Swift formatter across all macOS source files, standardizing self references, switch statements, sorted imports, and line breaks. This was the first broad formatting pass on the Swift codebase.

Commit 00716 addressed CI failures from SwiftLint and SwiftFormat after several rapid feature commits. Commit 00754 applied formatting across both Swift and TypeScript files, strengthening type annotations in the webchat server while standardizing import ordering.

Commits 00760 and 00768 focused on TypeScript linting in the webchat server, tightening types and cleaning up formatting inconsistencies that had accumulated during rapid webchat development. Commit 00789 fixed lint drift that had built up during the voice wake overlay iteration cycle.

The largest formatting passes came later in the range. Commit 00892 applied SwiftFormat and SwiftLint fixes across the entire macOS codebase after the voice wake and control channel features stabilized. Commit 00895 combined lint fixes with error handling improvements in the instances store. Commit 00909 cleaned up the generated protocol Swift code. Commit 00914 ran SwiftFormat across all macOS sources and protocol files after the gateway protocol type generation work. Commit 00934 applied formatting to both Swift and TypeScript files alongside gateway lint fixes, closing out the linting work for this commit range.

## Cross-references

- [documentation](documentation.md) -- documentation updates sometimes accompany lint passes
- [optimization](optimization.md) -- type-safety improvements overlap with linting work
