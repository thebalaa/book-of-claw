# Theme: UX

UX commits in the 01501-02000 range span 46 entries focusing on onboarding flow improvements, node list enrichment with hardware details and friendly names, canvas interaction refinements, OAuth auto-fill from clipboard, hover HUD timing, skill install UX, tool summary streaming with mid-run toggles, discovery label clarification, chat bubble polish, and workspace template personality. The UX arc follows the product toward its beta release, prioritizing first-run experience and ongoing interaction clarity.

## Commits

| # | Subject | Date |
|---|---------|------|
| 01504 | fix(macos): hide skipped onboarding panes | 2025-12-14 19:13 |
| 01506 | ui(macos): remove Claude auth skip button | 2025-12-14 19:23 |
| 01560 | Menu: reopen canvas without reload | 2025-12-17 19:27 |
| 01572 | clawdis-mac: enrich node list output | 2025-12-17 20:03 |
| 01576 | clawdis-mac: show hardware model in node list | 2025-12-17 20:11 |
| 01588 | macOS: show friendly device names in Instances | 2025-12-17 22:23 |
| 01598 | nodes: better default display names | 2025-12-17 23:15 |
| 01688 | Web: improve WhatsApp error formatting | 2025-12-18 18:03 |
| 01695 | Android: JPEG canvas snapshots + camera permission prompts | 2025-12-18 23:32 |
| 01706 | macOS: auto-fill Anthropic OAuth from clipboard | 2025-12-18 23:15 |
| 01707 | feat(macos): delay hover HUD | 2025-12-19 00:25 |
| 01708 | macOS: add screen record + safer camera defaults | 2025-12-19 00:29 |
| 01715 | feat(nodes): add mac node mode + permission UX | 2025-12-19 01:48 |
| 01721 | fix(onboarding): load saved identity defaults | 2025-12-19 02:40 |
| 01724 | fix(onboarding): default identity to Clawd | 2025-12-19 03:12 |
| 01725 | feat(macos): add menu link to dashboard | 2025-12-19 04:28 |
| 01728 | fix(control-ui): wrap long message lines | 2025-12-19 09:54 |
| 01730 | fix(ios): refine canvas and screen handling | 2025-12-19 12:39 |
| 01748 | fix: show Dock icon during onboarding | 2025-12-19 19:19 |
| 01777 | feat(macos): add unconfigured gateway mode | 2025-12-20 02:20 |
| 01822 | feat(auto-reply): greet on bare /new | 2025-12-20 13:04 |
| 01832 | feat(web): stream tool summaries | 2025-12-20 13:47 |
| 01833 | feat(web): toggle tool summaries mid-run | 2025-12-20 13:52 |
| 01839 | feat(macos): clarify local gateway choice | 2025-12-20 14:11 |
| 01840 | fix(macos): hide local bridge discovery | 2025-12-20 14:19 |
| 01844 | fix(macos): clarify bridge discovery labels | 2025-12-20 14:27 |
| 01846 | feat(macos): auto-enable local gateway | 2025-12-20 14:46 |
| 01851 | fix(macos): streamline onboarding ui | 2025-12-20 15:20 |
| 01858 | fix(mac): align cli button height | 2025-12-20 16:02 |
| 01870 | feat(mac): add onboarding chat kickoff | 2025-12-20 16:51 |
| 01871 | feat(chat): restyle onboarding chat UI | 2025-12-20 16:51 |
| 01952 | fix: pre-size menu context card | 2025-12-20 23:38 |
| 01961 | style(chat): use integrated bubble tail | 2025-12-20 23:00 |
| 01963 | fix(chat): refine onboarding bubbles | 2025-12-20 23:15 |
| 01964 | fix(onboarding): fit chat card | 2025-12-20 23:15 |
| 01971 | fix(onboarding): lift bottom bar | 2025-12-20 23:36 |
| 01972 | fix(macos): simplify skills view and resize onboarding | 2025-12-20 23:45 |
| 01973 | fix(onboarding): nudge bottom padding | 2025-12-20 23:52 |
| 01976 | fix: streamline WhatsApp login flow | 2025-12-21 00:59 |
| 01977 | feat: refine skills install actions | 2025-12-21 01:07 |
| 01979 | feat(ui): expand control dashboard | 2025-12-21 00:34 |
| 01980 | fix(ui): stabilize skills action column | 2025-12-21 00:37 |
| 01991 | fix(mac): shrink onboarding height | 2025-12-21 00:57 |
| 01995 | Give workspace templates actual personality | 2025-12-21 01:24 |
| 01999 | fix(mac): shrink onboarding height | 2025-12-21 01:33 |
| 02000 | refactor(macos): remove manual identity onboarding | 2025-12-21 01:39 |

## Narrative

### Onboarding and Node Identity (Commits 01504-01598)

Skipped onboarding panes were hidden (01504) and the Claude auth skip button removed (01506). Node list output was enriched (01572, 01576) with hardware model display and friendly device names (01588, 01598). Canvas reopen without reload improved interaction (01560).

### Discovery and Interaction (Commits 01688-01777)

WhatsApp error formatting was improved (01688). Android camera permission prompts were added (01695). OAuth auto-fill from clipboard (01706) and hover HUD delay (01707) refined macOS interactions. Screen record and safer camera defaults appeared (01708). Node mode and permission UX were added (01715). Onboarding identity defaults (01721, 01724) and dashboard menu links (01725) improved navigation. Canvas and screen handling were refined on iOS (01730). Dock icon visibility during onboarding (01748) and unconfigured gateway mode (01777) addressed edge cases.

### Tools, Skills, and Onboarding Polish (Commits 01822-02000)

Auto-reply greeting on bare /new (01822) improved the conversation start. Tool summary streaming (01832) with mid-run toggling (01833) gave users visibility into agent work. Discovery labels were clarified (01839, 01840, 01844) and local gateway was auto-enabled (01846). Onboarding UI was streamlined (01851) with CLI button alignment (01858). Chat kickoff (01870) and restyled chat UI (01871) launched the guided onboarding. Chat bubbles received extensive polish (01952, 01961, 01963-01964, 01971-01973). Skills install actions were refined (01977) and the dashboard expanded (01979). WhatsApp login was streamlined (01976). Workspace templates received personality (01995). Onboarding height was finalized (01991, 01999) and manual identity onboarding removed (02000).

## Cross-references

- [ui](ui.md) -- UX improvements often involve UI changes
- [core-feature](core-feature.md) -- new features drive UX considerations
- [documentation](documentation.md) -- onboarding copy overlaps with documentation
