# Theme: Core Feature

Core feature commits in the 01501-02000 range drive the most significant capability expansions: the Canvas A2UI system with cross-platform rendering, wide-area Bonjour discovery over Tailscale, node capabilities and invoke commands, screen recording and camera capture, browser MCP tool dispatch, the workspace skills system (loading, installing, managing), onboarding chat kickoff, control dashboard, models.list RPC, and tailscale authentication. This is the busiest range for new features, with 119 commits spanning every major subsystem.

## Commits

| # | Subject | Date |
|---|---------|------|
| 01522 | feat: embed pi agent runtime | 2025-12-17 11:29 |
| 01523 | docs: document embedded agent runtime | 2025-12-17 11:29 |
| 01524 | feat(macos): add Canvas A2UI renderer | 2025-12-17 11:35 |
| 01528 | feat(macos): add menu Canvas open/close | 2025-12-17 11:53 |
| 01531 | iOS: allow unicast DNS-SD discovery domain | 2025-12-17 14:14 |
| 01536 | Android: add unicast discovery domain + app icon | 2025-12-17 15:29 |
| 01538 | Canvas: forward A2UI actions | 2025-12-17 15:41 |
| 01541 | Gateway: wide-area Bonjour via clawdis.internal | 2025-12-17 17:01 |
| 01542 | Nodes: auto-discover clawdis.internal | 2025-12-17 17:01 |
| 01543 | CLI: dns setup supports sudo-owned CoreDNS config | 2025-12-17 17:15 |
| 01550 | fix(macos): sync node pairing approvals | 2025-12-17 19:04 |
| 01553 | feat: show Anthropic auth mode + OAuth connect | 2025-12-17 19:14 |
| 01555 | Discovery: wide-area bridge DNS-SD | 2025-12-17 20:25 |
| 01558 | macOS: auto-start gateway for Canvas actions | 2025-12-17 17:36 |
| 01563 | Canvas: click progress + context-rich actions | 2025-12-17 20:19 |
| 01565 | tools: add blucli | 2025-12-17 20:39 |
| 01567 | feat: Swift chat parity (abort/sessions/stream) | 2025-12-17 15:51 |
| 01569 | Mobile: prevent sleep setting | 2025-12-17 21:01 |
| 01571 | Bridge: advertise node capabilities | 2025-12-17 20:03 |
| 01574 | macOS: include node hardware identifiers | 2025-12-17 20:10 |
| 01575 | Android: advertise device model to bridge | 2025-12-17 20:10 |
| 01578 | Presence: add device identity fields | 2025-12-17 21:17 |
| 01581 | feat: add status pill overlay | 2025-12-17 22:00 |
| 01582 | feat: iOS canvas background | 2025-12-17 22:03 |
| 01590 | macOS: load device model names from dataset | 2025-12-17 22:55 |
| 01603 | feat: chat parity + wide-area discovery | 2025-12-17 23:49 |
| 01620 | refactor: Include node caps + hardware in node.list | 2025-12-18 00:12 |
| 01621 | refactor: Fetch node list via gateway | 2025-12-18 00:12 |
| 01624 | refactor: Persist and surface node capabilities | 2025-12-18 01:36 |
| 01626 | feat: Add nodes status | 2025-12-18 00:37 |
| 01629 | feat: Alias canvas.* invoke commands | 2025-12-18 01:57 |
| 01632 | feat: Add Voice Wake (foreground/always) | 2025-12-18 02:08 |
| 01633 | refactor: Alias canvas.* for node.invoke | 2025-12-18 01:10 |
| 01635 | refactor: Centralize canvas commands and capabilities | 2025-12-18 02:12 |
| 01637 | refactor: Switch node.invoke screen.* to canvas.* | 2025-12-18 01:17 |
| 01638 | refactor: Handle canvas.* commands on iOS/Android | 2025-12-18 01:17 |
| 01643 | feat: Hide connected bridge from discovery list | 2025-12-18 02:37 |
| 01644 | feat: Persist advertised invoke commands | 2025-12-18 02:04 |
| 01645 | feat: Advertise canvas invoke commands | 2025-12-18 02:05 |
| 01646 | refactor: List/describe node capabilities and commands | 2025-12-18 02:05 |
| 01647 | feat: Add clawdis-mac node describe and verbose list | 2025-12-18 02:05 |
| 01665 | iOS: support canvas.a2ui push/reset | 2025-12-18 10:44 |
| 01666 | Android: add canvas.a2ui push/reset | 2025-12-18 10:44 |
| 01667 | Gateway: optional canvas host | 2025-12-18 11:35 |
| 01673 | feat(canvas): remove setMode; host A2UI in scaffold | 2025-12-18 13:18 |
| 01682 | Gateway: add compact ws verbose logs | 2025-12-18 13:07 |
| 01686 | feat(node): show camera capture HUD | 2025-12-18 14:48 |
| 01690 | iOS: support jpeg canvas snapshots | 2025-12-18 19:47 |
| 01693 | ClawdisKit: accept jpg for canvas.snapshot | 2025-12-18 23:31 |
| 01694 | iOS: allow A2UI actions from local canvas host | 2025-12-18 23:31 |
| 01695 | Android: JPEG canvas snapshots + camera permission prompts | 2025-12-18 23:32 |
| 01696 | Gateway: enable canvas host + inject action bridge | 2025-12-18 23:32 |
| 01697 | CLI: add nodes canvas snapshot + duration parsing | 2025-12-18 23:32 |
| 01700 | Gateway: add browser control UI | 2025-12-18 22:40 |
| 01701 | Agent: avoid silent failures on oversized images | 2025-12-18 22:58 |
| 01702 | Agent: document 2000px image downscale | 2025-12-18 23:02 |
| 01703 | feat(macos): hover HUD for activity | 2025-12-19 00:03 |
| 01706 | macOS: auto-fill Anthropic OAuth from clipboard | 2025-12-18 23:15 |
| 01707 | feat(macos): delay hover HUD | 2025-12-19 00:25 |
| 01708 | macOS: add screen record + safer camera defaults | 2025-12-19 00:29 |
| 01710 | iOS: allow Tailnet/MagicDNS canvas actions | 2025-12-19 00:52 |
| 01713 | feat(pairing): add silent SSH auto-approve | 2025-12-19 01:04 |
| 01715 | feat(nodes): add mac node mode + permission UX | 2025-12-19 01:48 |
| 01716 | feat: add mac node screen recording and ssh tunnel | 2025-12-19 02:33 |
| 01718 | feat: add node screen recording across apps | 2025-12-19 02:56 |
| 01719 | feat: route mac control via nodes | 2025-12-19 03:16 |
| 01720 | refactor: replace canvas.show with canvas.present | 2025-12-19 03:35 |
| 01722 | feat(agent): load workspace skills | 2025-12-19 03:38 |
| 01725 | feat(macos): add menu link to dashboard | 2025-12-19 04:28 |
| 01733 | Mac: add summarize tool | 2025-12-19 17:46 |
| 01736 | perf: move gateway env checks off main | 2025-12-19 17:54 |
| 01740 | perf: throttle gateway environment checks | 2025-12-19 18:21 |
| 01744 | docs: overhaul README architecture | 2025-12-19 18:41 |
| 01747 | feat(templates): centralize workspace templates | 2025-12-19 18:12 |
| 01749 | feat(gateway): support bun-compiled embedded gateway | 2025-12-19 19:20 |
| 01751 | feat(macos): run bundled gateway via launchd | 2025-12-19 19:20 |
| 01766 | refactor: unify gateway discovery on bridge | 2025-12-19 23:12 |
| 01768 | feat(browser): add MCP tool dispatch | 2025-12-19 23:57 |
| 01773 | fix: tighten iOS main-actor handling | 2025-12-20 01:48 |
| 01775 | feat(browser): add native action commands | 2025-12-20 00:53 |
| 01777 | feat(macos): add unconfigured gateway mode | 2025-12-20 02:20 |
| 01781 | refactor(cli): unify on clawdis CLI + node permissions | 2025-12-20 02:08 |
| 01787 | test(browser): cover agent contract | 2025-12-20 09:34 |
| 01795 | feat: add managed skills gating | 2025-12-20 12:22 |
| 01806 | feat: parse skill install metadata | 2025-12-20 12:59 |
| 01809 | feat(skills): load bundled skills | 2025-12-20 12:23 |
| 01810 | feat(skills): add extraDirs load paths | 2025-12-20 12:26 |
| 01813 | feat: add skills settings and gateway skills management | 2025-12-20 13:33 |
| 01817 | feat(skills): add media/transcription helpers | 2025-12-20 12:53 |
| 01822 | feat(auto-reply): greet on bare /new | 2025-12-20 13:04 |
| 01829 | feat(runtime): bootstrap PATH for clawdis | 2025-12-20 13:31 |
| 01832 | feat(web): stream tool summaries | 2025-12-20 13:47 |
| 01833 | feat(web): toggle tool summaries mid-run | 2025-12-20 13:52 |
| 01839 | feat(macos): clarify local gateway choice | 2025-12-20 14:11 |
| 01846 | feat(macos): auto-enable local gateway | 2025-12-20 14:46 |
| 01847 | feat(gateway): enrich agent WS logs | 2025-12-20 14:54 |
| 01849 | feat(agent): queue steering messages | 2025-12-20 16:10 |
| 01853 | feat: advertise cli path for remote ssh | 2025-12-20 16:43 |
| 01856 | feat(workspace): add bootstrap ritual | 2025-12-20 15:48 |
| 01861 | feat: refresh skills metadata and toggles | 2025-12-20 17:23 |
| 01862 | feat: add skills search and website | 2025-12-20 17:31 |
| 01867 | feat: add uv skill installers | 2025-12-20 17:50 |
| 01870 | feat(mac): add onboarding chat kickoff | 2025-12-20 16:51 |
| 01871 | feat(chat): restyle onboarding chat UI | 2025-12-20 16:51 |
| 01872 | feat(web): add whatsapp QR login tool | 2025-12-20 16:51 |
| 01905 | feat: add computer wake word | 2025-12-20 20:33 |
| 01907 | feat: add gateway-daemon command | 2025-12-20 19:35 |
| 01913 | feat: hide kickoff bubble and tweak typing | 2025-12-20 19:46 |
| 01916 | feat: require job name | 2025-12-20 19:56 |
| 01929 | feat: support gateway bind config | 2025-12-20 21:52 |
| 01930 | feat: choose skill install target | 2025-12-20 21:52 |
| 01949 | feat: add models.list | 2025-12-20 23:23 |
| 01951 | feat(macos): load models from gateway | 2025-12-20 23:24 |
| 01953 | feat(macos): add connections settings | 2025-12-20 23:41 |
| 01955 | feat(web): emit provider status updates | 2025-12-20 23:30 |
| 01977 | feat: refine skills install actions | 2025-12-21 01:07 |
| 01979 | feat(ui): expand control dashboard | 2025-12-21 00:34 |
| 01982 | feat(gateway): add tailscale auth + pam | 2025-12-21 00:44 |
| 01994 | feat(mac): add tailscale settings | 2025-12-21 01:16 |

## Narrative

### Canvas and Discovery Foundation (Commits 01522-01582)

The embedded Pi agent runtime was added (01522) alongside the Canvas A2UI renderer for macOS (01524). Wide-area Bonjour discovery was introduced via clawdis.internal (01541-01542) with DNS setup tooling (01543). Canvas A2UI actions gained forwarding (01538), click progress and context-rich actions (01563). Swift chat parity with abort, sessions, and streaming arrived (01567). Device identity fields were added to presence (01578), status pill overlays appeared (01581), and iOS canvas backgrounds were implemented (01582).

### Node Capabilities and Canvas Maturation (Commits 01590-01700)

Node capabilities became first-class: node.list included hardware info (01620), capabilities were persisted (01624), and canvas.* aliases replaced screen.* commands (01633-01638). Voice wake gained foreground/always modes (01632). The canvas host became optional (01667), A2UI was hosted in a scaffold (01673), and camera capture HUD was added (01686). JPEG canvas snapshots were implemented across iOS, Android, and ClawdisKit (01690-01697). Browser control UI arrived on the gateway (01700).

### Screen Recording, Skills, and Browser Control (Commits 01701-01870)

Hover HUD for activity monitoring appeared (01703, 01707). Screen recording and SSH tunnels were added for mac nodes (01716-01718), with control routing via nodes (01719). Workspace skills loading (01722) kicked off the skills system, which expanded to include bundled skills (01809), extra directories (01810), settings management (01813), media/transcription helpers (01817), install metadata parsing (01806), and uv installers (01867). Browser MCP tool dispatch was added (01768). The bun-compiled embedded gateway was introduced (01749) with launchd support (01751). Workspace templates were centralized (01747).

### Dashboard, Models, and Tailscale Auth (Commits 01870-02000)

Onboarding chat kickoff (01870) and restyled chat UI (01871) launched the guided setup experience. WhatsApp QR login tools (01872) and computer wake word (01905) expanded input methods. The gateway-daemon command (01907) formalized background operation. Skills install refinement continued (01977). The control dashboard was expanded (01979). Models.list RPC (01949) with macOS loading (01951) and provider status updates (01955) enabled dynamic model configuration. Tailscale auth with PAM (01982) and tailscale settings (01994) closed the range.

## Cross-references

- [ui](ui.md) -- core features drive UI additions for canvas, onboarding, settings, and dashboard
- [api](api.md) -- new features define new RPC methods and protocol extensions
- [networking](networking.md) -- wide-area discovery and tailscale features span both themes
- [build](build.md) -- embedded gateway compilation and bundling support new features
