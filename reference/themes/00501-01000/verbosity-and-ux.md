# Theme: Verbosity and UX

Commits 501-1000 shift the verbosity and UX theme overwhelmingly toward the macOS companion app, which dominates this range. The early portion (501-550) focuses on macOS app settings UI polish, relay status indicators, and CLI helpers. The middle section (551-700) adds voice wake SSH forwarding UI, webchat debugging logs, overlay layout refinements, and extensive settings tab reorganization. Commits 700-800 introduce the voice wake overlay with iterative visual polish (transcript tinting, animations, resize behavior, close buttons, vibrancy), push-to-talk hotkey UX, and chime audio feedback. The final stretch (800-1000) surfaces agent work activity in the menu bar, adds control channel diagnostics, gateway verbose logging, and webchat panel refinements. Throughout, verbosity logging expands into voice wake SSH commands, webchat server diagnostics, control channel responses, RPC payloads, and gateway WebSocket traffic.

## Commits

| # | Subject | Date |
|---|---------|------|
| 00502 | mac: fix web chat boot in WKWebView | 2025-12-06 21:33 |
| 00503 | mac: fix notification prompt and center onboarding toggle | 2025-12-06 21:38 |
| 00504 | mac: streamline model config UI | 2025-12-06 21:39 |
| 00506 | feat: unify main session and icon cues | 2025-12-06 23:16 |
| 00508 | feat(macos): add tools tab installers | 2025-12-06 23:25 |
| 00511 | chore: move model reload to debug tab | 2025-12-06 23:40 |
| 00512 | chore: reorder settings tabs | 2025-12-06 23:41 |
| 00513 | feat(mac): show relay run indicator in menu | 2025-12-06 23:43 |
| 00514 | chore: move relay status below toggles | 2025-12-06 23:44 |
| 00520 | feat(mac): make relay project root configurable from Debug tab | 2025-12-06 23:51 |
| 00521 | feat(mac): show relay attention badge without dimming paused state | 2025-12-06 23:54 |
| 00531 | mac: show build metadata in About | 2025-12-07 00:30 |
| 00534 | mac: tidy About metadata layout | 2025-12-07 00:48 |
| 00537 | Mac: remove Tools & MCP header | 2025-12-07 00:16 |
| 00538 | Mac: lighten tool cards | 2025-12-07 00:17 |
| 00539 | Mac: privileged CLI helper install via osascript | 2025-12-07 00:50 |
| 00540 | CLI: add --help and usage | 2025-12-07 00:53 |
| 00541 | CLI: add --version flag | 2025-12-07 00:55 |
| 00542 | CLI: fix --version by reading app Info.plist | 2025-12-07 00:59 |
| 00544 | chore(mac): move relay status row directly under Active toggle | 2025-12-07 01:16 |
| 00547 | Settings: keep tabs fixed, only content scrolls | 2025-12-07 01:56 |
| 00548 | VoiceWake: add SSH connectivity check UI | 2025-12-07 02:03 |
| 00550 | Mac: let launch checkbox toggle launchd agent | 2025-12-07 01:09 |
| 00553 | VoiceWake: better ssh target parsing and error detail | 2025-12-07 02:11 |
| 00554 | VoiceWake: make tab content scrollable | 2025-12-07 02:12 |
| 00555 | VoiceWake: keep listening until silence, gate enable on permissions | 2025-12-07 02:18 |
| 00556 | fix: gate voice wake permissions | 2025-12-07 02:19 |
| 00557 | VoiceWake: log detection, hold to 1s silence, ssh log clarity | 2025-12-07 02:24 |
| 00558 | tools: add clawlog helper for unified logs | 2025-12-07 02:25 |
| 00559 | VoiceWake: compact SSH test row | 2025-12-07 02:32 |
| 00560 | VoiceWake: align mic + level rows | 2025-12-07 02:32 |
| 00561 | VoiceWake: stabilize test card height | 2025-12-07 02:33 |
| 00567 | chore(mac): add webchat auto-open flag and verbose logging | 2025-12-07 03:31 |
| 00571 | VoiceWake: ssh check also verifies remote clawdis-mac | 2025-12-07 03:53 |
| 00573 | fix: stabilize tools action width | 2025-12-07 04:13 |
| 00574 | Mac: link Debug log button to pino log | 2025-12-07 03:15 |
| 00576 | Mac: debug log button shows path and opens in Finder | 2025-12-07 03:29 |
| 00578 | feat(macos): detect installed CLI helper | 2025-12-07 04:35 |
| 00580 | feat: add icon animation setting | 2025-12-07 04:38 |
| 00582 | CLI: allow --provider flag for login/logout (default whatsapp) | 2025-12-07 03:41 |
| 00583 | Mac: add relay restart button in Debug | 2025-12-07 03:42 |
| 00586 | feat(macos): run live voice wake listener and animate ears | 2025-12-07 04:52 |
| 00588 | fix(voicewake): log ssh/cli failure instead of staying silent | 2025-12-07 04:58 |
| 00599 | Settings: add heartbeat controls | 2025-12-07 04:30 |
| 00600 | Settings: inline heartbeat inputs | 2025-12-07 04:32 |
| 00602 | Settings: move session store path to Debug | 2025-12-07 04:38 |
| 00603 | Health: CLI probe and mac UI surfacing | 2025-12-07 04:38 |
| 00609 | UI: streamline relay status label | 2025-12-07 04:39 |
| 00615 | fix(health): reveal logs alerts when missing; align actions | 2025-12-07 05:46 |
| 00620 | chore(macos): remove focus ring on about icon | 2025-12-07 14:46 |
| 00621 | chore(macos): make debug settings scrollable | 2025-12-07 14:48 |
| 00623 | chore(macos): clean up CLI helper subtext | 2025-12-07 14:49 |
| 00624 | chore(macos): align mic level bar width | 2025-12-07 14:52 |
| 00625 | chore(macos): align recognition language row styling | 2025-12-07 14:52 |
| 00626 | chore(macos): simplify health status menu and messaging | 2025-12-07 14:54 |
| 00627 | macOS: widen voice wake label spacing | 2025-12-07 13:57 |
| 00629 | debug: add voice forward test button | 2025-12-07 15:00 |
| 00632 | debug: surface ssh error details in voice test | 2025-12-07 15:07 |
| 00633 | chore(macos): tighten voice wake control widths | 2025-12-07 15:09 |
| 00636 | Debug: make voice wake test follow config | 2025-12-07 14:33 |
| 00638 | chore(macos): enlarge about icon | 2025-12-07 15:34 |
| 00639 | Debug: surface detailed voice send errors | 2025-12-07 14:41 |
| 00640 | rpc: surface raw error lines and auto-start worker | 2025-12-07 15:46 |
| 00641 | debug: hide helper subtext while sending | 2025-12-07 15:47 |
| 00643 | General: add bottom inset to quit button | 2025-12-07 15:11 |
| 00645 | voice wake: surface ssh failures (missing key/no output) | 2025-12-07 16:13 |
| 00647 | Icon: add ear holes on voice wake | 2025-12-07 16:15 |
| 00648 | voice wake: show identity not found when configured | 2025-12-07 16:18 |
| 00654 | voice wake: log full ssh command for debug | 2025-12-07 16:38 |
| 00655 | chore(webchat): wait for local server and add debug logging | 2025-12-07 16:39 |
| 00656 | voice wake: log ssh command at info level | 2025-12-07 16:43 |
| 00657 | chore(webchat): add server logging and ensure buildable | 2025-12-07 16:49 |
| 00658 | chore(webchat): increase server logging for module load debugging | 2025-12-07 16:55 |
| 00660 | VoiceWake: include ssh cmd on failure | 2025-12-07 17:30 |
| 00666 | webchat: hide model selector in embedded UI | 2025-12-07 17:52 |
| 00667 | webchat: bypass api key prompts in embedded mode | 2025-12-07 17:53 |
| 00668 | refactor(mac): split voice wake settings | 2025-12-07 17:54 |
| 00671 | macOS: merge status row and fix webchat bundle deps | 2025-12-07 17:20 |
| 00672 | feat: add remote clawd toggle | 2025-12-07 18:19 |
| 00675 | macOS: show last health result with age in menu | 2025-12-07 17:23 |
| 00676 | macOS: fix web chat agent PATH and surface stderr | 2025-12-07 17:31 |
| 00678 | style: tighten onboarding hero spacing | 2025-12-07 18:30 |
| 00679 | style: increase onboarding content height | 2025-12-07 18:31 |
| 00680 | style: compact remote setup card and move advanced ssh fields | 2025-12-07 18:37 |
| 00681 | style: enlarge onboarding window to fit full permission list | 2025-12-07 18:38 |
| 00682 | chore: surface helper install status in onboarding | 2025-12-07 18:43 |
| 00684 | style: increase onboarding window height | 2025-12-07 18:59 |
| 00688 | macOS: surface stderr in health failure text | 2025-12-07 21:37 |
| 00694 | style: bump onboarding height to 840px | 2025-12-07 22:58 |
| 00695 | ui: align voice wake forwarding with remote mode | 2025-12-07 23:04 |
| 00696 | ui: make General tab scrollable | 2025-12-07 23:06 |
| 00698 | ui: reuse compact remote card in General and hide voice wake forwarder | 2025-12-07 23:20 |
| 00699 | ui: fold remote mode label into picker | 2025-12-07 23:21 |
| 00700 | ui: move health/cli info to Debug; add single health row in General | 2025-12-07 23:22 |
| 00701 | ui: tidy tables, links, and hide redundant voice wake forwarder | 2025-12-07 23:26 |
| 00702 | ui: place health row under remote picker and improve timeout message | 2025-12-07 23:34 |
| 00703 | copy: rename recognition language label | 2025-12-07 23:35 |
| 00705 | copy: shorten tailscale tip | 2025-12-08 00:14 |
| 00706 | ui: move Clawdis active toggle to top | 2025-12-08 00:16 |
| 00709 | copy: capitalize send heartbeats menu label | 2025-12-08 00:40 |
| 00710 | copy: rename menu toggle to Remote Clawdis Active when remote | 2025-12-08 00:41 |
| 00711 | health: surface ssh output when probe fails | 2025-12-08 00:52 |
| 00717 | webchat: fetch remote sessions via CLI and log missing history | 2025-12-08 01:55 |
| 00721 | webchat: surface bootstrap errors in UI | 2025-12-08 12:17 |
| 00724 | Remote web chat tunnel and onboarding polish | 2025-12-08 12:50 |
| 00729 | feat(macos): add voice wake mic picker | 2025-12-08 15:05 |
| 00739 | feat: refine voice wake overlay animations | 2025-12-08 16:32 |
| 00744 | feat: tint partial transcripts and stabilize delays | 2025-12-08 16:41 |
| 00745 | feat: show partial transcripts with subdued tint | 2025-12-08 16:44 |
| 00746 | fix: animate overlay resizing on updates | 2025-12-08 16:44 |
| 00747 | chore: remove overlay shadow/border | 2025-12-08 16:45 |
| 00748 | feat: add outcome-based dismiss animations | 2025-12-08 16:49 |
| 00752 | chore: use 2s silence or 5s max capture | 2025-12-08 16:55 |
| 00753 | chore: extend voice capture hard stop to 120s | 2025-12-08 16:58 |
| 00755 | chore: use 5s silence before speech, 2s after | 2025-12-08 17:06 |
| 00758 | Webchat: poll session for messages/thinking | 2025-12-08 16:14 |
| 00759 | fix: resize overlay on text updates and keep final tint | 2025-12-08 17:07 |
| 00763 | Webchat: push updates over WebSocket | 2025-12-08 16:19 |
| 00765 | feat(mac): add push-to-talk hotkey | 2025-12-08 17:23 |
| 00767 | fix(mac): surface webchat load failures and preflight reachability | 2025-12-08 17:24 |
| 00768 | fix: polish voice overlay and webchat lint | 2025-12-08 17:32 |
| 00770 | fix: keep overlay attributed colors and auto-resize | 2025-12-08 18:28 |
| 00771 | tweak: allow overlay to grow to 400px then scroll | 2025-12-08 18:33 |
| 00773 | fix: hide overlay scrollbar unless content overflows | 2025-12-08 18:50 |
| 00774 | tweak: centralize overlay max/min heights | 2025-12-08 18:52 |
| 00775 | tweak: strengthen partial transcript tint | 2025-12-08 18:54 |
| 00777 | ux: show vibrant label until edit, then switch to text view | 2025-12-08 19:11 |
| 00778 | ux: brighten display label and wrap properly | 2025-12-08 19:15 |
| 00779 | ui: drop translucency for overlay background | 2025-12-08 19:20 |
| 00780 | ux: keep vibrancy, brighten label, ensure wrapping | 2025-12-08 19:36 |
| 00781 | ux: wrap label to overlay width, remove label background | 2025-12-08 19:43 |
| 00782 | ux: use primary text color in display label | 2025-12-08 19:57 |
| 00783 | ui: strip label color attributes so text uses primary color | 2025-12-08 20:00 |
| 00784 | ux: top-align overlay content | 2025-12-08 20:10 |
| 00785 | VoiceWake: keep empty trigger rows | 2025-12-08 20:13 |
| 00787 | RPC: stream heartbeat events to menu | 2025-12-08 20:18 |
| 00788 | VoiceWake: sanitize triggers only when applying | 2025-12-08 20:20 |
| 00789 | ux: keep window in edit, add escape to cancel; fix lint drift | 2025-12-08 20:22 |
| 00790 | VoiceWake: add chimes for trigger and send | 2025-12-08 20:45 |
| 00791 | VoiceWake: streamline chimes, default to Glass | 2025-12-08 20:50 |
| 00792 | VoiceWake: skip send chime when nothing to send | 2025-12-08 20:57 |
| 00793 | ux: add hover/ edit close button and keep overlay until escape or send | 2025-12-08 21:22 |
| 00799 | ux: float close button outside bubble and reduce hover flicker | 2025-12-08 21:59 |
| 00802 | macos: control channel diagnostics and tunnel-based testing | 2025-12-08 22:04 |
| 00803 | ux: float close button outside bubble, stronger shadow | 2025-12-08 22:11 |
| 00805 | macos: polish voice overlay and remote command handling | 2025-12-08 22:23 |
| 00807 | VoiceWake: add level meter | 2025-12-08 22:28 |
| 00809 | macos: blink critter when overlay dismisses empty | 2025-12-08 22:34 |
| 00811 | VoiceWake: button meter + fix label color | 2025-12-08 22:36 |
| 00812 | macos: stabilize close hover and unclipped button | 2025-12-08 22:38 |
| 00813 | macos: restore overlay close button | 2025-12-08 21:40 |
| 00814 | Remove overlay bar meter | 2025-12-08 22:43 |
| 00815 | macos: deepen shadow on close pill | 2025-12-08 22:45 |
| 00816 | macos: add soft shadow behind overlay bubble | 2025-12-08 22:51 |
| 00819 | macos: add inset margin so overlay shadow isn't clipped | 2025-12-08 22:56 |
| 00820 | macos: swap bubble shadow for 1px border | 2025-12-08 23:14 |
| 00827 | fix(mac): switch push-to-talk to right option | 2025-12-08 23:50 |
| 00829 | fix(mac): stabilize voice wake visuals | 2025-12-09 00:12 |
| 00831 | macos: show detailed health failure | 2025-12-08 23:20 |
| 00839 | feat(mac): add agent events debug window | 2025-12-09 00:56 |
| 00844 | macos: log health timeout and control requests | 2025-12-09 00:00 |
| 00850 | control: log incoming health requests | 2025-12-09 00:38 |
| 00851 | feat(macos): surface session activity in menu bar | 2025-12-09 01:28 |
| 00856 | Voice wake: send or dismiss on release | 2025-12-09 02:25 |
| 00859 | style(macos): remove quit separator and resize settings | 2025-12-09 02:28 |
| 00860 | fix merge; add control logging | 2025-12-09 01:45 |
| 00862 | fix(voicewake): snap overlay to top-right | 2025-12-09 03:18 |
| 00863 | Voice wake: log overlay lifecycle and enforce PTT cooldown | 2025-12-09 03:20 |
| 00866 | macOS: broaden chime sound catalog | 2025-12-09 03:27 |
| 00867 | macOS: include mail sounds in chime picker | 2025-12-09 03:28 |
| 00871 | macOS: log control responses | 2025-12-09 02:41 |
| 00873 | VoiceWake: autoplay chime on selection | 2025-12-09 03:39 |
| 00874 | Health: clean degraded message; PTT hotkey monitors | 2025-12-09 03:46 |
| 00879 | PTT: wait for final transcript before send/dismiss | 2025-12-09 03:56 |
| 00881 | feat(status): enrich session details | 2025-12-09 03:00 |
| 00884 | Overlay: safety dismiss and logging; keep PTT final send | 2025-12-09 04:04 |
| 00887 | fix(presence): always seed self entry and log counts | 2025-12-09 03:21 |
| 00888 | chore(instances): log empty payloads and add local fallback | 2025-12-09 04:29 |
| 00893 | Overlay: log token drops and immediate auto-send | 2025-12-09 04:47 |
| 00896 | fix(mac): make rpc parsing tolerate stray stdout | 2025-12-09 05:01 |
| 00897 | Overlay: block new sessions while sending; delay runtime restart | 2025-12-09 05:02 |
| 00898 | Runtime: delay restart inside actor; log RPC unexpected payload | 2025-12-09 05:02 |
| 00901 | RPC: route logs to stderr to keep stdout JSON clean | 2025-12-09 04:30 |
| 00920 | Debug: rename restart button to Gateway | 2025-12-09 16:16 |
| 00921 | CLI: add gateway verbose flag | 2025-12-09 17:17 |
| 00925 | Status: color provider lines | 2025-12-09 16:31 |
| 00926 | Gateway: honor verbose for Baileys and show log path | 2025-12-09 16:33 |
| 00929 | UI: unify refresh buttons | 2025-12-09 17:54 |
| 00930 | Menu: add debug submenu actions | 2025-12-09 17:57 |
| 00931 | Mac: surface gateway errors in remote test | 2025-12-09 18:01 |
| 00932 | macOS: add settings previews | 2025-12-09 18:04 |
| 00935 | web: show surface + host/ip chips in chat UI | 2025-12-09 17:23 |
| 00940 | web: log disconnect error detail in reconnect loop | 2025-12-09 17:38 |
| 00942 | settings: clarify pause toggles gateway messaging | 2025-12-09 17:40 |
| 00943 | mac: simplify degraded labels | 2025-12-09 17:45 |
| 00951 | mac: show local gateway path when overridden | 2025-12-09 18:46 |
| 00952 | fix(ptt): dismiss empty overlay immediately on key up | 2025-12-09 19:48 |
| 00955 | feat(mac): reuse running gateway | 2025-12-09 19:00 |
| 00960 | gateway: log provider errors verbosely | 2025-12-09 19:10 |
| 00963 | chore(mac): add divider before session toggles | 2025-12-09 19:14 |
| 00966 | gateway: improve conflict handling and logging | 2025-12-09 20:07 |
| 00967 | Menu: add more debug utilities | 2025-12-09 21:06 |
| 00971 | Menu: add icons to debug submenu | 2025-12-09 21:24 |
| 00974 | mac: left-click webchat panel | 2025-12-09 21:29 |
| 00975 | Debug menu: session controls and thinking/verbose | 2025-12-09 21:32 |
| 00978 | chore(gateway): color ws direction logs | 2025-12-09 20:36 |
| 00979 | Debug menu: add sessions icon and separator | 2025-12-09 21:40 |
| 00980 | mac: panel highlight when webchat open | 2025-12-09 21:41 |
| 00982 | mac icon: render 36px retina backing | 2025-12-09 21:56 |
| 00983 | mac: disable status rows in menu | 2025-12-09 21:59 |
| 00984 | mac: make status rows disabled menu items | 2025-12-09 22:02 |
| 00988 | fix(mac): snap critter drawing to pixels | 2025-12-09 22:08 |
| 00990 | chore(webchat): log url on gateway start | 2025-12-09 21:10 |
| 00993 | mac/webchat: remove panel padding | 2025-12-09 21:13 |
| 00995 | feat(webchat): sync theme with system | 2025-12-09 21:22 |
| 00997 | chore(mac): add separator before general toggles | 2025-12-09 21:28 |
| 00998 | mac: clear highlight on panel close | 2025-12-09 22:40 |

## Narrative

### Phase 1: macOS App Settings and Relay Status (Commits 502-550)

The macOS companion app, introduced in the previous 500 commits, received extensive UX attention in this range. Commits 00502-00504 fixed web chat WKWebView boot issues, notification permission handling, and streamlined the model config UI by removing manual context token entry. Commit 00506 unified direct chat sessions and added visual cues (isWorking, earBoostActive) to the menu bar icon. Commits 00508 and 00511-00514 built out a Tools tab with card-based installers, reorganized settings tabs into a logical order (General, Tools, Sessions, Config, Voice Wake, Permissions, Debug, About), and added a colored relay status indicator dot to the menu bar.

Commits 00520-00521 made the relay project root configurable from the Debug tab and added attention badges for non-running relay states. Commits 00531 and 00534 displayed build metadata (timestamp, git commit) in the About tab with hover animations. Commits 00537-00539 cleaned up tool card styling and added privileged CLI helper installation via osascript. Commits 00540-00542 added --help and --version flags to the CLI helper. Commit 00544 repositioned the relay status row for better visual association, and 00547 fixed the settings tab bar to remain fixed while content scrolls. Commit 00548 added an SSH connectivity check button to voice wake settings, and 00550 replaced SMAppService with a LaunchAgentManager for more controllable launch-at-login behavior.

### Phase 2: Voice Wake UX and Logging Infrastructure (Commits 553-600)

Commits 00553-00561 polished the voice wake settings UI: better SSH error detail, scrollable tab content, permission gating for microphone and speech recognition, compact SSH test rows, aligned mic level meters, and stabilized test card heights. Commits 00556-00558 introduced verbosity logging for voice wake detection events and added the clawlog.sh helper script for accessing macOS unified logs with full privacy data.

Commit 00567 added webchat auto-open flags and verbose logging for window visibility events. Commits 00571 and 00573-00576 enhanced SSH connectivity checks to verify remote CLI presence, stabilized tools action column widths, linked the Debug log button to pino relay logs with fallback paths, and showed the log file path in the UI. Commits 00578, 00580, and 00582-00583 detected CLI helper installation status, added an icon animation toggle, and provided relay restart and provider selection capabilities. Commit 00586 introduced the live voice wake listener with ear animation on detection. Commit 00588 added error logging for SSH/CLI failures in voice wake that were previously silent. Commits 00599-00600 added heartbeat configuration controls with inline stepper and text field layout.

### Phase 3: Health Monitoring and Settings Refinement (Commits 602-650)

Commits 00602-00603 moved session store configuration to the Debug tab and introduced health monitoring UI with color-coded status (green/orange/red) and a 60-second polling interval. Commit 00609 streamlined relay status labels. Commits 00615, 00620-00621, and 00623-00627 polished settings across multiple tabs: fixed reveal-logs alerts, removed focus rings, made debug settings scrollable, cleaned up CLI helper subtext, aligned microphone and recognition language controls, simplified health status messaging, and widened voice wake label spacing. Commits 00629, 00632, 00636, and 00639 added voice forward test buttons to Debug settings with detailed error surfacing. Commits 00638, 00640-00641, and 00643 enlarged the About icon, surfaced raw RPC error lines, hid helper subtext during sends, and added bottom padding to the quit button. Commits 00645, 00647-00648 surfaced SSH authentication failures and missing identity file errors in voice wake.

### Phase 4: WebChat Debugging and Voice Wake Logging (Commits 654-700)

Commits 00654-00658 expanded verbosity logging significantly: full SSH command debug logging for voice wake, webchat server lifecycle logging, and progressive increases in webchat server logging verbosity to diagnose ES module loading failures. Commit 00660 included the SSH command in voice wake error log output. Commits 00666-00668 simplified the embedded webchat UI by hiding the model selector and bypassing API key prompts, then split voice wake settings into separate sections. Commit 00671 merged duplicate status rows, and 00672 added a remote/local connection mode toggle. Commits 00675-00676 showed health check age in the menu bar and surfaced stderr from web chat agent subprocesses. Commits 00678-00684 and 00694 iteratively adjusted the onboarding window layout: tighter hero spacing, increased content height, compact remote setup cards, enlarged window to fit permission lists, surfaced helper install status, and bumped the final height to 840px. Commit 00688 included stderr in health failure messages. Commits 00695-00703 aligned voice wake forwarding with remote mode, made the General tab scrollable, reused compact remote cards, folded mode labels into pickers, moved detailed health info to Debug while keeping a summary in General, tidied tables, and shortened labels.

### Phase 5: Menu Polish and Voice Wake Overlay (Commits 705-800)

Commits 00705-00711 refined menu bar copy: shortened Tailscale tips, moved the Active toggle to the top, removed duplicate health rows, capitalized menu labels, and made toggle labels context-aware for remote mode. Commits 00717, 00721, and 00724 improved webchat error surfacing and onboarding polish for remote tunneling. Commit 00729 added microphone selection to voice wake settings and menu bar.

Commits 00739 and 00744-00748 built out the voice wake overlay experience: refined animations, tinted partial transcripts with subdued colors, animated overlay resizing, removed shadow/border for cleaner appearance, and added outcome-based dismiss animations (sent/cancelled/error). Commits 00752-00755 tuned voice capture timing with two-tier silence windows (5s before speech, 2s after). Commits 00758 and 00763 added webchat session polling and WebSocket push updates. Commit 00765 implemented the Cmd+Fn push-to-talk hotkey with overlay integration. Commits 00767-00768 surfaced webchat load failures and polished the voice overlay.

Commits 00770-00784 represent an intensive overlay visual polish cycle: preserving attributed text colors with auto-resize, allowing growth to 400px before scrolling, hiding scrollbars unless needed, centralizing height constants, strengthening partial transcript tint contrast, switching between vibrant label and editable text view, adjusting brightness and wrapping, toggling between translucent and opaque backgrounds, restoring vibrancy, removing label backgrounds, using primary text color, stripping color attributes, and top-aligning content. Commits 00785, 00788-00789 kept empty trigger rows for usability, sanitized triggers only when applying, and added Escape key support for cancelling edits.

Commits 00787, 00790-00793 streamed heartbeat events to the menu, added audio chimes for voice wake trigger and send events (defaulting to Glass), skipped chimes for empty sends, and added hover/edit close buttons that keep the overlay open until escape or send. Commit 00799 floated the close button outside the bubble to reduce flicker.

### Phase 6: Control Channel Diagnostics and Agent Events (Commits 802-900)

Commit 00802 added control channel connection state tracking (disconnected/connecting/connected/degraded) with ping latency display in settings. Commits 00803, 00805, 00807, 00809, and 00811-00816 continued overlay polish: stronger shadows, level meter visualization, critter blink on empty dismiss, button meters in settings, stabilized hover behavior, shadow/border iterations. Commits 00819-00820 added inset margins for shadow visibility and ultimately settled on a 1px border.

Commit 00827 switched push-to-talk to the right option key for better ergonomics. Commits 00829 and 00831 stabilized voice wake visuals and showed detailed health failure messages. Commit 00839 added an agent events debug window for real-time monitoring. Commits 00844, 00850, 00860, and 00871 expanded logging for health timeouts, control requests, control responses, and their durations.

Commit 00851 surfaced real-time session activity in the menu bar with tool-specific glyphs and colored badges. Commit 00856 changed push-to-talk to send or dismiss immediately on key release. Commit 00859 removed quit separator for cleaner menu structure. Commits 00862-00863 snapped the overlay to top-right positioning and logged overlay lifecycle events with PTT cooldown enforcement. Commits 00866-00867 and 00873 broadened the chime sound catalog to include all system sounds and Mail app sounds, with autoplay preview on selection. Commits 00874, 00879, 00881 cleaned up degraded health messages, increased PTT finalize timeout to 1.5s, and enriched status session details.

Commits 00884, 00887-00888, 00893, and 00896-00898 added safety dismiss logging, presence entry count logging, empty payload logging with local fallbacks, overlay token drop logging, tolerant RPC parsing for stray stdout, overlay send blocking, and unexpected RPC payload logging. Commit 00901 routed all RPC logs to stderr to keep stdout clean for JSON.

### Phase 7: Gateway Transition and Final Polish (Commits 920-1000)

Commit 00920 renamed the Debug restart button to "Restart Gateway". Commit 00921 added --verbose flag to the gateway command enabling trace-level logging. Commit 00925 color-coded provider status lines. Commit 00926 passed verbose to Baileys and displayed the log file path on startup. Commits 00929-00932 unified refresh buttons, added debug submenu actions, surfaced gateway errors in remote tests, and added settings preview providers. Commit 00935 showed surface/host/IP chips in webchat UI. Commit 00940 logged disconnect error details in the reconnect loop. Commits 00942-00943 clarified pause toggle behavior and simplified degraded labels.

Commits 00951-00952 showed local gateway path overrides and fixed PTT empty overlay dismissal. Commit 00955 added gateway reuse with attached-existing status display. Commits 00960 and 00966 added verbose provider error logging with formatError helper and improved gateway lock conflict messages. Commits 00963, 00967, 00971, and 00974-00975 added menu dividers, debug utilities, submenu icons, left-click webchat panel toggle, and session/thinking/verbose controls. Commit 00978 color-coded WebSocket direction logs. Commits 00979-00984 added debug menu separators, panel highlight on webchat open, retina icon rendering at 36px, and converted status rows to disabled menu items. Commits 00988, 00990, and 00993 snapped critter drawing to pixels, logged webchat URL on gateway start, and removed webchat panel padding. Commits 00995, 00997-00998 synced webchat theme with system appearance, added menu separators, and cleared icon highlight on panel close.

## Cross-references

- [macos](macos.md) -- the vast majority of UX commits in this range (502-1000) are macOS companion app work
- [voice-wake](voice-wake.md) -- voice wake overlay, push-to-talk, chimes, and forwarding UX in commits 548, 553-561, 586, 654-660, 729, 738-800, 806-820, 856-897
- [gateway](gateway.md) -- gateway verbose logging and conflict UX in commits 921, 926, 940, 947, 960, 966, 978, 990
- [auto-reply](auto-reply.md) -- verbosity in tool event streaming and agent events in commits 847-848, 851, 857
- [web-provider](web-provider.md) -- webchat server logging and UI refinements in commits 655-658, 666-667, 721, 758, 763, 935, 995
- [process-lifecycle](process-lifecycle.md) -- control channel diagnostics and health monitoring in commits 802, 844, 850, 860, 871
