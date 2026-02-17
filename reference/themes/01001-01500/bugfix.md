# Theme: Bugfix

Bugfix work in commits 1001-1500 addressed stability and correctness issues across the rapidly expanding multi-platform agent system. Fixes clustered around gateway connectivity and protocol handling (1003-1097), macOS UI panel behavior and menu layout (1009-1046), voice wake and push-to-talk state management (1049-1158), webchat rendering and WebSocket reconnection (1013-1090), agent RPC prompt handling and auto-reply edge cases (1055-1075), Canvas panel layering and file watching (1134-1163), context bar rendering (1173-1187), iOS actor isolation and audio tap issues (1177-1178), Bonjour discovery normalization (1155-1246), browser control CDP fixes (1270-1298), and cross-platform camera capture pipeline hardening (1458-1490). The density of bugfixes reflects the pace of feature development, with most fixes landing within hours of the features they corrected.

## Commits

| # | Subject | Date |
|---|---------|------|
| 01003 | fix(macos): harden presence decode | 2025-12-09 22:08 |
| 01009 | mac: ensure panel toggle doesn't reopen | 2025-12-09 23:32 |
| 01013 | fix(webchat): load root path | 2025-12-09 23:40 |
| 01015 | fix(mac): keep overlay on token mismatch | 2025-12-10 00:47 |
| 01017 | fix(webchat): serve root assets correctly | 2025-12-09 23:50 |
| 01019 | fix: keep tools list stable | 2025-12-10 00:02 |
| 01025 | mac: treat pnpm/bun processes as expected gateways | 2025-12-10 01:10 |
| 01026 | fix: expand gateway attach log | 2025-12-10 00:19 |
| 01029 | mac: silence proc_pidpath warning | 2025-12-10 01:43 |
| 01031 | mac: avoid spawning local gateway in remote mode | 2025-12-10 01:44 |
| 01034 | fix: stabilize health probe and gateway handshake | 2025-12-10 00:52 |
| 01049 | fix(voice): unify overlay send flow | 2025-12-10 02:52 |
| 01055 | fix: persist usage from rpc | 2025-12-10 01:37 |
| 01059 | RPC: auto-cancel hook UI prompts | 2025-12-10 11:46 |
| 01061 | gateway: dedupe system-event presence | 2025-12-10 11:48 |
| 01062 | Auto-reply: reject empty inbound messages | 2025-12-10 13:51 |
| 01063 | fix(pi): skip -p when running rpc | 2025-12-10 14:21 |
| 01064 | fix(auto-reply): guard empty rpc prompt | 2025-12-10 14:26 |
| 01065 | mac: surface gateway auth failures | 2025-12-10 14:32 |
| 01066 | telegram: fix verbose log ordering | 2025-12-10 14:33 |
| 01067 | fix(auto-reply): fall back to json when rpc prompt empty | 2025-12-10 14:58 |
| 01070 | fix(agent): send structured prompt to tau rpc | 2025-12-10 15:52 |
| 01071 | fix(auto-reply): acknowledge reset triggers | 2025-12-10 15:55 |
| 01075 | fix(session): ignore agent meta session id | 2025-12-10 16:38 |
| 01078 | chore(gateway): log pre-hello ws closures | 2025-12-10 16:58 |
| 01084 | web: default to self-only without config | 2025-12-12 00:50 |
| 01086 | fix(mac): serialize gateway connect | 2025-12-12 14:12 |
| 01087 | fix(mac): webchat ws connect | 2025-12-12 14:18 |
| 01089 | fix(mac): keep webchat boot dots | 2025-12-12 15:01 |
| 01090 | fix(mac): cache webchat panel | 2025-12-12 15:33 |
| 01097 | fix(mac): prevent crash decoding GatewayFrame | 2025-12-12 16:37 |
| 01100 | fix(macos): fix clawdis-mac --version | 2025-12-12 16:40 |
| 01102 | fix(presence): stabilize instance identity | 2025-12-12 16:47 |
| 01105 | fix(macos): prevent gateway request double-resume | 2025-12-12 16:52 |
| 01106 | fix(presence): dedupe instances via stable instanceId | 2025-12-12 16:56 |
| 01107 | fix(mac): avoid static UserDefaults in InstanceIdentity | 2025-12-12 16:59 |
| 01108 | fix(mac): reflect agent activity in menu icon | 2025-12-12 17:20 |
| 01109 | fix(presence): hide cli sessions; use numeric mac build | 2025-12-12 17:27 |
| 01110 | fix(voice): persist WhatsApp last route | 2025-12-12 17:27 |
| 01112 | fix(mac): harden gateway frame decoding | 2025-12-12 17:30 |
| 01113 | fix(auto-reply): prefer Pi RPC by default | 2025-12-12 17:30 |
| 01115 | fix(gateway): ack agent requests immediately | 2025-12-12 18:00 |
| 01116 | fix(agent): send tau rpc prompt as string | 2025-12-12 17:46 |
| 01117 | fix(mac): allow typing in web chat panel | 2025-12-12 18:07 |
| 01119 | fix(gateway): ignore stale lastTo for voice | 2025-12-12 18:11 |
| 01121 | fix(gateway): handle SIGTERM shutdown cleanly | 2025-12-12 18:28 |
| 01125 | fix(mac): serve webchat locally in remote mode | 2025-12-12 18:41 |
| 01126 | fix(mac): keep remote control tunnel alive | 2025-12-12 18:44 |
| 01127 | fix(mac): treat timeSensitive as best-effort | 2025-12-12 18:58 |
| 01128 | fix(mac): disable restricted time-sensitive entitlement | 2025-12-12 19:20 |
| 01129 | fix(mac): ignore cancelled webchat navigations | 2025-12-12 19:20 |
| 01130 | fix(mac): open settings for microphone permission | 2025-12-12 19:25 |
| 01134 | fix(mac): render Canvas HTML correctly | 2025-12-12 20:01 |
| 01135 | fix(mac): add draggable/closable Canvas hover chrome | 2025-12-12 20:08 |
| 01136 | fix(mac): keep Canvas below Voice Wake overlay | 2025-12-12 20:10 |
| 01137 | fix(mac): keep voice wake listening | 2025-12-12 20:13 |
| 01139 | fix(mac): persist Canvas frame across reopen | 2025-12-12 20:33 |
| 01141 | fix(gateway): don't let webchat clobber last route | 2025-12-12 21:00 |
| 01142 | fix(macos): show tool-use badge glyph | 2025-12-12 21:02 |
| 01143 | fix(gateway): treat webchat last as whatsapp | 2025-12-12 21:05 |
| 01148 | fix(mac): keep voice overlay above canvas | 2025-12-12 21:26 |
| 01149 | fix(macos): share gateway websocket connection | 2025-12-12 21:34 |
| 01150 | fix(mac): avoid double-trigger voice wake | 2025-12-12 21:37 |
| 01152 | fix(macos): avoid external open for about:blank | 2025-12-12 21:56 |
| 01153 | fix(mac): timeout ClawdisCLI socket calls | 2025-12-12 21:54 |
| 01154 | fix(ios): harden voice wake callbacks | 2025-12-12 21:59 |
| 01155 | fix(bridge): use default Bonjour domain | 2025-12-12 21:59 |
| 01157 | fix(macos): keep voice wake overlay on top | 2025-12-12 22:09 |
| 01158 | fix(macos): avoid ptt audio teardown race | 2025-12-12 22:24 |
| 01163 | fix(mac): make Canvas file watcher reliable | 2025-12-12 22:50 |
| 01165 | fix(mac): recover control tunnel after restart | 2025-12-12 22:45 |
| 01166 | fix(node): prevent iOS VoiceWake crash | 2025-12-12 23:06 |
| 01167 | fix(status): account cached prompt tokens | 2025-12-12 23:22 |
| 01168 | fix(macos): clarify presence update source label | 2025-12-12 23:27 |
| 01172 | fix: expose heartbeat controls and harden mac CLI | 2025-12-12 23:33 |
| 01173 | fix(mac): show cached context usage | 2025-12-12 23:44 |
| 01174 | fix(mac): render context bar reliably | 2025-12-13 00:13 |
| 01175 | fix(mac): render context bar as image | 2025-12-13 00:19 |
| 01176 | fix(mac): size context bar to menu | 2025-12-13 00:23 |
| 01177 | fix(ios): avoid actor isolation in audio tap | 2025-12-13 00:14 |
| 01178 | fix(ios): avoid MainActor isolation in audio tap | 2025-12-13 00:26 |
| 01184 | fix(mac): avoid collapsed context pills in menu | 2025-12-13 00:50 |
| 01185 | fix(macos): prevent control socket hangs | 2025-12-13 00:51 |
| 01187 | fix(mac): render context sessions card with labels | 2025-12-13 01:18 |
| 01191 | fix(macos): harden remote ssh tunnel | 2025-12-13 01:43 |
| 01196 | fix(ios): make canvas full-bleed | 2025-12-13 02:14 |
| 01202 | fix(presence): report bridged iOS nodes | 2025-12-13 02:33 |
| 01203 | fix(mac): keep context row labels together | 2025-12-13 02:47 |
| 01204 | fix(ios): prettify bonjour endpoint labels | 2025-12-13 02:48 |
| 01210 | fix(mac): preserve SwiftUI menu delegate | 2025-12-13 03:11 |
| 01219 | macOS: stabilize context menu card layout | 2025-12-13 03:52 |
| 01221 | fix(discovery): lazy-load bonjour; add tests | 2025-12-13 03:55 |
| 01226 | fix(ui): show bonjour masters inline | 2025-12-13 10:48 |
| 01230 | fix(ui): increase onboarding horizontal padding | 2025-12-13 12:15 |
| 01233 | fix(bonjour): normalize hostnames for beacons | 2025-12-13 13:45 |
| 01246 | fix(gateway): advertise bonjour hostname | 2025-12-13 18:51 |
| 01247 | fix(ios): stabilize voice wake + bridge UI | 2025-12-13 19:14 |
| 01266 | fix(telegram): download inbound media via file_path | 2025-12-13 16:18 |
| 01270 | fix(browser): derive cdp port from control url | 2025-12-13 15:16 |
| 01271 | fix(browser): default control url uses 18791 | 2025-12-13 15:29 |
| 01290 | fix(cli): improve ui arg passthrough | 2025-12-13 17:09 |
| 01291 | fix(macos): surface gateway sessions load errors | 2025-12-13 17:15 |
| 01296 | fix(macos): encode gateway params without AnyHashable | 2025-12-13 17:30 |
| 01298 | fix(browser): open tabs via CDP websocket | 2025-12-13 17:36 |
| 01299 | fix(cli): improve browser control errors | 2025-12-13 17:37 |
| 01371 | fix(webchat): stream assistant events and correlate runId | 2025-12-14 00:56 |
| 01372 | fix(mac): move menu separator below context card | 2025-12-14 00:57 |
| 01373 | fix(ios): use mac icon + avoid voice wake crash | 2025-12-14 01:09 |
| 01375 | fix(web): heartbeat fallback after group inbound | 2025-12-14 01:26 |
| 01377 | fix(ios): ensure app icon asset catalog | 2025-12-14 01:50 |
| 01382 | fix(web): use heartbeat inbound msg for delivery | 2025-12-14 01:55 |
| 01384 | fix(ios): remove white border from app icon | 2025-12-14 01:57 |
| 01389 | fix(ios): set CFBundleIconName | 2025-12-14 02:05 |
| 01396 | fix(ios): show connection status badge | 2025-12-14 02:17 |
| 01398 | fix(ios): make connection badge visible | 2025-12-14 02:19 |
| 01402 | fix(camera): modernize mp4 export | 2025-12-14 02:34 |
| 01403 | fix(ios): make fastlane beta lane work | 2025-12-14 02:35 |
| 01404 | fix(ios): make fastlane beta lane work | 2025-12-14 02:35 |
| 01410 | fix(ios): timeout bridge connect | 2025-12-14 02:41 |
| 01413 | fix(macos): avoid health polling in tests | 2025-12-14 02:54 |
| 01415 | fix: expand reply cwd (~) and document AGENTS | 2025-12-14 02:59 |
| 01416 | fix(ios): satisfy Sendable in bridge timeout | 2025-12-14 03:00 |
| 01420 | fix(android): inset top buttons for status bar | 2025-12-14 03:10 |
| 01421 | fix(android): make settings sheet scrollable | 2025-12-14 03:13 |
| 01429 | fix(macos): hide session store path in remote mode | 2025-12-14 03:38 |
| 01439 | ui(macos): fix security notice wrapping | 2025-12-14 03:57 |
| 01452 | fix(macos): suggest critter emojis only | 2025-12-14 04:29 |
| 01453 | fix(webchat): reconnect gateway ws | 2025-12-14 03:26 |
| 01456 | fix(macos): sane chat window placement | 2025-12-14 03:57 |
| 01457 | fix(chat): improve history + polish SwiftUI panel | 2025-12-14 04:18 |
| 01458 | fix(camera): retain capture delegates | 2025-12-14 04:30 |
| 01460 | fix(android): safe area + settings scroll | 2025-12-14 04:34 |
| 01461 | fix(bonjour): log advertise failures and watchdog | 2025-12-14 04:33 |
| 01467 | fix(config): tolerate session store races | 2025-12-14 04:41 |
| 01471 | fix(macos): live-check Pi oauth.json | 2025-12-14 04:47 |
| 01479 | iOS: Fix canvas touch events and auto-hide status bubble | 2025-12-14 05:14 |
| 01481 | fix(ios): use Observation environment in settings | 2025-12-14 05:15 |
| 01484 | fix(chat-ui): reflect gateway connection | 2025-12-14 05:17 |
| 01485 | fix(macos): fix oauth base64 helper visibility | 2025-12-14 05:19 |
| 01487 | fix(ios): update observation env in smoke tests | 2025-12-14 05:27 |
| 01488 | fix(android): respect insets and enable settings scroll | 2025-12-14 05:28 |
| 01490 | fix(camera): harden capture pipeline | 2025-12-14 05:30 |
| 01494 | test(web): stabilize group heartbeat test | 2025-12-14 05:35 |
| 01495 | fix(android): avoid non-exhaustive sheet switch | 2025-12-14 05:42 |

## Narrative

Early bugfixes addressed macOS UI issues: presence decoding (1003), panel toggle behavior (1009), webchat asset serving (1013, 1017), tool list stability (1019), and overlay token mismatch handling (1015). Gateway infrastructure fixes included recognizing pnpm/bun as expected gateway processes (1025), preventing local gateway spawn in remote mode (1031), and stabilizing the health probe (1034).

Voice overlay and send flow unification (1049) eliminated duplicate code paths. Agent RPC fixes addressed usage persistence from empty assistant messages (1055), hook UI auto-cancellation (1059), empty inbound rejection (1062), pi flag handling (1063), empty prompt guards (1064, 1067), and structured prompt formatting (1070). Auto-reply fixes ensured reset triggers were acknowledged (1071) and self-only defaults applied without config (1084).

Gateway connectivity fixes serialized concurrent connect attempts (1086), fixed webchat WebSocket connections (1087), cached webchat panels (1090), prevented GatewayFrame decode crashes (1097), and fixed double-resume on send failures (1105). Presence stabilization required multiple passes: stable instanceId extraction (1102), deduplication via instanceId (1106), removing static UserDefaults (1107), and hiding CLI sessions (1109).

Voice wake and channel routing fixes persisted WhatsApp last route (1110), prevented stale lastTo interference (1119), and ensured webchat did not clobber the last route (1141, 1143). Notification fixes treated time-sensitive priority as best-effort (1127-1128).

Canvas panel fixes addressed HTML rendering (1134), drag/close chrome (1135), z-order below voice overlay (1136, 1148), persistent frame (1139), file watcher reliability (1163), and about:blank navigation (1152). Context bar rendering required four iterations (1173-1176) to achieve reliable image-based rendering at correct menu bar dimensions.

iOS-specific fixes hardened voice wake callbacks (1154), resolved audio tap actor isolation (1177-1178), prevented VoiceWake crashes (1166), and made canvas full-bleed (1196). Bonjour discovery fixes normalized hostnames (1233), advertised correct hostnames (1246), and lazy-loaded bonjour (1221).

Browser control fixes corrected CDP port derivation (1270), default port (1271), tab opening via WebSocket (1298), and error messaging (1299). Cross-platform fixes in the final stretch addressed iOS app icon resolution (1373, 1377, 1384, 1389), heartbeat reply routing (1375, 1382), camera delegate retention (1458), capture pipeline hardening (1490), Android safe area handling (1420, 1460, 1488), and session store race tolerance (1467).

## Cross-references

- [core-feature](core-feature.md) -- most bugfixes directly followed new feature commits
- [refactor](refactor.md) -- some fixes were addressed through broader refactoring efforts
