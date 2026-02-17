# Theme: Core Feature

Core feature development in commits 1001-1500 expanded the platform from a macOS desktop agent into a multi-device ecosystem spanning iOS, Android, and browser control. The arc progressed through WebSocket chat attachments and port diagnostics (1005-1050), gateway protocol evolution and Unix socket migration (1076-1094), Canvas panels and notification delivery (1120-1146), the iOS ClawdisNode app and Bonjour bridge (1145-1225), cron scheduling (1200-1248), browser control and DOM inspection (1269-1318), session management via gateway RPC (1276-1277), the Android node app (1381-1388), camera capture across platforms (1356-1402), wake word synchronization (1472-1475), Observation framework migration (1477), and Claude OAuth onboarding with agent identity (1450-1451). Each major feature extended the gateway as the central coordination point for an increasingly distributed agent platform.

## Commits

| # | Subject | Date |
|---|---------|------|
| 01005 | feat: add ws chat attachments | 2025-12-09 23:16 |
| 01010 | Add package manager selector and hide uninstalled tools | 2025-12-09 22:31 |
| 01016 | mac: add port diagnostics for gateway | 2025-12-10 00:49 |
| 01023 | mac: guard ports and sweep stale tunnels | 2025-12-10 01:04 |
| 01027 | mac: show full command and kill controls for ports | 2025-12-10 01:22 |
| 01030 | mac: route remote mode through SSH | 2025-12-10 01:43 |
| 01032 | infra: use flock gateway lock | 2025-12-10 00:46 |
| 01034 | fix: stabilize health probe and gateway handshake | 2025-12-10 00:52 |
| 01036 | test: add test:force helper | 2025-12-10 01:00 |
| 01040 | mac: add swiftui web chat option | 2025-12-10 02:00 |
| 01050 | gateway: include last input in presence events | 2025-12-10 03:48 |
| 01053 | test: add semver and gateway helpers coverage | 2025-12-10 01:26 |
| 01057 | pi: parse turn_end streams | 2025-12-10 11:31 |
| 01061 | gateway: dedupe system-event presence | 2025-12-10 11:48 |
| 01069 | gateway: add webchat handshake logging | 2025-12-10 15:32 |
| 01076 | health: gateway-only status and stable reconnect | 2025-12-10 16:47 |
| 01077 | feat(gateway): allow webchat port override | 2025-12-10 16:55 |
| 01081 | mac: replace xpc with unix socket control channel | 2025-12-11 16:30 |
| 01085 | mac: lock control socket to team-signed peers | 2025-12-12 01:22 |
| 01086 | fix(mac): serialize gateway connect | 2025-12-12 14:12 |
| 01088 | test(mac): cover concurrent gateway connect | 2025-12-12 14:29 |
| 01094 | feat(voicewake): route replies to last channel | 2025-12-12 16:15 |
| 01096 | test: cover main last-channel routing | 2025-12-12 16:35 |
| 01097 | fix(mac): prevent crash decoding GatewayFrame | 2025-12-12 16:37 |
| 01120 | macOS: add --priority flag for time-sensitive notifications | 2025-12-12 18:27 |
| 01131 | feat(mac): add overlay notification delivery | 2025-12-12 19:27 |
| 01133 | feat(mac): add agent-controlled Canvas panel | 2025-12-12 19:54 |
| 01138 | feat(mac): allow Canvas placement and resizing | 2025-12-12 20:28 |
| 01140 | feat(macos): enlarge tool-use badge | 2025-12-12 20:45 |
| 01144 | feat(mac): add rolling diagnostics log | 2025-12-12 20:46 |
| 01145 | feat(bridge): add Bonjour node bridge | 2025-12-12 21:18 |
| 01146 | feat(ios): add ClawdisNode app scaffold | 2025-12-12 21:18 |
| 01147 | feat(ios): add settings UI | 2025-12-12 21:19 |
| 01151 | test(macos): cover gateway connection reuse | 2025-12-12 21:42 |
| 01153 | fix(mac): timeout ClawdisCLI socket calls | 2025-12-12 21:54 |
| 01154 | fix(ios): harden voice wake callbacks | 2025-12-12 21:59 |
| 01156 | refactor(macos): replace gateway NotificationCenter with event bus | 2025-12-12 22:06 |
| 01158 | fix(macos): avoid ptt audio teardown race | 2025-12-12 22:24 |
| 01159 | refactor(macos): centralize gateway endpoint resolution | 2025-12-12 22:26 |
| 01160 | refactor(macos): extract gateway payload decoding | 2025-12-12 22:26 |
| 01161 | test(macos): cover gateway endpoint store | 2025-12-12 22:26 |
| 01163 | fix(mac): make Canvas file watcher reliable | 2025-12-12 22:50 |
| 01165 | fix(mac): recover control tunnel after restart | 2025-12-12 22:45 |
| 01166 | fix(node): prevent iOS VoiceWake crash | 2025-12-12 23:06 |
| 01169 | feat(gateway): switch handshake to req:connect (protocol v2) | 2025-12-12 23:29 |
| 01170 | feat(mac): show context usage bars | 2025-12-12 23:33 |
| 01171 | feat(macos): add clawdis://agent deep link | 2025-12-12 23:22 |
| 01172 | fix: expose heartbeat controls and harden mac CLI | 2025-12-12 23:33 |
| 01177 | fix(ios): avoid actor isolation in audio tap | 2025-12-13 00:14 |
| 01178 | fix(ios): avoid MainActor isolation in audio tap | 2025-12-13 00:26 |
| 01180 | feat(mac): compact context sessions in menu | 2025-12-13 00:39 |
| 01185 | fix(macos): prevent control socket hangs | 2025-12-13 00:51 |
| 01186 | feat(mac): show session labels under context bars | 2025-12-13 01:10 |
| 01188 | feat(macos): add Allow Canvas toggle to settings | 2025-12-13 01:17 |
| 01189 | feat(deeplink): forward agent links via bridge | 2025-12-13 01:18 |
| 01192 | feat(ios): add close button and ready canvas | 2025-12-13 01:49 |
| 01193 | feat(bridge): show node ip in pairing | 2025-12-13 01:57 |
| 01198 | feat(mac): compact context session rows | 2025-12-13 02:15 |
| 01199 | feat(mac): tighten context session row | 2025-12-13 02:30 |
| 01200 | Cron: add scheduler, wakeups, and run history | 2025-12-13 02:34 |
| 01201 | macOS: add Cron settings tab | 2025-12-13 02:34 |
| 01202 | fix(presence): report bridged iOS nodes | 2025-12-13 02:33 |
| 01205 | security(macos): require TeamID for control socket | 2025-12-13 02:50 |
| 01213 | feat(cron): add scheduler status endpoint | 2025-12-13 03:43 |
| 01214 | feat(cli): add cron status + warn when disabled | 2025-12-13 03:43 |
| 01215 | feat(macos): show cron scheduler status | 2025-12-13 03:43 |
| 01217 | feat(discovery): gateway bonjour + node pairing bridge | 2025-12-13 03:47 |
| 01218 | feat(cron): default scheduler enabled | 2025-12-13 03:49 |
| 01222 | feat(macos): add master discovery to onboarding | 2025-12-13 04:00 |
| 01225 | feat(discovery): bonjour beacons + bridge presence | 2025-12-13 04:28 |
| 01239 | feat(cron): always post isolated summaries to main | 2025-12-13 16:18 |
| 01240 | feat(mac): add ui screens + text clawdis-mac | 2025-12-13 16:45 |
| 01242 | feat(cron): post isolated summaries | 2025-12-13 17:19 |
| 01243 | feat(cli): expand cron commands | 2025-12-13 17:36 |
| 01244 | feat(macos): manage cron jobs | 2025-12-13 18:02 |
| 01245 | feat(mac): move screenshot to ui | 2025-12-13 18:28 |
| 01248 | refactor(cron): move store into -clawdis-cron | 2025-12-13 19:37 |
| 01254 | fix(macos): install gateway via npm | 2025-12-13 13:00 |
| 01256 | feat(onboarding): highlight voice wake, panel, and tools | 2025-12-13 13:04 |
| 01269 | feat(browser): add clawd browser control | 2025-12-13 15:15 |
| 01272 | feat(mac): add browser control menu toggle | 2025-12-13 15:49 |
| 01274 | feat(clawdis-mac): add browser subcommand | 2025-12-13 16:19 |
| 01276 | feat(gateway): add sessions list/patch RPC | 2025-12-13 16:32 |
| 01277 | feat(macos): load sessions via gateway | 2025-12-13 16:33 |
| 01284 | chore(submodule): add Peekaboo | 2025-12-13 16:55 |
| 01285 | feat(mac): host PeekabooBridge for ui | 2025-12-13 16:55 |
| 01288 | feat(browser): add clawdis-mac browser controls | 2025-12-13 17:05 |
| 01306 | feat(browser): clamp screenshots under 5MB | 2025-12-13 18:08 |
| 01314 | feat(browser): add DOM inspection commands | 2025-12-13 18:32 |
| 01318 | feat(browser): add ai snapshot refs + click | 2025-12-13 18:48 |
| 01335 | iOS: show local IP in settings | 2025-12-13 23:37 |
| 01336 | iOS: copy bridge URL/host/port | 2025-12-13 23:40 |
| 01337 | feat(gateway): add node.invoke for iOS canvas | 2025-12-13 23:45 |
| 01338 | iOS: configurable voice wake words | 2025-12-13 23:49 |
| 01339 | refactor(macos)!: remove clawdis-mac ui; host PeekabooBridge | 2025-12-13 23:49 |
| 01342 | feat(instances): show OS version | 2025-12-13 23:46 |
| 01346 | feat(chat): share SwiftUI chat across macOS+iOS | 2025-12-14 00:17 |
| 01347 | feat(ios): reconnect to last bridge | 2025-12-14 00:23 |
| 01354 | feat(ios): pulse settings indicator | 2025-12-14 00:48 |
| 01355 | feat(ios): reconnect to last discovered gateway | 2025-12-14 00:48 |
| 01356 | feat(camera): add snap/clip capture | 2025-12-14 00:48 |
| 01371 | fix(webchat): stream assistant events and correlate runId | 2025-12-14 00:56 |
| 01378 | feat(macos): refresh tools roster | 2025-12-14 01:54 |
| 01379 | feat(gateway): add bridge RPC chat history and push | 2025-12-14 01:54 |
| 01380 | feat(ios): unify manual bridge config and auto-reconnect | 2025-12-14 01:54 |
| 01381 | feat(android): add Compose node app (bridge+canvas+chat+camera) | 2025-12-14 01:54 |
| 01383 | feat(macos): add OpenAI Whisper tool | 2025-12-14 01:56 |
| 01385 | feat(camera): share jpeg transcoder + default maxWidth | 2025-12-14 01:56 |
| 01388 | feat(android): keep node connected via foreground service | 2025-12-14 02:01 |
| 01391 | feat(ios): add fastlane setup | 2025-12-14 02:10 |
| 01402 | fix(camera): modernize mp4 export | 2025-12-14 02:34 |
| 01408 | test(ios): add bridge session + keychain suites | 2025-12-14 02:32 |
| 01410 | fix(ios): timeout bridge connect | 2025-12-14 02:41 |
| 01415 | fix: expand reply cwd (~) and document AGENTS | 2025-12-14 02:59 |
| 01417 | feat(ios): add always-on status overlay | 2025-12-14 03:00 |
| 01422 | feat: bootstrap agent workspace and AGENTS.md | 2025-12-14 03:14 |
| 01428 | feat(macos): move camera setting to General | 2025-12-14 03:32 |
| 01435 | ui(macos): skip local onboarding steps in remote mode | 2025-12-14 03:49 |
| 01438 | ui(macos): make master discovery selectable | 2025-12-14 03:53 |
| 01444 | ui(macos): always enable deep links | 2025-12-14 04:06 |
| 01445 | refactor(macos): simplify bridge frame handling | 2025-12-14 03:56 |
| 01449 | ui(macos): skip whatsapp onboarding in remote mode | 2025-12-14 04:20 |
| 01450 | feat(macos): onboard Claude OAuth + identity | 2025-12-14 04:21 |
| 01451 | feat(agent): enforce provider/model and identity defaults | 2025-12-14 04:21 |
| 01463 | feat(ios): add discovery debug logs | 2025-12-14 04:34 |
| 01472 | feat(voicewake): add gateway-owned wake words sync | 2025-12-14 05:05 |
| 01473 | feat(macos): sync wake words via gateway | 2025-12-14 05:05 |
| 01474 | feat(ios): sync wake words via gateway | 2025-12-14 05:05 |
| 01475 | feat(android): sync wake words via gateway | 2025-12-14 05:05 |

## Narrative

Core feature work in this range began with WebSocket chat attachments (1005) and package manager selection (1010), then moved into gateway infrastructure with port diagnostics via PortGuardian (1016-1027), SSH routing for remote mode (1030), and file-based gateway locking (1032). Commit 1034 stabilized the health probe, and 1040 introduced a SwiftUI-based webchat option.

The gateway protocol matured through several stages. Commit 1061 added presence deduplication, 1069 added handshake logging, and 1076 restructured health reporting to make gateway reachability the primary success metric. Commit 1077 added configurable webchat port override. The macOS app replaced XPC with Unix socket communication (1081) and added team-signed peer verification (1085). Commit 1086 serialized concurrent gateway connect attempts, and 1094 implemented voice wake routing to the last-used messaging surface.

Canvas panels emerged in commits 1133-1138, providing agent-controlled rich content rendering with placement and resizing. Commit 1140 enlarged the tool-use badge, 1144 added rolling diagnostics, and 1145-1147 launched the Bonjour node bridge and iOS ClawdisNode scaffold with settings UI. The gateway refactoring effort (1156-1161) replaced NotificationCenter with an async event bus, centralized endpoint resolution, and extracted payload decoding into a dedicated module.

The gateway handshake evolved to protocol v2 with req:connect (1169). Context usage visualization appeared through usage bars (1170), session labels (1186), and compact session rows (1198-1199). Deep links (1171) and bridge forwarding (1189) enabled cross-application agent interaction.

The cron scheduler system (1200-1248) introduced periodic task scheduling with wakeups, run history, status endpoints, CLI commands, macOS management UI, and default-enabled configuration. Commits 1239 and 1242 ensured isolated cron jobs posted summaries back to the main session.

Browser control (1269-1318) added CDP-based automation with tab management, DOM inspection commands, screenshot clamping under 5MB, and AI snapshot references with clickable element IDs. Gateway sessions RPC (1276-1277) made the gateway the source of truth for session management.

The platform expanded to iOS with bridge connectivity, configurable wake words, camera capture, and reconnection logic (1335-1356). Commit 1381 introduced the Android node app with Compose UI implementing bridge, canvas, chat, and camera parity with iOS. Camera capture was shared across platforms with JPEG transcoding and default maxWidth (1385).

Late features included Claude OAuth onboarding (1450), agent identity with provider/model defaults (1451), gateway-owned wake word synchronization across macOS, iOS, and Android (1472-1475), and the large-scale Observation framework migration for SwiftUI state management (1477).

## Cross-references

- [bugfix](bugfix.md) -- new features frequently required immediate follow-up fixes
- [refactor](refactor.md) -- architectural refactors enabled and accompanied feature development
