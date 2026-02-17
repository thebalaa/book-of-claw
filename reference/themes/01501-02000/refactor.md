# Theme: Refactor

Refactor commits in the 01501-02000 range account for 71 entries covering macOS agent RPC consolidation, SwiftUI-only WebChat, canvas command namespace migration (screen.* to canvas.*), node capability centralization, browser automation surface pruning, A2UI hosting migration, skills settings layout simplification, onboarding window streamlining, and extensive biome/swiftformat passes. The refactoring effort supports the transition from legacy patterns to the unified canvas/node/skills architecture.

## Commits

| # | Subject | Date |
|---|---------|------|
| 01501 | fix(macos): clarify OAuth detection | 2025-12-14 19:10 |
| 01504 | fix(macos): hide skipped onboarding panes | 2025-12-14 19:13 |
| 01511 | fix(macos): use safe FileHandle reads | 2025-12-16 10:41 |
| 01518 | fix(system): inject transitions only | 2025-12-17 08:31 |
| 01520 | chore: drop agent-scripts AGENTS pointer | 2025-12-17 10:08 |
| 01521 | Canvas: simplify show + report status | 2025-12-17 10:37 |
| 01539 | macOS: fold AgentRPC into GatewayConnection | 2025-12-17 16:07 |
| 01556 | macOS: fold agent control into GatewayConnection | 2025-12-17 17:10 |
| 01597 | refactor: SwiftUI-only WebChat UI | 2025-12-17 23:05 |
| 01607 | refactor: Unify chat status label | 2025-12-18 00:20 |
| 01620 | refactor: Include node caps + hardware in node.list | 2025-12-18 00:12 |
| 01621 | refactor: Fetch node list via gateway | 2025-12-18 00:12 |
| 01622 | refactor: Unify idle background animation | 2025-12-18 01:22 |
| 01624 | refactor: Persist and surface node capabilities | 2025-12-18 01:36 |
| 01627 | refactor: Drop legacy theme fallback | 2025-12-18 01:39 |
| 01633 | refactor: Alias canvas.* for node.invoke | 2025-12-18 01:10 |
| 01635 | refactor: Centralize canvas commands and capabilities | 2025-12-18 02:12 |
| 01637 | refactor: Switch node.invoke screen.* to canvas.* | 2025-12-18 01:17 |
| 01638 | refactor: Handle canvas.* commands on iOS/Android | 2025-12-18 01:17 |
| 01642 | refactor: Centralize canvas protocol strings | 2025-12-18 02:32 |
| 01646 | refactor: List/describe node capabilities and commands | 2025-12-18 02:05 |
| 01649 | refactor: Drop screen.* invoke aliases | 2025-12-18 02:17 |
| 01651 | iOS: fix BridgeClient SwiftFormat indent | 2025-12-18 08:40 |
| 01652 | ci: fix swiftformat and bun CI | 2025-12-18 08:55 |
| 01655 | macOS: add leading device icons in Instances | 2025-12-18 09:15 |
| 01664 | A2UI: share bundle via ClawdisKit | 2025-12-18 10:44 |
| 01669 | A2UI: share web UI and action bridge | 2025-12-18 11:38 |
| 01673 | feat(canvas): remove setMode; host A2UI in scaffold | 2025-12-18 13:18 |
| 01678 | Gateway: improve verbose ws logs | 2025-12-18 12:47 |
| 01681 | style: biome format gateway server | 2025-12-18 14:00 |
| 01685 | style: biome format ws logging | 2025-12-18 14:31 |
| 01689 | Web: fix lint/format for error formatter | 2025-12-18 18:22 |
| 01699 | CLI: fix nodes canvas snapshot option typing | 2025-12-18 23:40 |
| 01720 | refactor: replace canvas.show with canvas.present | 2025-12-19 03:35 |
| 01766 | refactor: unify gateway discovery on bridge | 2025-12-19 23:12 |
| 01776 | refactor(mac): remove clawdis-mac browser cli | 2025-12-20 01:06 |
| 01780 | refactor(browser): trim observe endpoints | 2025-12-20 02:07 |
| 01781 | refactor(cli): unify on clawdis CLI + node permissions | 2025-12-20 02:08 |
| 01782 | refactor(browser): prune browser automation surface | 2025-12-20 02:53 |
| 01785 | refactor(browser): simplify control API | 2025-12-20 03:27 |
| 01807 | refactor(canvas): host A2UI via gateway | 2025-12-20 12:17 |
| 01851 | fix(macos): streamline onboarding ui | 2025-12-20 15:20 |
| 01852 | chore(agent): track upstream steerable loop | 2025-12-20 16:39 |
| 01854 | refactor: extract canvas a2ui handler | 2025-12-20 16:45 |
| 01859 | refactor: serve canvas host on gateway port | 2025-12-20 17:13 |
| 01860 | refactor: remove canvasHost port config | 2025-12-20 17:15 |
| 01864 | refactor: trim skill install spec | 2025-12-20 17:39 |
| 01865 | refactor: drop pnpm skill installer | 2025-12-20 17:39 |
| 01868 | refactor: tighten steerable agent loop typing | 2025-12-20 17:50 |
| 01894 | refactor: centralize gateway parsing | 2025-12-20 19:53 |
| 01901 | fix: allow identity refresh off MainActor | 2025-12-20 19:19 |
| 01904 | fix: allow identity refresh off main actor | 2025-12-20 20:02 |
| 01908 | refactor: bundle single relay binary | 2025-12-20 19:35 |
| 01912 | style: lower welcome icon | 2025-12-20 19:44 |
| 01914 | refactor: refresh skills settings layout | 2025-12-20 20:49 |
| 01918 | refactor: simplify skills list rows | 2025-12-20 21:12 |
| 01920 | refactor: move skills filter into header | 2025-12-20 21:17 |
| 01921 | refactor: simplify sessions header | 2025-12-20 21:17 |
| 01923 | refactor: collapse control channel status | 2025-12-20 21:17 |
| 01925 | style: nudge icon up | 2025-12-20 20:19 |
| 01926 | style: refine icon and bottom bar spacing | 2025-12-20 20:24 |
| 01933 | style: widen label and clarify language | 2025-12-20 21:14 |
| 01936 | style: reduce window height | 2025-12-20 21:33 |
| 01940 | style: lower bottom controls | 2025-12-20 22:03 |
| 01942 | style: lower bottom row | 2025-12-20 22:07 |
| 01943 | style: add speech bubble tails | 2025-12-20 22:08 |
| 01945 | style: refine bubble tails | 2025-12-20 22:23 |
| 01946 | style: widen window | 2025-12-20 22:23 |
| 01954 | chore(macos): tidy discovery and runtime | 2025-12-20 23:30 |
| 01972 | fix(macos): simplify skills view and resize onboarding | 2025-12-20 23:45 |
| 02000 | refactor(macos): remove manual identity onboarding | 2025-12-21 01:39 |

## Narrative

### RPC Consolidation and WebChat (Commits 01501-01599)

OAuth detection was clarified with a new enum (01501), and onboarding panes gained conditional visibility (01504). AgentRPC was folded into GatewayConnection (01539, 01556), consolidating agent control into the gateway's connection layer. The WebChat UI migrated to SwiftUI-only rendering (01597), dropping the legacy UIKit fallback. System message injection was tightened (01518) and the agent-scripts pointer was dropped (01520).

### Canvas Namespace Migration (Commits 01607-01699)

Chat status labels were unified (01607) and idle background animations centralized (01622). The canvas command namespace underwent a systematic migration: canvas.* aliases were created (01633), centralized (01635), and the screen.* invoke aliases were dropped (01649). Node capabilities and commands were restructured (01620-01624, 01646). Legacy theme fallback was removed (01627). A2UI bundle sharing moved to ClawdisKit (01664, 01669). Canvas hosting was refactored to remove setMode (01673). Biome formatting passes (01681, 01685, 01689) accompanied the structural changes.

### Browser Pruning and Skills Layout (Commits 01720-01946)

Canvas.show was replaced with canvas.present (01720). The browser CLI was removed from clawdis-mac (01776), observe endpoints were trimmed (01780), the automation surface was pruned (01782), and the control API was simplified (01785). The CLI was unified on the clawdis binary (01781). Canvas A2UI hosting moved to the gateway (01807). Skills install spec was trimmed (01864), the pnpm installer was dropped (01865). The steerable agent loop typing was tightened (01868). Gateway parsing was centralized (01894). Skills settings layout saw a full refresh: simplified list rows (01918), header filter (01920), simplified sessions header (01921), and collapsed control channel status (01923). Style commits refined window sizing and icon positioning (01925-01946). Manual identity onboarding was removed (02000).

## Cross-references

- [cleanup](cleanup.md) -- many refactors include cleanup of deprecated patterns
- [core-feature](core-feature.md) -- refactors restructure code to support new features
- [ui](ui.md) -- UI layout refactors overlap with the refactor theme
