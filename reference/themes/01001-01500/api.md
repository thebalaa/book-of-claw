# Theme: API

API commits in the 1001-1500 range cover WebSocket chat attachments, gateway presence events, Pi and Tau RPC prompt encoding, voice wake last-channel routing, gateway handshake protocol v2, deep link support, sessions list/patch RPC, browser control and DOM inspection commands, node.invoke for iOS canvas, wake word synchronization across platforms, and agent identity/provider defaults. The API surface expanded significantly as the gateway became the central hub for client communication, session management, and cross-device coordination.

## Commits

| # | Subject | Date |
|---|---------|------|
| 01005 | feat: add ws chat attachments | 2025-12-09 23:16 |
| 01013 | fix(webchat): load root path | 2025-12-09 23:40 |
| 01017 | fix(webchat): serve root assets correctly | 2025-12-09 23:50 |
| 01050 | gateway: include last input in presence events | 2025-12-10 03:48 |
| 01057 | pi: parse turn_end streams | 2025-12-10 11:31 |
| 01063 | fix(pi): skip -p when running rpc | 2025-12-10 14:21 |
| 01064 | fix(auto-reply): guard empty rpc prompt | 2025-12-10 14:26 |
| 01067 | fix(auto-reply): fall back to json when rpc prompt empty | 2025-12-10 14:58 |
| 01070 | fix(agent): send structured prompt to tau rpc | 2025-12-10 15:52 |
| 01094 | feat(voicewake): route replies to last channel | 2025-12-12 16:15 |
| 01169 | feat(gateway): switch handshake to req:connect (protocol v2) | 2025-12-12 23:29 |
| 01171 | feat(macos): add clawdis://agent deep link | 2025-12-12 23:22 |
| 01189 | feat(deeplink): forward agent links via bridge | 2025-12-13 01:18 |
| 01213 | feat(cron): add scheduler status endpoint | 2025-12-13 03:43 |
| 01242 | feat(cron): post isolated summaries | 2025-12-13 17:19 |
| 01243 | feat(cli): expand cron commands | 2025-12-13 17:36 |
| 01266 | fix(telegram): download inbound media via file_path | 2025-12-13 16:18 |
| 01269 | feat(browser): add clawd browser control | 2025-12-13 15:15 |
| 01274 | feat(clawdis-mac): add browser subcommand | 2025-12-13 16:19 |
| 01276 | feat(gateway): add sessions list/patch RPC | 2025-12-13 16:32 |
| 01288 | feat(browser): add clawdis-mac browser controls | 2025-12-13 17:05 |
| 01290 | fix(cli): improve ui arg passthrough | 2025-12-13 17:09 |
| 01296 | fix(macos): encode gateway params without AnyHashable | 2025-12-13 17:30 |
| 01298 | fix(browser): open tabs via CDP websocket | 2025-12-13 17:36 |
| 01303 | fix(ios): improve bridge discovery and pairing UX | 2025-12-13 17:58 |
| 01311 | fix(browser): accept targetId prefixes | 2025-12-13 18:16 |
| 01314 | feat(browser): add DOM inspection commands | 2025-12-13 18:32 |
| 01318 | feat(browser): add ai snapshot refs + click | 2025-12-13 18:48 |
| 01322 | refactor: apply stashed bridge + CLI changes | 2025-12-13 19:30 |
| 01337 | feat(gateway): add node.invoke for iOS canvas | 2025-12-13 23:45 |
| 01343 | chore(protocol): regen swift models | 2025-12-13 23:49 |
| 01344 | fix(gateway): resolve iOS node invokes | 2025-12-14 00:00 |
| 01379 | feat(gateway): add bridge RPC chat history and push | 2025-12-14 01:54 |
| 01450 | feat(macos): onboard Claude OAuth + identity | 2025-12-14 04:21 |
| 01451 | feat(agent): enforce provider/model and identity defaults | 2025-12-14 04:21 |
| 01471 | fix(macos): live-check Pi oauth.json | 2025-12-14 04:47 |
| 01472 | feat(voicewake): add gateway-owned wake words sync | 2025-12-14 05:05 |
| 01473 | feat(macos): sync wake words via gateway | 2025-12-14 05:05 |
| 01474 | feat(ios): sync wake words via gateway | 2025-12-14 05:05 |
| 01475 | feat(android): sync wake words via gateway | 2025-12-14 05:05 |
| 01477 | refactor(observation): migrate SwiftUI state | 2025-12-14 05:04 |
| 01481 | fix(ios): use Observation environment in settings | 2025-12-14 05:15 |
| 01485 | fix(macos): fix oauth base64 helper visibility | 2025-12-14 05:19 |

## Narrative

The API theme in the 1001-1500 range begins with WebSocket chat protocol extensions. Commit 01005 added file attachment support to WebSocket chat messages, and commits 01013 and 01017 fixed webchat server root path and asset serving. Commit 01050 extended presence events to include last user input timestamps.

Pi and Tau RPC prompt handling saw rapid iteration. Commit 01057 added turn_end stream parsing for the Pi agent. Commits 01063-01064 and 01067 fixed edge cases: skipping the -p flag in RPC mode, guarding empty prompts, and adding JSON fallback for malformed RPC output. Commit 01070 switched Tau RPC from raw string to structured content envelopes.

Voice wake channel routing was introduced in commit 01094, which implemented routing replies to the last-used main surface (WhatsApp/Telegram/WebChat) with sessionKey and channel tracking via the new updateLastRoute function.

The gateway handshake underwent a breaking protocol change in commit 01169, switching from hello/hello-ok exchange to the req:connect request-response pattern (protocol v2). Deep link support arrived in 01171 with clawdis://agent URLs, extended in 01189 to forward agent links through the bridge for remote agent interactions.

Cron scheduler API emerged in commits 01213 (scheduler status endpoint), 01242 (isolated summary posting), and 01243 (expanded CLI commands), establishing RPC methods for scheduler management.

Telegram media handling was fixed in commit 01266 to use file_path for reliable inbound media downloads.

Browser control was a significant API addition spanning commits 01269, 01274, 01288, 01298, 01311, 01314, and 01318. This introduced the clawd browser control system with CDP WebSocket connections, tab management, targetId prefix matching, DOM inspection commands (--await, --js, --selector), and AI snapshot references with clickable [ref=...] IDs for agent-driven UI interaction.

Gateway session management expanded in commit 01276 with sessions list/patch RPC methods, enabling remote session management from companion apps. Commit 01296 fixed gateway parameter encoding. Bridge improvements in 01303 added status callbacks and machine display name detection for Bonjour advertising, and 01322 refactored BridgeClient to use parameter objects.

The node.invoke system for iOS canvas control appeared in commit 01337, with flexible node selection added in 01344. Bridge RPC chat history and push notifications were added in 01379.

Authentication and identity became first-class API concepts in commits 01450-01451 and 01471. Claude OAuth was integrated into macOS onboarding, agent identity configuration was introduced with provider/model defaults enforcement, and live oauth.json validation was implemented.

Wake word synchronization was the final major API addition, implemented across all platforms in commits 01472-01475. The gateway became the owner of wake word configuration, syncing to macOS, iOS, and Android clients with protocol support and persistent storage. The Observation framework migration in 01477 and 01481 updated how state flows through the Swift API layer.

## Cross-references

- [ui](ui.md) -- API additions like sessions list, cron status, and browser control drive corresponding UI work
- [cleanup](cleanup.md) -- deprecated API patterns (rpc-to-json fallback, direct Baileys probes) were removed
- [testing](../00501-01000/testing.md) -- most API additions ship with test coverage
