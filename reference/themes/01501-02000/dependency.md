# Theme: Dependency

Dependency commits in the 01501-02000 range span 17 entries covering embedded Pi runtime, Peekaboo submodule bumps, Canvas A2UI bundle refreshes, playwright-core addition, pnpm installer removal in favor of uv, file-type package for MIME sniffing, chromium-bidi and Long additions for Playwright bundling, bun Long patching for protobuf, dependency bumps with steerable transport removal, and lockfile updates.

## Commits

| # | Subject | Date |
|---|---------|------|
| 01522 | feat: embed pi agent runtime | 2025-12-17 11:29 |
| 01527 | chore: bump Peekaboo submodule | 2025-12-17 11:37 |
| 01547 | chore(peekaboo): bump submodule | 2025-12-17 15:28 |
| 01653 | submodules: bump Peekaboo | 2025-12-18 09:06 |
| 01705 | CanvasA2UI: refresh bundled renderer | 2025-12-18 23:08 |
| 01732 | build(canvas): refresh a2ui bundle | 2025-12-19 12:40 |
| 01743 | fix(deps): include playwright-core in dependencies | 2025-12-19 18:38 |
| 01865 | refactor: drop pnpm skill installer | 2025-12-20 17:39 |
| 01867 | feat: add uv skill installers | 2025-12-20 17:50 |
| 01887 | fix: use file-type for mime sniffing | 2025-12-20 19:13 |
| 01896 | chore(deps): add chromium-bidi and long | 2025-12-20 19:16 |
| 01897 | fix(macos): patch bun Long for protobuf | 2025-12-20 19:16 |
| 01899 | build(macos): bundle playwright in embedded gateway | 2025-12-20 19:16 |
| 01900 | fix(browser): allow control server without playwright | 2025-12-20 19:16 |
| 01947 | chore: bump deps, drop steerable transport | 2025-12-20 22:38 |
| 01958 | chore(deps): update dependencies | 2025-12-20 22:44 |
| 01962 | chore(deps): update lockfile | 2025-12-20 23:00 |

## Narrative

### Submodules and Bundles (Commits 01522-01732)

The embedded Pi agent runtime was added (01522). Peekaboo submodule saw multiple bumps (01527, 01547, 01653). Canvas A2UI bundle was refreshed (01705, 01732).

### Playwright and Skills (Commits 01743-01900)

Playwright-core was included in dependencies (01743). The pnpm skill installer was dropped (01865) in favor of uv installers (01867). File-type replaced custom MIME sniffing (01887). Chromium-bidi and Long were added for Playwright (01896), with bun Long patching for protobuf (01897). Playwright was bundled into the embedded gateway (01899), requiring browser control to work without Playwright for non-bundled setups (01900).

### Maintenance (Commits 01947-01962)

Dependencies were bumped with steerable transport dropped (01947). Dependency updates (01958) and lockfile refresh (01962) closed the range.

## Cross-references

- [build](build.md) -- dependency changes drive build configuration updates
- [core-feature](core-feature.md) -- new dependencies support new capabilities
- [cleanup](cleanup.md) -- removing deprecated dependencies overlaps with cleanup
