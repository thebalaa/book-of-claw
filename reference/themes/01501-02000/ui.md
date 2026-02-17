# Theme: UI

UI commits in the 01501-02000 range account for 109 entries spanning macOS onboarding polish, Canvas A2UI rendering, Android Material design overhaul, idle background animations, device instance displays, DMG packaging design, control dashboard, skills settings layout, chat bubble styling with speech bubble tails, and onboarding window sizing. The Android app received its most substantial visual refresh with Material surfaces, theme support, and immersive fullscreen.

## Commits

| # | Subject | Date |
|---|---------|------|
| 01502 | ui(macos): tweak Claude sign-in copy | 2025-12-14 19:12 |
| 01503 | ui(macos): recommend Opus on Claude step | 2025-12-14 19:13 |
| 01505 | ui(macos): polish onboarding wording | 2025-12-14 19:22 |
| 01506 | ui(macos): remove Claude auth skip button | 2025-12-14 19:23 |
| 01516 | fix(chat-ui): improve typing dots and composer | 2025-12-17 11:53 |
| 01519 | fix(macos): anchor canvas panel to active screen | 2025-12-17 09:28 |
| 01521 | Canvas: simplify show + report status | 2025-12-17 10:37 |
| 01524 | feat(macos): add Canvas A2UI renderer | 2025-12-17 11:35 |
| 01525 | macOS: update config settings copy | 2025-12-17 11:36 |
| 01528 | feat(macos): add menu Canvas open/close | 2025-12-17 11:53 |
| 01529 | Canvas: fix A2UI v0.8 rendering | 2025-12-17 13:20 |
| 01533 | Canvas: fix A2UI push rendering | 2025-12-17 14:36 |
| 01534 | Canvas: add vibrancy close pill | 2025-12-17 14:50 |
| 01535 | Canvas: shrink close button | 2025-12-17 14:52 |
| 01536 | Android: add unicast discovery domain + app icon | 2025-12-17 15:29 |
| 01538 | Canvas: forward A2UI actions | 2025-12-17 15:41 |
| 01592 | ui: move connection pill into composer | 2025-12-17 17:28 |
| 01593 | ui: tighten padding + keep status in composer | 2025-12-17 17:46 |
| 01594 | ui: align status pill with send | 2025-12-17 17:53 |
| 01595 | ui: reduce padding | 2025-12-17 17:59 |
| 01603 | feat: chat parity + wide-area discovery | 2025-12-17 23:49 |
| 01604 | style: make chat more Material | 2025-12-17 23:57 |
| 01605 | style: Polish settings UI | 2025-12-18 00:07 |
| 01606 | style: Enable immersive fullscreen | 2025-12-18 00:07 |
| 01607 | refactor: Unify chat status label | 2025-12-18 00:20 |
| 01608 | style: Use Offline bridge status | 2025-12-18 00:20 |
| 01609 | style: Use Offline bridge status | 2025-12-18 00:20 |
| 01610 | style: Compact Instances row | 2025-12-18 00:24 |
| 01611 | style: Remove Instances row duplication | 2025-12-18 00:28 |
| 01612 | style: Use tonal surfaces for overlays | 2025-12-18 00:34 |
| 01613 | style: Improve idle background | 2025-12-18 00:41 |
| 01614 | style: Unify device + OS chip | 2025-12-18 00:43 |
| 01615 | fix: Show idle background under WebView | 2025-12-18 00:53 |
| 01616 | style: Reorder settings sections | 2025-12-18 01:00 |
| 01617 | style: Reorder settings sections | 2025-12-18 01:00 |
| 01619 | style: Respect system theme and clamp overlays | 2025-12-18 01:15 |
| 01622 | refactor: Unify idle background animation | 2025-12-18 01:22 |
| 01623 | style: Allow settings light mode | 2025-12-18 01:29 |
| 01631 | fix: Improve webview compatibility | 2025-12-18 02:08 |
| 01632 | feat: Add Voice Wake (foreground/always) | 2025-12-18 02:08 |
| 01641 | fix: Harden idle background animation | 2025-12-18 02:27 |
| 01643 | feat: Hide connected bridge from discovery list | 2025-12-18 02:37 |
| 01647 | feat: Add clawdis-mac node describe and verbose list | 2025-12-18 02:05 |
| 01650 | style: Improve idle background blend mode fallback | 2025-12-18 08:32 |
| 01655 | macOS: add leading device icons in Instances | 2025-12-18 09:15 |
| 01657 | Android: run canvas WebView loads on main | 2025-12-18 08:31 |
| 01658 | macOS: move instance update info to third row | 2025-12-18 09:36 |
| 01659 | macOS: hide node pairing alert host window | 2025-12-18 09:37 |
| 01662 | fix(android): show backdrop behind WebView | 2025-12-18 09:46 |
| 01670 | Android: hide Disconnect without remote | 2025-12-18 11:39 |
| 01686 | feat(node): show camera capture HUD | 2025-12-18 14:48 |
| 01700 | Gateway: add browser control UI | 2025-12-18 22:40 |
| 01703 | feat(macos): hover HUD for activity | 2025-12-19 00:03 |
| 01704 | Canvas host: fix action bridge invocation | 2025-12-19 00:04 |
| 01705 | CanvasA2UI: refresh bundled renderer | 2025-12-18 23:08 |
| 01717 | fix(canvas): load A2UI resources across platforms | 2025-12-19 01:53 |
| 01726 | fix(control-ui): serve dashboard at root | 2025-12-19 05:11 |
| 01727 | fix(control-ui): drop /ui alias | 2025-12-19 05:13 |
| 01728 | fix(control-ui): wrap long message lines | 2025-12-19 09:54 |
| 01732 | build(canvas): refresh a2ui bundle | 2025-12-19 12:40 |
| 01748 | fix: show Dock icon during onboarding | 2025-12-19 19:19 |
| 01759 | style(macos): add dmg background | 2025-12-19 22:22 |
| 01762 | fix: align DMG background and icon layout | 2025-12-19 22:38 |
| 01764 | style: refine DMG arrow | 2025-12-19 22:44 |
| 01765 | style: lighten DMG background for label contrast | 2025-12-19 22:51 |
| 01791 | chore: update a2ui bundle | 2025-12-20 11:32 |
| 01792 | fix(a2ui): stabilize canvas host | 2025-12-20 10:58 |
| 01793 | fix(a2ui): improve modal styling | 2025-12-20 11:12 |
| 01841 | style: soften hover hud status dot | 2025-12-20 15:20 |
| 01862 | feat: add skills search and website | 2025-12-20 17:31 |
| 01870 | feat(mac): add onboarding chat kickoff | 2025-12-20 16:51 |
| 01871 | feat(chat): restyle onboarding chat UI | 2025-12-20 16:51 |
| 01872 | feat(web): add whatsapp QR login tool | 2025-12-20 16:51 |
| 01892 | fix(web): handle self-chat mode | 2025-12-20 19:31 |
| 01912 | style: lower welcome icon | 2025-12-20 19:44 |
| 01913 | feat: hide kickoff bubble and tweak typing | 2025-12-20 19:46 |
| 01914 | refactor: refresh skills settings layout | 2025-12-20 20:49 |
| 01915 | fix: restore bottom bar padding | 2025-12-20 19:50 |
| 01918 | refactor: simplify skills list rows | 2025-12-20 21:12 |
| 01920 | refactor: move skills filter into header | 2025-12-20 21:17 |
| 01921 | refactor: simplify sessions header | 2025-12-20 21:17 |
| 01922 | chore: widen settings window | 2025-12-20 21:17 |
| 01923 | refactor: collapse control channel status | 2025-12-20 21:17 |
| 01925 | style: nudge icon up | 2025-12-20 20:19 |
| 01926 | style: refine icon and bottom bar spacing | 2025-12-20 20:24 |
| 01930 | feat: choose skill install target | 2025-12-20 21:52 |
| 01933 | style: widen label and clarify language | 2025-12-20 21:14 |
| 01936 | style: reduce window height | 2025-12-20 21:33 |
| 01937 | fix: restore chat bubble styling | 2025-12-20 21:47 |
| 01938 | fix: restore bubbles and spacing | 2025-12-20 21:56 |
| 01939 | fix: always show CLI installer | 2025-12-20 22:00 |
| 01940 | style: lower bottom controls | 2025-12-20 22:03 |
| 01941 | fix: clearer bubbles and tighter composer | 2025-12-20 22:03 |
| 01942 | style: lower bottom row | 2025-12-20 22:07 |
| 01943 | style: add speech bubble tails | 2025-12-20 22:08 |
| 01944 | fix: anchor bottom bar and reduce height | 2025-12-20 22:16 |
| 01945 | style: refine bubble tails | 2025-12-20 22:23 |
| 01946 | style: widen window | 2025-12-20 22:23 |
| 01953 | feat(macos): add connections settings | 2025-12-20 23:41 |
| 01956 | chore(android): update icons and platform config | 2025-12-20 23:30 |
| 01961 | style(chat): use integrated bubble tail | 2025-12-20 23:00 |
| 01977 | feat: refine skills install actions | 2025-12-21 01:07 |
| 01979 | feat(ui): expand control dashboard | 2025-12-21 00:34 |
| 01983 | fix(mac): restore skills install ForEach | 2025-12-21 00:46 |
| 01984 | fix(mac): disambiguate skills install ForEach | 2025-12-21 00:47 |
| 01986 | fix: use A2UI message context | 2025-12-21 01:48 |
| 01987 | fix(mac): avoid buttonStyle ternary | 2025-12-21 00:48 |
| 01994 | feat(mac): add tailscale settings | 2025-12-21 01:16 |
| 01997 | fix: align A2UI canvas background | 2025-12-21 02:31 |

## Narrative

### Onboarding and Canvas UI (Commits 01502-01538)

The range opened with macOS onboarding copy refinements: Claude sign-in wording (01502), Opus recommendation (01503), polished wording (01505), and skip button removal (01506). Canvas UI emerged with A2UI rendering (01524), menu open/close (01528), vibrancy close pill (01534, 01535), and A2UI action forwarding (01538). Chat UI typing dots and composer were improved (01516).

### Android Material Overhaul (Commits 01592-01650)

A major Android UI push began with connection pill placement (01592-01595) and Material styling (01604). Settings were polished (01605), immersive fullscreen was enabled (01606), and chat status labels were unified (01607). Bridge status used "Offline" labels (01608-01609). Instance rows were compacted (01610-01611) with tonal surfaces (01612). Idle backgrounds evolved through several iterations (01613, 01615, 01622, 01641, 01650). System theme support and overlay clamping arrived (01619, 01623). Device icons appeared in instance lists (01655, 01658).

### Canvas Host and DMG Design (Commits 01657-01765)

Canvas WebView rendering was stabilized on Android (01657, 01662). Camera capture HUD (01686), browser control UI (01700), and hover HUD (01703) added interaction surfaces. A2UI bundle refreshes (01705, 01732) and cross-platform resource loading (01717) matured the canvas system. Control UI was served at root (01726-01727). DMG packaging design saw background art (01759), icon layout alignment (01762), arrow refinement (01764), and contrast improvements (01765).

### Skills, Chat Bubbles, and Onboarding Polish (Commits 01791-02000)

A2UI bundle updates and modal styling continued (01791-01793). The hover HUD status dot was softened (01841). Skills search and website UI (01862) launched alongside onboarding chat kickoff (01870-01871). Chat bubble styling underwent extensive iteration: bubble restoration (01937-01938), clearer bubbles (01941), speech bubble tails (01943, 01945), and integrated tail styling (01961). Skills settings layout was refreshed (01914, 01918, 01920). Window sizing was refined (01922, 01936, 01946). The control dashboard expanded (01979). Connections settings (01953) and tailscale settings (01994) closed the UI additions.

## Cross-references

- [ux](ux.md) -- UI changes that also improve user experience overlap significantly
- [core-feature](core-feature.md) -- UI work implements visual surfaces for new features
- [cleanup](cleanup.md) -- formatting and style commits overlap with UI polish
