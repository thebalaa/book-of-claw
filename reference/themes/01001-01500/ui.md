# Theme: UI

UI commits in the 1001-1500 range span macOS menu bar and panel refinements, webchat styling, context usage bars, Canvas panel creation and layout, iOS and Android interface work, onboarding flow polish, settings reorganization, and shared SwiftUI chat components. The bulk of activity centers on the macOS companion app -- panel toggle behavior, context card rendering, status icon badges, settings layouts, and window placement -- with a secondary push into iOS Canvas, bridge UI, and cross-platform chat.

## Commits

| # | Subject | Date |
|---|---------|------|
| 01002 | mac: clear status highlight via menu delegate | 2025-12-09 23:01 |
| 01004 | mac: revert webchat menu fallback | 2025-12-09 23:15 |
| 01006 | mac: tie highlight to panel visibility | 2025-12-09 23:20 |
| 01007 | mac: close panel on second click | 2025-12-09 23:25 |
| 01009 | mac: ensure panel toggle doesn't reopen | 2025-12-09 23:32 |
| 01010 | Add package manager selector and hide uninstalled tools | 2025-12-09 22:31 |
| 01011 | mac: toggle panel purely from visibility | 2025-12-09 23:36 |
| 01014 | mac: open latest log file | 2025-12-09 23:45 |
| 01015 | fix(mac): keep overlay on token mismatch | 2025-12-10 00:47 |
| 01018 | mac: global outside-click monitor and highlight helper | 2025-12-10 00:51 |
| 01019 | fix: keep tools list stable | 2025-12-10 00:02 |
| 01020 | style(webchat): pad error view | 2025-12-10 00:02 |
| 01022 | style(webchat): add body padding class on error | 2025-12-10 00:04 |
| 01027 | mac: show full command and kill controls for ports | 2025-12-10 01:22 |
| 01028 | mac: add browser webchat debug entry | 2025-12-10 01:33 |
| 01037 | webchat: handle bind errors gracefully | 2025-12-10 01:00 |
| 01039 | mac: tidy menu and gateway support | 2025-12-10 01:00 |
| 01040 | mac: add swiftui web chat option | 2025-12-10 02:00 |
| 01041 | webchat: add centered boot loader | 2025-12-10 01:04 |
| 01043 | mac: align web chat UI with web | 2025-12-10 02:18 |
| 01044 | mac: remove divider above active toggle | 2025-12-10 02:44 |
| 01045 | mac: inline gateway status row | 2025-12-10 02:46 |
| 01046 | mac: move debug toggles to footer | 2025-12-10 02:48 |
| 01047 | chore(mac): align remote ssh controls | 2025-12-10 02:48 |
| 01048 | mac: simplify package manager picker | 2025-12-10 02:49 |
| 01054 | webchat: show real ws errors | 2025-12-10 01:27 |
| 01068 | webchat: improve logging and static serving | 2025-12-10 15:32 |
| 01087 | fix(mac): webchat ws connect | 2025-12-12 14:18 |
| 01089 | fix(mac): keep webchat boot dots | 2025-12-12 15:01 |
| 01090 | fix(mac): cache webchat panel | 2025-12-12 15:33 |
| 01098 | style(mac): hud glass voice overlay | 2025-12-12 16:39 |
| 01117 | fix(mac): allow typing in web chat panel | 2025-12-12 18:07 |
| 01170 | feat(mac): show context usage bars | 2025-12-12 23:33 |
| 01173 | fix(mac): show cached context usage | 2025-12-12 23:44 |
| 01174 | fix(mac): render context bar reliably | 2025-12-13 00:13 |
| 01175 | fix(mac): render context bar as image | 2025-12-13 00:19 |
| 01176 | fix(mac): size context bar to menu | 2025-12-13 00:23 |
| 01179 | refactor(ios): remove manual URL controls | 2025-12-13 00:31 |
| 01180 | feat(mac): compact context sessions in menu | 2025-12-13 00:39 |
| 01181 | chore(macos): move Permissions tab after Tools | 2025-12-13 00:47 |
| 01183 | refactor(ios): minimal full-screen canvas | 2025-12-13 00:50 |
| 01184 | fix(mac): avoid collapsed context pills in menu | 2025-12-13 00:50 |
| 01186 | feat(mac): show session labels under context bars | 2025-12-13 01:10 |
| 01187 | fix(mac): render context sessions card with labels | 2025-12-13 01:18 |
| 01192 | feat(ios): add close button and ready canvas | 2025-12-13 01:49 |
| 01193 | feat(bridge): show node ip in pairing | 2025-12-13 01:57 |
| 01194 | ui(ios): clean up connected bridge list | 2025-12-13 02:02 |
| 01196 | fix(ios): make canvas full-bleed | 2025-12-13 02:14 |
| 01197 | ui(ios): glassy settings button | 2025-12-13 02:19 |
| 01198 | feat(mac): compact context session rows | 2025-12-13 02:15 |
| 01199 | feat(mac): tighten context session row | 2025-12-13 02:30 |
| 01201 | macOS: add Cron settings tab | 2025-12-13 02:34 |
| 01203 | fix(mac): keep context row labels together | 2025-12-13 02:47 |
| 01204 | fix(ios): prettify bonjour endpoint labels | 2025-12-13 02:48 |
| 01208 | macOS: widen settings window | 2025-12-13 03:00 |
| 01209 | refactor(mac): inject context card as NSMenuItem view | 2025-12-13 03:03 |
| 01210 | fix(mac): preserve SwiftUI menu delegate | 2025-12-13 03:11 |
| 01211 | macOS: compact context menu context rows | 2025-12-13 03:30 |
| 01212 | macOS: prewarm context menu card | 2025-12-13 03:42 |
| 01214 | feat(cli): add cron status + warn when disabled | 2025-12-13 03:43 |
| 01215 | feat(macos): show cron scheduler status | 2025-12-13 03:43 |
| 01219 | macOS: stabilize context menu card layout | 2025-12-13 03:52 |
| 01222 | feat(macos): add master discovery to onboarding | 2025-12-13 04:00 |
| 01223 | macOS: adjust context card padding | 2025-12-13 04:00 |
| 01226 | fix(ui): show bonjour masters inline | 2025-12-13 10:48 |
| 01228 | macOS: increase context card row spacing | 2025-12-13 11:34 |
| 01230 | fix(ui): increase onboarding horizontal padding | 2025-12-13 12:15 |
| 01234 | macOS: align sessions list with header | 2025-12-13 14:12 |
| 01236 | macOS: align context padding | 2025-12-13 15:12 |
| 01238 | macOS: add onboarding security notice | 2025-12-13 15:52 |
| 01240 | feat(mac): add ui screens + text clawdis-mac | 2025-12-13 16:45 |
| 01244 | feat(macos): manage cron jobs | 2025-12-13 18:02 |
| 01245 | feat(mac): move screenshot to ui | 2025-12-13 18:28 |
| 01247 | fix(ios): stabilize voice wake + bridge UI | 2025-12-13 19:14 |
| 01251 | fix(onboarding): tighten welcome copy and raise nav | 2025-12-13 12:50 |
| 01253 | fix(ui): align SSH target discovery row | 2025-12-13 12:58 |
| 01255 | fix(onboarding): drop finish footer line | 2025-12-13 13:02 |
| 01261 | fix(ui): improve light-mode green for context bar | 2025-12-13 13:55 |
| 01262 | fix(macos): make status lines non-selectable | 2025-12-13 13:59 |
| 01265 | fix(macos): prevent menubar menu width jump | 2025-12-13 15:50 |
| 01272 | feat(mac): add browser control menu toggle | 2025-12-13 15:49 |
| 01273 | feat(mac): restructure config settings grid | 2025-12-13 15:55 |
| 01277 | feat(macos): load sessions via gateway | 2025-12-13 16:33 |
| 01280 | fix(mac): hide empty MCP servers section | 2025-12-13 16:43 |
| 01281 | feat(webchat): polish SwiftUI chat | 2025-12-13 16:45 |
| 01282 | fix(mac): expand config settings width | 2025-12-13 16:48 |
| 01286 | fix(mac): polish config + cron layouts | 2025-12-13 16:59 |
| 01287 | fix(mac): align config tab padding | 2025-12-13 17:00 |
| 01292 | fix(mac): use pointing hand cursor on tool links | 2025-12-13 17:15 |
| 01294 | fix(mac): show link cursor in About | 2025-12-13 17:18 |
| 01295 | fix(mac): show clawd browser path in config | 2025-12-13 17:23 |
| 01302 | fix(mac): flatten debug sections + use checkboxes | 2025-12-13 17:57 |
| 01304 | fix(mac): flatten config sections + use checkboxes | 2025-12-13 18:06 |
| 01310 | fix(mac): place debug menu under Settings | 2025-12-13 18:10 |
| 01312 | fix(macos): show full browser tab ids | 2025-12-13 18:16 |
| 01316 | fix(browser): apply clawd theme color | 2025-12-13 18:41 |
| 01321 | style(macos): tidy settings and CLI | 2025-12-13 19:23 |
| 01330 | fix(macos): clamp web chat to visible frame | 2025-12-13 22:38 |
| 01333 | style(macos): mark Reject destructive | 2025-12-13 23:29 |
| 01354 | feat(ios): pulse settings indicator | 2025-12-14 00:48 |
| 01370 | docs(site): update docs nav | 2025-12-14 00:55 |
| 01372 | fix(mac): move menu separator below context card | 2025-12-14 00:57 |
| 01373 | fix(ios): use mac icon + avoid voice wake crash | 2025-12-14 01:09 |
| 01384 | fix(ios): remove white border from app icon | 2025-12-14 01:57 |
| 01396 | fix(ios): show connection status badge | 2025-12-14 02:17 |
| 01398 | fix(ios): make connection badge visible | 2025-12-14 02:19 |
| 01417 | feat(ios): add always-on status overlay | 2025-12-14 03:00 |
| 01420 | fix(android): inset top buttons for status bar | 2025-12-14 03:10 |
| 01421 | fix(android): make settings sheet scrollable | 2025-12-14 03:13 |
| 01428 | feat(macos): move camera setting to General | 2025-12-14 03:32 |
| 01429 | fix(macos): hide session store path in remote mode | 2025-12-14 03:38 |
| 01433 | ui(macos): lower onboarding welcome content | 2025-12-14 03:45 |
| 01435 | ui(macos): skip local onboarding steps in remote mode | 2025-12-14 03:49 |
| 01438 | ui(macos): make master discovery selectable | 2025-12-14 03:53 |
| 01439 | ui(macos): fix security notice wrapping | 2025-12-14 03:57 |
| 01442 | ui(macos): remove duplicate canvas toggle | 2025-12-14 04:00 |
| 01444 | ui(macos): always enable deep links | 2025-12-14 04:06 |
| 01449 | ui(macos): skip whatsapp onboarding in remote mode | 2025-12-14 04:20 |
| 01456 | fix(macos): sane chat window placement | 2025-12-14 03:57 |
| 01460 | fix(android): safe area + settings scroll | 2025-12-14 04:34 |
| 01476 | refactor(chat-ui): compact layout | 2025-12-14 04:41 |
| 01482 | ui(ios): animate idle background | 2025-12-14 05:15 |
| 01484 | fix(chat-ui): reflect gateway connection | 2025-12-14 05:17 |
| 01488 | fix(android): respect insets and enable settings scroll | 2025-12-14 05:28 |
| 01495 | fix(android): avoid non-exhaustive sheet switch | 2025-12-14 05:42 |

## Narrative

The UI theme in the 1001-1500 range begins with an intensive burst of macOS menu bar refinement. Commits 01002 through 01011 iterated rapidly on panel toggle behavior -- tying the status item highlight to panel visibility, closing the panel on second click, and simplifying toggle logic to use only the visibility state property. Commit 01010 added a package manager selector to the tools settings, and commits 01014 and 01018 added log file access and an outside-click monitor respectively.

Webchat received visual polish through commits 01020 and 01022 (error view padding), 01041 (centered boot loader), 01054 (real WebSocket error display), and 01068 (improved bootstrap logging). The SwiftUI web chat option arrived in commit 01040, followed by alignment with the web version in 01043. Several bugfixes addressed webchat connectivity: 01087 fixed WebSocket connections, 01089 kept boot dots visible during loading, and 01090 added panel session caching.

The menu bar saw further layout work with commits 01044-01048 removing dividers, inlining gateway status, moving debug toggles to the footer, aligning SSH controls, and simplifying the package manager picker. Port diagnostics UI appeared in commit 01027 with full command display and kill controls.

A major UI addition was context usage bars, starting with commit 01170 and refined through 01173-01176, which iterated on cached context display, reliable rendering, image-based rendering, and proper sizing for the menu bar. Context session display evolved through commits 01180, 01184, 01186-01187, 01198-01199, 01203, 01209, 01211-01212, 01219, 01223, 01228, and 01236, progressively compacting rows, adding labels, injecting context cards as NSMenuItem views, prewarming cards, stabilizing layout, and adjusting padding.

The Canvas panel was introduced in the 01133-01139 range (covered under core-feature) and received iOS-specific UI work in commits 01179 (removing manual URL controls), 01183 (full-screen canvas), 01192 (close button), 01196 (full-bleed layout), and 01197 (glassy settings button). Bridge UI improved through commits 01193-01194 (node IP display, list cleanup) and 01204 (prettified endpoint labels).

Settings UI underwent significant reorganization. Commit 01181 moved Permissions after Tools, 01208 widened the settings window, 01273 restructured the config grid, 01280 hid empty MCP sections, 01282 expanded config width, 01286-01287 polished config and cron layouts, and 01302-01304 flattened debug and config sections using checkboxes. Commit 01310 placed the debug menu under Settings.

Onboarding flow received extensive attention starting with commit 01222 (master discovery), 01226 (inline bonjour masters), 01230 (horizontal padding), 01238 (security notice), 01251 (tightened welcome copy), 01253 (SSH target alignment), 01255 (dropped finish footer), and continuing into 01433-01449 which lowered welcome content, skipped local steps in remote mode, made master discovery selectable, fixed security notice wrapping, and skipped WhatsApp onboarding in remote mode.

Cross-platform UI work expanded to iOS and Android. Commits 01354 and 01398 added iOS settings indicators and connection badges. Commits 01373 and 01384 fixed iOS app icons. Commit 01417 added an always-on status overlay. Android received attention in commits 01420-01421 (status bar insets, scrollable settings) and 01460 and 01488 (safe area fixes and settings scroll). The shared chat UI was compacted in 01476 and updated to reflect gateway connection state in 01484. Window placement was improved in 01330 (clamping to visible frame) and 01456 (unified placement strategy).

## Cross-references

- [cleanup](cleanup.md) -- many UI commits include cleanup tags for formatting and layout tidying
- [api](api.md) -- several UI features depend on new API endpoints (sessions list, cron status, context usage)
- [testing](../00501-01000/testing.md) -- UI changes often ship alongside test coverage
