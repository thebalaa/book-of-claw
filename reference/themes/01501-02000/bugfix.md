# Theme: Bugfix

The bugfix theme in the 01501-02000 range spans 138 commits addressing a wide spectrum of issues: macOS OAuth and audio initialization, gateway chat history limits, canvas A2UI rendering regressions, wide-area Bonjour discovery problems, browser control stability, skills loading and installation, onboarding layout polish, and cross-platform concurrency fixes. The volume reflects the rapid feature expansion in this range—each new capability brought corresponding edge cases that required immediate correction.

## Commits

| # | Subject | Date |
|---|---------|------|
| 01501 | fix(macos): clarify OAuth detection | 2025-12-14 19:10 |
| 01507 | fix(auto-reply): parse agent_end and avoid rpc JSON leaks | 2025-12-16 20:35 |
| 01509 | fix(macos): lazy-init AVAudioEngine to prevent Bluetooth audio ducking | 2025-12-16 10:41 |
| 01511 | fix(macos): use safe FileHandle reads | 2025-12-16 10:41 |
| 01513 | fix(gateway): cap chat.history payload size | 2025-12-16 19:34 |
| 01514 | fix(gateway): cap chat.history to 1000 messages | 2025-12-16 19:44 |
| 01515 | fix(gateway): clamp chat.history to 1000 max | 2025-12-16 19:55 |
| 01516 | fix(chat-ui): improve typing dots and composer | 2025-12-17 11:53 |
| 01517 | fix(chat): reduce system spam and cap history | 2025-12-16 20:35 |
| 01518 | fix(system): inject transitions only | 2025-12-17 08:31 |
| 01519 | fix(macos): anchor canvas panel to active screen | 2025-12-17 09:28 |
| 01526 | fix(macos): avoid treating '/' as file target | 2025-12-17 11:36 |
| 01529 | Canvas: fix A2UI v0.8 rendering | 2025-12-17 13:20 |
| 01533 | Canvas: fix A2UI push rendering | 2025-12-17 14:36 |
| 01537 | Android: fix unicast discovery address resolution | 2025-12-17 15:32 |
| 01540 | GatewayConnection: validate agent message | 2025-12-17 16:09 |
| 01544 | CLI: make dns setup create valid zone | 2025-12-17 17:25 |
| 01546 | CLI: bootstrap invalid wide-area DNS zone | 2025-12-17 18:02 |
| 01548 | fix(pi): harden image read mime | 2025-12-17 15:29 |
| 01550 | fix(macos): sync node pairing approvals | 2025-12-17 19:04 |
| 01557 | macOS: fix gateway strict-concurrency issues | 2025-12-17 17:22 |
| 01559 | Canvas: fix A2UI click actions | 2025-12-17 19:21 |
| 01561 | fix: improve canvas A2UI forwarding | 2025-12-17 19:45 |
| 01562 | Node pairing: avoid blocking main actor | 2025-12-17 19:55 |
| 01564 | Agents: fix pi-tools typing | 2025-12-17 20:38 |
| 01568 | fix: bonjour discovery parity | 2025-12-17 20:57 |
| 01570 | macOS: fix InstanceInfo device fields | 2025-12-17 20:03 |
| 01580 | fix: dedupe hello fields | 2025-12-17 21:53 |
| 01583 | fix: harden request handling | 2025-12-17 22:04 |
| 01586 | fix: stabilize chat.abort | 2025-12-17 22:12 |
| 01587 | fix: fix AgentTool schema typing | 2025-12-17 22:12 |
| 01589 | fix: canvas idle background + tailscale DNS | 2025-12-17 22:27 |
| 01601 | fix: make chat.abort reliable | 2025-12-17 22:33 |
| 01615 | fix: Show idle background under WebView | 2025-12-18 00:53 |
| 01618 | fix: Use system DNS for wide-area discovery | 2025-12-18 01:04 |
| 01628 | fix: Improve wide-area bridge discovery | 2025-12-18 01:40 |
| 01630 | fix: Decode UTF-8 TXT records | 2025-12-18 01:58 |
| 01631 | fix: Improve webview compatibility | 2025-12-18 02:08 |
| 01641 | fix: Harden idle background animation | 2025-12-18 02:27 |
| 01657 | Android: run canvas WebView loads on main | 2025-12-18 08:31 |
| 01659 | macOS: hide node pairing alert host window | 2025-12-18 09:37 |
| 01662 | fix(android): show backdrop behind WebView | 2025-12-18 09:46 |
| 01670 | Android: hide Disconnect without remote | 2025-12-18 11:39 |
| 01679 | fix(ios): restore ScreenController.mode | 2025-12-18 13:56 |
| 01687 | Web: harden WhatsApp creds handling | 2025-12-18 17:19 |
| 01699 | CLI: fix nodes canvas snapshot option typing | 2025-12-18 23:40 |
| 01701 | Agent: avoid silent failures on oversized images | 2025-12-18 22:58 |
| 01704 | Canvas host: fix action bridge invocation | 2025-12-19 00:04 |
| 01711 | iOS: fix camera clip clamp regression test | 2025-12-19 00:53 |
| 01712 | CLI: retry --force until gateway port is free | 2025-12-18 23:56 |
| 01717 | fix(canvas): load A2UI resources across platforms | 2025-12-19 01:53 |
| 01721 | fix(onboarding): load saved identity defaults | 2025-12-19 02:40 |
| 01724 | fix(onboarding): default identity to Clawd | 2025-12-19 03:12 |
| 01726 | fix(control-ui): serve dashboard at root | 2025-12-19 05:11 |
| 01728 | fix(control-ui): wrap long message lines | 2025-12-19 09:54 |
| 01729 | fix(macos): reduce node pairing polling | 2025-12-19 13:58 |
| 01730 | fix(ios): refine canvas and screen handling | 2025-12-19 12:39 |
| 01731 | fix(macos): allow fractional timeout | 2025-12-19 12:40 |
| 01739 | fix(ios): make parseA2UIActionBody nonisolated | 2025-12-19 18:10 |
| 01743 | fix(deps): include playwright-core in dependencies | 2025-12-19 18:38 |
| 01745 | fix: surface gateway failure details | 2025-12-19 18:48 |
| 01748 | fix: show Dock icon during onboarding | 2025-12-19 19:19 |
| 01754 | fix(macos): sign bun gateway with jit entitlements | 2025-12-19 19:24 |
| 01755 | fix: restore mac app build | 2025-12-19 22:08 |
| 01756 | fix: handle screen record microphone output | 2025-12-19 22:09 |
| 01762 | fix: align DMG background and icon layout | 2025-12-19 22:38 |
| 01767 | fix: decode bonjour escaped utf8 | 2025-12-19 23:21 |
| 01771 | fix: remove WhatsApp batching delay | 2025-12-20 01:36 |
| 01772 | fix: harden device model decoding | 2025-12-20 01:48 |
| 01773 | fix: tighten iOS main-actor handling | 2025-12-20 01:48 |
| 01778 | fix(mac): use gateway main session for WebChat | 2025-12-20 01:27 |
| 01779 | fix(browser): restore tsc types | 2025-12-20 01:27 |
| 01784 | fix(mac): probe loopback bridge | 2025-12-20 03:05 |
| 01788 | fix(browser): extend hook arm timeouts | 2025-12-20 09:43 |
| 01789 | fix(browser): default hook timeout 2m | 2025-12-20 09:45 |
| 01792 | fix(a2ui): stabilize canvas host | 2025-12-20 10:58 |
| 01793 | fix(a2ui): improve modal styling | 2025-12-20 11:12 |
| 01797 | fix: address skills lint | 2025-12-20 12:29 |
| 01798 | fix(skills): prevent skills loading crash | 2025-12-20 11:49 |
| 01818 | fix(skills): ship runnable brave/openai scripts | 2025-12-20 12:54 |
| 01821 | fix(agents): handle managed skills list | 2025-12-20 12:59 |
| 01825 | fix: clarify SSH test failure | 2025-12-20 14:02 |
| 01826 | fix: add ClawdisIPC import | 2025-12-20 14:03 |
| 01828 | fix: auto-detect tailnet DNS hint | 2025-12-20 14:23 |
| 01830 | fix(agents): support loadSkillsFromDir result | 2025-12-20 13:31 |
| 01836 | fix: stabilize a2ui bundle output | 2025-12-20 14:50 |
| 01837 | fix: include tailnetDns in wide-area beacons | 2025-12-20 15:02 |
| 01838 | fix: clarify remote gateway error | 2025-12-20 15:05 |
| 01840 | fix(macos): hide local bridge discovery | 2025-12-20 14:19 |
| 01842 | fix(telegram): normalize chat ids and improve errors | 2025-12-20 14:21 |
| 01844 | fix(macos): clarify bridge discovery labels | 2025-12-20 14:27 |
| 01845 | fix: route voice wake to main | 2025-12-20 15:30 |
| 01850 | fix(macos): validate embedded CLI helper | 2025-12-20 15:12 |
| 01858 | fix(mac): align cli button height | 2025-12-20 16:02 |
| 01877 | fix: accept duplex upgrade sockets | 2025-12-20 18:00 |
| 01880 | fix: make web inbox non-blocking | 2025-12-20 18:24 |
| 01885 | fix: detect main module under PM2 | 2025-12-20 18:39 |
| 01887 | fix: use file-type for mime sniffing | 2025-12-20 19:13 |
| 01889 | fix: move host lookup off main thread | 2025-12-20 19:26 |
| 01890 | fix: merge bonjour txt records for ssh autofill | 2025-12-20 17:13 |
| 01891 | fix: resolve bonjour txt for ssh autofill | 2025-12-20 18:40 |
| 01892 | fix(web): handle self-chat mode | 2025-12-20 19:31 |
| 01893 | fix: use local timestamps in agent envelope | 2025-12-20 19:40 |
| 01897 | fix(macos): patch bun Long for protobuf | 2025-12-20 19:16 |
| 01898 | fix(gateway): start browser control server | 2025-12-20 19:16 |
| 01900 | fix(browser): allow control server without playwright | 2025-12-20 19:16 |
| 01901 | fix: allow identity refresh off MainActor | 2025-12-20 19:19 |
| 01904 | fix: allow identity refresh off main actor | 2025-12-20 20:02 |
| 01915 | fix: restore bottom bar padding | 2025-12-20 19:50 |
| 01917 | fix: accept new ssh host keys | 2025-12-20 21:06 |
| 01932 | fix: fix skill install target access | 2025-12-20 22:01 |
| 01934 | fix: use bridge canvas host for nodes | 2025-12-20 22:24 |
| 01937 | fix: restore chat bubble styling | 2025-12-20 21:47 |
| 01938 | fix: restore bubbles and spacing | 2025-12-20 21:56 |
| 01939 | fix: always show CLI installer | 2025-12-20 22:00 |
| 01941 | fix: clearer bubbles and tighter composer | 2025-12-20 22:03 |
| 01944 | fix: anchor bottom bar and reduce height | 2025-12-20 22:16 |
| 01952 | fix: pre-size menu context card | 2025-12-20 23:38 |
| 01963 | fix(chat): refine onboarding bubbles | 2025-12-20 23:15 |
| 01964 | fix(onboarding): fit chat card | 2025-12-20 23:15 |
| 01968 | fix(mac): re-ensure remote gateway tunnel | 2025-12-21 00:22 |
| 01971 | fix(onboarding): lift bottom bar | 2025-12-20 23:36 |
| 01972 | fix(macos): simplify skills view and resize onboarding | 2025-12-20 23:45 |
| 01973 | fix(onboarding): nudge bottom padding | 2025-12-20 23:52 |
| 01974 | fix: restore canvas action bridge | 2025-12-21 00:53 |
| 01975 | fix: emit delta-only node system events | 2025-12-21 00:55 |
| 01976 | fix: streamline WhatsApp login flow | 2025-12-21 00:59 |
| 01980 | fix(ui): stabilize skills action column | 2025-12-21 00:37 |
| 01981 | fix(gateway): avoid crash in handshake auth | 2025-12-21 00:41 |
| 01983 | fix(mac): restore skills install ForEach | 2025-12-21 00:46 |
| 01984 | fix(mac): disambiguate skills install ForEach | 2025-12-21 00:47 |
| 01986 | fix: use A2UI message context | 2025-12-21 01:48 |
| 01987 | fix(mac): avoid buttonStyle ternary | 2025-12-21 00:48 |
| 01991 | fix(mac): shrink onboarding height | 2025-12-21 00:57 |
| 01996 | fix(mac): guard onboarding workspace bootstrap | 2025-12-21 01:31 |
| 01997 | fix: align A2UI canvas background | 2025-12-21 02:31 |
| 01998 | fix: prefer header mime for media extensions | 2025-12-21 02:34 |
| 01999 | fix(mac): shrink onboarding height | 2025-12-21 01:33 |

## Narrative

### Early Stabilization (Commits 01501-01550)

The range opened with macOS OAuth detection improvements (01501) and an auto-reply agent_end parsing fix (01507). Audio ducking was addressed by lazy-initializing AVAudioEngine (01509), and safe FileHandle reads were introduced (01511). A burst of gateway chat.history fixes (01513-01517) capped payload sizes to prevent oversized WebSocket frames. Canvas A2UI rendering saw its first round of fixes (01529, 01533), while DNS zone bootstrap issues were corrected for the CLI (01544, 01546). Image MIME hardening (01548) and node pairing sync (01550) closed out the early phase.

### Discovery and Canvas Hardening (Commits 01557-01700)

Gateway strict-concurrency issues on macOS were fixed (01557), and A2UI click actions, forwarding, and idle backgrounds received multiple rounds of stabilization (01559, 01561, 01589, 01615, 01641). Wide-area bridge discovery saw continued fixes for DNS resolution, UTF-8 TXT record decoding, and system DNS fallback (01618, 01628, 01630). Android WebView backdrop rendering (01657, 01662) and node pairing UI quirks (01659) were addressed. WhatsApp credential handling was hardened (01687), and CLI node snapshot typing was fixed (01699).

### Build, Browser, and Skills Fixes (Commits 01701-01850)

Oversized image handling in the agent was fixed (01701), along with canvas A2UI resource loading across platforms (01717). Onboarding identity defaults were corrected (01721, 01724). Control UI fixes served the dashboard at root (01726) and wrapped long lines (01728). Browser control received timeout extensions (01788, 01789) and A2UI modal styling improvements (01792, 01793). Skills loading crash prevention (01798), lint fixes (01797), and various skills list fixes (01818, 01821, 01830) stabilized the new skills system. Telegram chat ID normalization (01842) and bridge discovery label clarification (01840, 01844) improved messaging reliability.

### Onboarding and Late Polish (Commits 01851-01999)

The final phase focused heavily on onboarding UI refinements: bottom bar padding (01915), chat bubble styling (01937, 01938, 01941), bubble tails and spacing (01943-01945), and onboarding height adjustments (01963, 01964, 01971-01973, 01991, 01999). Gateway crashes in handshake auth were prevented (01981), the WhatsApp login flow was streamlined (01976), and A2UI canvas background alignment was fixed (01997). MIME preference for header-based detection closed the range (01998).

## Cross-references

- [ui](ui.md) -- many bugfixes target UI regressions in canvas, onboarding, and chat
- [networking](networking.md) -- wide-area discovery and Bonjour fixes overlap significantly
- [error-handling](error-handling.md) -- some fixes add proper error handling where crashes occurred
- [build](build.md) -- build-related fixes for TypeScript types and bundle output
