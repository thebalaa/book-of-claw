# Theme: macOS

The macOS theme is new in the 01501-02000 range, spanning 14 commits that focus on platform-specific features: hover HUD for activity monitoring, OAuth auto-fill from clipboard, screen recording and camera defaults, node mode with permission UX, SSH tunnels for remote control, dashboard menu links, node pairing polling, fractional timeout support, summarize tool, SwiftFormat compliance, Dock icon visibility, and bun gateway bundling.

## Commits

| # | Subject | Date |
|---|---------|------|
| 01703 | feat(macos): hover HUD for activity | 2025-12-19 00:03 |
| 01706 | macOS: auto-fill Anthropic OAuth from clipboard | 2025-12-18 23:15 |
| 01707 | feat(macos): delay hover HUD | 2025-12-19 00:25 |
| 01708 | macOS: add screen record + safer camera defaults | 2025-12-19 00:29 |
| 01715 | feat(nodes): add mac node mode + permission UX | 2025-12-19 01:48 |
| 01716 | feat: add mac node screen recording and ssh tunnel | 2025-12-19 02:33 |
| 01719 | feat: route mac control via nodes | 2025-12-19 03:16 |
| 01725 | feat(macos): add menu link to dashboard | 2025-12-19 04:28 |
| 01729 | fix(macos): reduce node pairing polling | 2025-12-19 13:58 |
| 01731 | fix(macos): allow fractional timeout | 2025-12-19 12:40 |
| 01733 | Mac: add summarize tool | 2025-12-19 17:46 |
| 01734 | style(macos): swiftformat sources | 2025-12-19 17:52 |
| 01748 | fix: show Dock icon during onboarding | 2025-12-19 19:19 |
| 01750 | build(macos): bundle bun gateway | 2025-12-19 19:20 |

## Narrative

### Activity Monitoring and Node Control (Commits 01703-01719)

The hover HUD for activity monitoring was introduced (01703) with delayed appearance (01707). OAuth auto-fill from clipboard (01706) streamlined authentication. Screen recording with safer camera defaults (01708) and node mode with permission UX (01715) expanded what Mac nodes could do. SSH tunnels for screen recording (01716) and control routing via nodes (01719) enabled remote Mac control.

### Polish and Packaging (Commits 01725-01750)

Dashboard menu links were added (01725). Node pairing polling was reduced (01729) and fractional timeouts supported (01731). The summarize tool was added to the Mac app (01733). SwiftFormat compliance was enforced (01734). Dock icon visibility during onboarding was fixed (01748). The bun gateway was bundled into the Mac app (01750).

## Cross-references

- [core-feature](core-feature.md) -- macOS-specific features implement core capabilities
- [ui](ui.md) -- hover HUD and onboarding UI overlap with the UI theme
- [build](build.md) -- bun gateway bundling is a build concern
- [performance](performance.md) -- polling reduction improves performance
