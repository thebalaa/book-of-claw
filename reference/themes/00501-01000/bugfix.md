# Theme: Bugfix

Bug fixing in the 501-1000 range reflects the project's rapid expansion into macOS native territory. Early fixes (502-536) targeted WKWebView boot failures, notification permission crashes, and relay executable resolution across diverse macOS environments. The voice wake system generated a sustained wave of fixes (556-670) addressing SSH forwarding reliability, speech recognizer crashes, PATH construction, and transcript delivery mechanisms. The control channel and gateway migration (761-968) produced fixes for tunnel stability, RPC parsing tolerance, concurrent process management, and frame decoding safety. Throughout, fixes progressively hardened the system against real-world deployment conditions including missing binaries, stale sessions, race conditions, and network timeouts.

## Commits

| # | Subject | Date |
|---|---------|------|
| 00502 | mac: fix web chat boot in WKWebView | 2025-12-06 21:33 |
| 00503 | mac: fix notification prompt and center onboarding toggle | 2025-12-06 21:38 |
| 00510 | fix(macos): avoid voice tester crash | 2025-12-06 23:39 |
| 00515 | fix(mac): harden relay spawn path and show status | 2025-12-06 23:45 |
| 00518 | fix(mac): resolve relay executable via common paths and pnpm fallback | 2025-12-06 23:48 |
| 00519 | fix(mac): run pnpm from project root and set PNPM_HOME for relay | 2025-12-06 23:49 |
| 00523 | fix(mac): run relay with cwd set to configured project root | 2025-12-06 23:57 |
| 00525 | fix: remove legacy relay references | 2025-12-07 00:05 |
| 00532 | Mac: fix permission prompt crash | 2025-12-06 23:31 |
| 00536 | Mac: fix voice wake actor crash; add mic entitlement | 2025-12-07 00:10 |
| 00542 | CLI: fix --version by reading app Info.plist | 2025-12-07 00:59 |
| 00552 | scripts: make restart clean step resilient | 2025-12-07 02:04 |
| 00553 | VoiceWake: better ssh target parsing and error detail | 2025-12-07 02:11 |
| 00556 | fix: gate voice wake permissions | 2025-12-07 02:19 |
| 00563 | Mac: stabilize XPC and voice wake handling | 2025-12-07 02:09 |
| 00569 | fix(mac): bundle WebChat resources when packaging | 2025-12-07 03:36 |
| 00570 | Mac: allow signed CLI + same-uid XPC clients | 2025-12-07 02:48 |
| 00572 | fix: ensure remote clawdis-mac path | 2025-12-07 04:12 |
| 00575 | Mac: debug log button falls back to legacy path | 2025-12-07 03:20 |
| 00584 | fix: harden remote voice wake CLI lookup | 2025-12-07 04:43 |
| 00588 | fix(voicewake): log ssh/cli failure instead of staying silent | 2025-12-07 04:58 |
| 00590 | Mac: fix agent XPC by invoking CLI agent | 2025-12-07 04:03 |
| 00591 | fix(webchat): wire agent CLI send into web chat view | 2025-12-07 05:04 |
| 00597 | fix(macos): guard unavailable speech recognizer | 2025-12-07 05:22 |
| 00598 | chore(agent): start rpc worker at launch, fail if not running | 2025-12-07 05:24 |
| 00605 | fix: reuse resolver for agent rpc launch | 2025-12-07 05:34 |
| 00614 | fix: raise voice wake forward timeout to 30s | 2025-12-07 05:46 |
| 00615 | fix(health): reveal logs alerts when missing; align actions | 2025-12-07 05:46 |
| 00616 | fix: keep launch agent alive and inject PATH | 2025-12-07 05:49 |
| 00617 | fix: auto-start rpc worker for agent calls | 2025-12-07 05:54 |
| 00622 | fix(macos): resolve clawdis path for health check | 2025-12-07 14:49 |
| 00630 | fix(macos): handle missing clawdis CLI for health check | 2025-12-07 15:03 |
| 00631 | fix(macos): honor pnpm/node when locating clawdis for health | 2025-12-07 15:07 |
| 00634 | agent: allow deliver when json output | 2025-12-07 15:16 |
| 00640 | rpc: surface raw error lines and auto-start worker | 2025-12-07 15:46 |
| 00642 | fix(mac): keep pnpm health output json-safe | 2025-12-07 15:09 |
| 00644 | fix(macos): load web chat from bundled html | 2025-12-07 16:10 |
| 00645 | voice wake: surface ssh failures (missing key/no output) | 2025-12-07 16:13 |
| 00646 | chore(macos): allow file access for web chat modules | 2025-12-07 16:14 |
| 00648 | voice wake: show identity not found when configured | 2025-12-07 16:18 |
| 00649 | voice wake: keep default key when identity is blank | 2025-12-07 16:23 |
| 00652 | voice wake: use clean PATH (no inherited junk) | 2025-12-07 16:33 |
| 00655 | chore(webchat): wait for local server and add debug logging | 2025-12-07 16:39 |
| 00659 | VoiceWake: pipe transcript to ssh forwarder | 2025-12-07 16:59 |
| 00664 | macOS: fix health shell timeout race | 2025-12-07 16:48 |
| 00670 | VoiceWake: remove python hop; use escaped literal under /bin/sh | 2025-12-07 18:03 |
| 00671 | macOS: merge status row and fix webchat bundle deps | 2025-12-07 17:20 |
| 00674 | VoiceWake: document escape path and reset stale forward command | 2025-12-07 18:23 |
| 00676 | macOS: fix web chat agent PATH and surface stderr | 2025-12-07 17:31 |
| 00683 | build: add local node bin to restart script PATH | 2025-12-07 18:49 |
| 00687 | MenuBar: fix health label age string | 2025-12-07 19:03 |
| 00697 | fix: remote test uses CLI path discovery again | 2025-12-07 23:12 |
| 00704 | fix: stop voice wake tester after short post-trigger silence | 2025-12-07 23:43 |
| 00707 | ui: remove duplicate health row in General | 2025-12-08 00:17 |
| 00718 | build: silence grammy type errors for mac packaging | 2025-12-08 11:04 |
| 00730 | Webchat: resolve static root in packaged app | 2025-12-08 14:07 |
| 00734 | Webchat: inline attachments to agent RPC and fix status compile | 2025-12-08 14:46 |
| 00741 | fix: trim overlay transcript to post-trigger | 2025-12-08 16:35 |
| 00743 | fix: delay logic waits for post-trigger content | 2025-12-08 16:38 |
| 00746 | fix: animate overlay resizing on updates | 2025-12-08 16:44 |
| 00749 | fix(mac): surface health errors instead of pending | 2025-12-08 16:50 |
| 00750 | fix: finalize only after full 1s silence | 2025-12-08 16:52 |
| 00751 | fix(mac): run remote health with pnpm under zsh | 2025-12-08 16:52 |
| 00759 | fix: resize overlay on text updates and keep final tint | 2025-12-08 17:07 |
| 00761 | fix(mac): harden remote webchat tunnel and keep it alive | 2025-12-08 17:10 |
| 00762 | fix: restart webchat tunnel on main actor | 2025-12-08 17:12 |
| 00767 | fix(mac): surface webchat load failures and preflight reachability | 2025-12-08 17:24 |
| 00768 | fix: polish voice overlay and webchat lint | 2025-12-08 17:32 |
| 00770 | fix: keep overlay attributed colors and auto-resize | 2025-12-08 18:28 |
| 00773 | fix: hide overlay scrollbar unless content overflows | 2025-12-08 18:50 |
| 00783 | ui: strip label color attributes so text uses primary color | 2025-12-08 20:00 |
| 00785 | VoiceWake: keep empty trigger rows | 2025-12-08 20:13 |
| 00786 | HeartbeatStore: fix main-actor cleanup | 2025-12-08 20:17 |
| 00789 | ux: keep window in edit, add escape to cancel; fix lint drift | 2025-12-08 20:22 |
| 00792 | VoiceWake: skip send chime when nothing to send | 2025-12-08 20:57 |
| 00794 | VoiceWake: centralize send chime and guard play | 2025-12-08 21:25 |
| 00799 | ux: float close button outside bubble and reduce hover flicker | 2025-12-08 21:59 |
| 00800 | fix: avoid auto-send task init error | 2025-12-08 22:02 |
| 00804 | macos: harden control channel connect continuation | 2025-12-08 22:16 |
| 00808 | macos: sync ears with overlay visibility | 2025-12-08 22:31 |
| 00817 | VoiceWake: guard trigger chime | 2025-12-08 22:52 |
| 00818 | macos: fail fast when SSH tunnel exits | 2025-12-08 22:53 |
| 00824 | macos: keep remote control tunnel alive | 2025-12-08 23:28 |
| 00826 | macos: timeout control health probes | 2025-12-08 22:45 |
| 00827 | fix(mac): switch push-to-talk to right option | 2025-12-08 23:50 |
| 00829 | fix(mac): stabilize voice wake visuals | 2025-12-09 00:12 |
| 00837 | relay: don't crash when webchat port is busy | 2025-12-08 23:49 |
| 00847 | fix: always emit tool events | 2025-12-09 01:22 |
| 00849 | control: reconnect on EOF and relax rpc text parse | 2025-12-09 00:29 |
| 00854 | fix: stop partial replies for whatsapp/telegram surfaces | 2025-12-09 01:40 |
| 00855 | fix: block partial replies on external chat surfaces | 2025-12-09 01:48 |
| 00860 | fix merge; add control logging | 2025-12-09 01:45 |
| 00861 | Voice wake: drop stale recognition callbacks | 2025-12-09 02:57 |
| 00862 | fix(voicewake): snap overlay to top-right | 2025-12-09 03:18 |
| 00863 | Voice wake: log overlay lifecycle and enforce PTT cooldown | 2025-12-09 03:20 |
| 00868 | Build: fix RPC sendable params and CLI imports | 2025-12-09 03:33 |
| 00870 | RPC: fix presence imports | 2025-12-09 02:39 |
| 00874 | Health: clean degraded message; PTT hotkey monitors | 2025-12-09 03:46 |
| 00875 | mac: stop leaking ssh processes on quit | 2025-12-09 02:50 |
| 00879 | PTT: wait for final transcript before send/dismiss | 2025-12-09 03:56 |
| 00880 | WebChat: make tunnel restart handler hop to MainActor | 2025-12-09 03:58 |
| 00882 | rpc: ensure worker is killed if it hangs on shutdown | 2025-12-09 03:04 |
| 00884 | Overlay: safety dismiss and logging; keep PTT final send | 2025-12-09 04:04 |
| 00886 | Relay: enforce single instance lock | 2025-12-09 03:17 |
| 00887 | fix(presence): always seed self entry and log counts | 2025-12-09 03:21 |
| 00888 | chore(instances): log empty payloads and add local fallback | 2025-12-09 04:29 |
| 00889 | fix(rpc): keep stdout json-only | 2025-12-09 04:34 |
| 00893 | Overlay: log token drops and immediate auto-send | 2025-12-09 04:47 |
| 00894 | Presence: resilient local fallback | 2025-12-09 04:48 |
| 00896 | fix(mac): make rpc parsing tolerate stray stdout | 2025-12-09 05:01 |
| 00897 | Overlay: block new sessions while sending; delay runtime restart | 2025-12-09 05:02 |
| 00898 | Runtime: delay restart inside actor; log RPC unexpected payload | 2025-12-09 05:02 |
| 00903 | WebChat: fix packaged root resolution | 2025-12-09 04:36 |
| 00931 | Mac: surface gateway errors in remote test | 2025-12-09 18:01 |
| 00936 | msg: retry web/telegram sends and add regression tests | 2025-12-09 17:23 |
| 00938 | fix(mac): avoid crash decoding gateway frames | 2025-12-09 17:36 |
| 00940 | web: log disconnect error detail in reconnect loop | 2025-12-09 17:38 |
| 00946 | fix(ptt): ignore stale recognition callbacks | 2025-12-09 19:17 |
| 00947 | fix: improve app restart and gateway logs | 2025-12-09 18:36 |
| 00950 | fix(mac): restore gateway clear log | 2025-12-09 18:44 |
| 00952 | fix(ptt): dismiss empty overlay immediately on key up | 2025-12-09 19:48 |
| 00953 | fix(overlay): dismiss on token mismatch; keep gateway log clear helper | 2025-12-09 19:50 |
| 00956 | mac: fix actor call and label warnings | 2025-12-09 19:00 |
| 00957 | mac: fix local path string | 2025-12-09 19:00 |
| 00959 | gateway: enforce hello order and modern json | 2025-12-09 19:09 |
| 00961 | fix(mac): encode gateway params with protocol AnyCodable | 2025-12-09 19:10 |
| 00964 | fix: enforce gateway single instance | 2025-12-09 19:40 |
| 00968 | fix(mac): harden gateway lock and ip decoding | 2025-12-09 20:12 |
| 00981 | mac: harden webchat panel | 2025-12-09 21:43 |
| 00987 | fix(mac): keep ptt overlay until release | 2025-12-09 22:06 |
| 00988 | fix(mac): snap critter drawing to pixels | 2025-12-09 22:08 |
| 00989 | fix(mac): disable smoothing and await watchdog | 2025-12-09 22:09 |
| 00991 | mac: respect webchat disabled for left click | 2025-12-09 22:11 |
| 00992 | fix: relaunch app after debug restart | 2025-12-09 22:13 |
| 00998 | mac: clear highlight on panel close | 2025-12-09 22:40 |
| 00999 | fix(mac): keep webchat panel alive | 2025-12-09 21:42 |
| 01000 | fix: prevent stuck mac health checks | 2025-12-09 21:52 |

## Narrative

The bugfix theme in commits 501-1000 is dominated by the challenges of building a production-quality macOS native app alongside an evolving Node.js backend. The earliest fixes (502-503) addressed WKWebView module loading by adding trailing slash aliases for import maps and fixing notification permission state checks that caused crashes.

Relay process management produced a dense cluster of fixes (515-523). The macOS app needed to locate the clawdis binary across diverse installation paths including Homebrew, pnpm global, and project-local node_modules. Commits 515, 518, and 519 progressively hardened executable resolution with fallback chains, PATH injection, and proper working directory configuration. Commit 523 ensured the relay ran from the configured project root rather than inheriting the app's own working directory.

Voice wake functionality generated the largest sustained bugfix effort across commits 556-670. Commit 556 added permission gating for microphone and speech recognition. Commit 563 fixed XPC connection reliability with retry logic and duplicate instance detection. SSH-based transcript forwarding proved particularly fragile: commit 572 switched from `which` to explicit path checking for non-interactive SSH sessions, commit 584 added multi-path detection for the remote CLI, commit 597 guarded against unavailable speech recognizers, and commit 659 moved transcript delivery from stdin piping to environment variables. Commit 670 finally settled on shell-escaped single-quoted literals, eliminating both Python and stdin complexity.

Health check reliability required extensive fixes. Commits 622 and 630-631 addressed PATH resolution for the clawdis binary when invoked from the macOS app sandbox. Commit 642 prevented stderr contamination of JSON health output. Commit 664 fixed a timeout race condition, and commit 749 ensured actual errors surfaced instead of leaving the UI in a permanent pending state.

The voice overlay system (741-800) needed fixes for transcript trimming, resize animations, scrollbar behavior, color attribute handling, and auto-send task lifecycle. Commit 750 required a full 1-second silence before finalizing utterances to prevent premature cutoff.

The control channel and gateway migration (804-968) introduced a new category of connection reliability fixes. Commit 804 protected against multiple continuation resumptions. Commits 818 and 824 addressed SSH tunnel monitoring and keepalive. Commit 837 prevented crashes when the webchat port was busy. Commits 847 and 854-855 fixed event emission and partial reply suppression for external messaging surfaces. The RPC layer needed hardening for stray stdout (889, 896), EOF reconnection (849), and frame decoding safety (938). Process lifecycle fixes included single-instance locking (886, 964), worker kill timeouts (882), and SSH process cleanup on quit (875).

Late-stage fixes (987-1000) addressed push-to-talk overlay timing, pixel-perfect icon rendering, webchat panel lifecycle management, and health check timeout prevention.

## Cross-references

- [core-feature](core-feature.md) -- many bugfixes immediately followed new feature commits
- [refactor](refactor.md) -- structural refactors frequently caused regressions requiring fixes
- [testing](../00001-00500/testing.md) -- test isolation fixes in the previous range established patterns continued here
