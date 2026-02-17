# Theme: UX

UX in commits 1001-1500 covered onboarding flow refinements (1251-1256, 1433, 1435, 1438-1439, 1449), macOS menu and settings polish (1262, 1265, 1273, 1280-1282, 1286-1287, 1292-1295), iOS bridge and discovery improvements (1303, 1334-1336, 1338, 1342), cross-platform voice overlay and window placement fixes (1152, 1157, 1168, 1456), and chat UI refinements (1281, 1457, 1479, 1482). The trajectory shows UX evolving from per-feature polish into systematic cross-platform consistency work spanning macOS, iOS, and Android.

## Commits

| # | Subject | Date |
|---|---------|------|
| 01152 | fix(macos): avoid external open for about:blank | 2025-12-12 21:56 |
| 01157 | fix(macos): keep voice wake overlay on top | 2025-12-12 22:09 |
| 01168 | fix(macos): clarify presence update source label | 2025-12-12 23:27 |
| 01251 | fix(onboarding): tighten welcome copy and raise nav | 2025-12-13 12:50 |
| 01252 | docs(onboarding): explain primary gateway and remotes | 2025-12-13 12:55 |
| 01253 | fix(ui): align SSH target discovery row | 2025-12-13 12:58 |
| 01255 | fix(onboarding): drop finish footer line | 2025-12-13 13:02 |
| 01256 | feat(onboarding): highlight voice wake, panel, and tools | 2025-12-13 13:04 |
| 01262 | fix(macos): make status lines non-selectable | 2025-12-13 13:59 |
| 01265 | fix(macos): prevent menubar menu width jump | 2025-12-13 15:50 |
| 01273 | feat(mac): restructure config settings grid | 2025-12-13 15:55 |
| 01280 | fix(mac): hide empty MCP servers section | 2025-12-13 16:43 |
| 01281 | feat(webchat): polish SwiftUI chat | 2025-12-13 16:45 |
| 01282 | fix(mac): expand config settings width | 2025-12-13 16:48 |
| 01286 | fix(mac): polish config + cron layouts | 2025-12-13 16:59 |
| 01287 | fix(mac): align config tab padding | 2025-12-13 17:00 |
| 01292 | fix(mac): use pointing hand cursor on tool links | 2025-12-13 17:15 |
| 01294 | fix(mac): show link cursor in About | 2025-12-13 17:18 |
| 01295 | fix(mac): show clawd browser path in config | 2025-12-13 17:23 |
| 01303 | fix(ios): improve bridge discovery and pairing UX | 2025-12-13 17:58 |
| 01308 | fix(mac): clarify attach-only gateway errors | 2025-12-13 18:09 |
| 01334 | iOS: copy + clean bridge address | 2025-12-13 23:29 |
| 01335 | iOS: show local IP in settings | 2025-12-13 23:37 |
| 01336 | iOS: copy bridge URL/host/port | 2025-12-13 23:40 |
| 01338 | iOS: configurable voice wake words | 2025-12-13 23:49 |
| 01342 | feat(instances): show OS version | 2025-12-13 23:46 |
| 01378 | feat(macos): refresh tools roster | 2025-12-14 01:54 |
| 01380 | feat(ios): unify manual bridge config and auto-reconnect | 2025-12-14 01:54 |
| 01414 | test(macos): add settings view smoke coverage | 2025-12-14 02:54 |
| 01428 | feat(macos): move camera setting to General | 2025-12-14 03:32 |
| 01433 | ui(macos): lower onboarding welcome content | 2025-12-14 03:45 |
| 01435 | ui(macos): skip local onboarding steps in remote mode | 2025-12-14 03:49 |
| 01438 | ui(macos): make master discovery selectable | 2025-12-14 03:53 |
| 01439 | ui(macos): fix security notice wrapping | 2025-12-14 03:57 |
| 01449 | ui(macos): skip whatsapp onboarding in remote mode | 2025-12-14 04:20 |
| 01452 | fix(macos): suggest critter emojis only | 2025-12-14 04:29 |
| 01454 | chore(tools): add emoji tool names | 2025-12-14 03:32 |
| 01456 | fix(macos): sane chat window placement | 2025-12-14 03:57 |
| 01457 | fix(chat): improve history + polish SwiftUI panel | 2025-12-14 04:18 |
| 01460 | fix(android): safe area + settings scroll | 2025-12-14 04:34 |
| 01479 | iOS: Fix canvas touch events and auto-hide status bubble | 2025-12-14 05:14 |
| 01482 | ui(ios): animate idle background | 2025-12-14 05:15 |
| 01488 | fix(android): respect insets and enable settings scroll | 2025-12-14 05:28 |
| 01500 | docs(macos): critter-first onboarding copy | 2025-12-14 06:26 |

## Narrative

### Voice Overlay and Window Management (1152, 1157, 1168)

Early UX commits focused on macOS overlay behavior. Commit 01152 fixed Canvas panel navigation to keep internal URLs within the panel instead of opening them externally. Commit 01157 fixed z-order handling so the voice wake overlay stays on top of other windows including Canvas. Commit 01168 clarified presence update source labels to reduce ambiguity.

### Onboarding Flow Polish (1251-1256)

A concentrated series of onboarding improvements began at commit 01251, which condensed the welcome message and adjusted navigation button spacing. Commit 01252 clarified the "Where Clawdis runs" page to explain primary gateway and remote access. Commit 01253 restructured SSH target input layout with consistent alignment. Commit 01255 removed the explanatory footer from the finish screen. Commit 01256 added feature highlight rows for Voice Wake, Canvas, and Tools with a direct link to the Tools settings tab.

### macOS Menu and Settings Polish (1262, 1265, 1273, 1280-1282, 1286-1287, 1292-1295)

Commit 01262 made status lines non-selectable by embedding them in toggle labels. Commit 01265 fixed menu width jumping. Commit 01273 restructured the config settings grid. Commits 01280-01282 hid empty MCP server sections, polished SwiftUI chat, and expanded config settings width. Commits 01286-01287 polished config and cron layouts and aligned tab padding. Commits 01292-01295 added pointing hand cursors on tool links and About view links, and displayed the browser path in config.

### iOS Bridge and Discovery UX (1303, 1334-1336, 1338, 1342, 1380)

Commit 01303 improved iOS bridge discovery with status callbacks, timeout handling, and machine display name detection. Commits 01334-01336 cleaned up bridge address display, added local IP visibility, and provided granular copy options for bridge URL components. Commit 01338 added configurable voice wake words on iOS. Commit 01342 added OS version display with platform icons in the Instances tab. Commit 01380 unified manual bridge configuration with auto-reconnect.

### Error Message Clarity (1308)

Commit 01308 improved error messaging for attach-only gateway mode, providing clearer guidance on why connections fail and how to resolve them.

### Tools and Settings Refinements (1378, 1414, 1428, 1452, 1454)

Commit 01378 refreshed the macOS tools roster with wacli and improved descriptions. Commit 01414 added settings view smoke test coverage. Commit 01428 moved camera settings to the General tab for discoverability. Commit 01452 restricted emoji suggestions to critter emojis for agent identity. Commit 01454 added emoji display names to tool settings.

### Advanced Onboarding Adaptations (1433, 1435, 1438-1439, 1449)

Commit 01433 adjusted welcome screen vertical positioning. Commit 01435 modified onboarding to skip local-only steps in remote mode. Commit 01438 made master discovery interactive with selectable results. Commit 01439 fixed security notice text wrapping. Commit 01449 skipped WhatsApp onboarding in remote mode.

### Chat Window and Cross-Platform Polish (1456-1457, 1460, 1479, 1482, 1488)

Commit 01456 improved WebChat window placement with a unified strategy considering screen bounds. Commit 01457 enhanced chat history handling and polished the SwiftUI chat panel. Commit 01460 fixed Android safe area handling and settings scrolling. Commit 01479 fixed iOS canvas touch events and added auto-hiding status bubbles. Commit 01482 animated the iOS idle background. Commit 01488 further fixed Android insets and scroll behavior.

### Critter-First Identity (1500)

Commit 01500 revised macOS onboarding copy to emphasize a critter-first approach to agent identity creation, guiding users toward creating agent identities with emojis and names as the primary interaction pattern.

## Cross-references

- [documentation](documentation.md) -- onboarding documentation and user-facing copy
- [testing](testing.md) -- settings view smoke tests and onboarding UI testing
