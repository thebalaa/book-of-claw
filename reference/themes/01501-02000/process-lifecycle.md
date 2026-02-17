# Theme: Process Lifecycle

Process lifecycle commits in the 01501-02000 range span 13 entries covering SSH auto-approve for node pairing, node mode and permission management, onboarding identity defaults, release preparation (2.0.0-beta1), workspace template centralization, onboarding conversation refinement, gateway sigterm testing, and workspace template personality and soul creation.

## Commits

| # | Subject | Date |
|---|---------|------|
| 01713 | feat(pairing): add silent SSH auto-approve | 2025-12-19 01:04 |
| 01715 | feat(nodes): add mac node mode + permission UX | 2025-12-19 01:48 |
| 01721 | fix(onboarding): load saved identity defaults | 2025-12-19 02:40 |
| 01724 | fix(onboarding): default identity to Clawd | 2025-12-19 03:12 |
| 01738 | chore: prep 2.0.0-beta1 release | 2025-12-19 18:02 |
| 01742 | chore: update appcast for 2.0.0-beta1 | 2025-12-19 18:24 |
| 01747 | feat(templates): centralize workspace templates | 2025-12-19 18:12 |
| 01857 | docs(onboarding): refine bootstrap convo | 2025-12-20 15:54 |
| 01863 | Merge remote-tracking branch 'origin/main' | 2025-12-20 17:33 |
| 01873 | docs(onboarding): document chat kickoff | 2025-12-20 16:51 |
| 01881 | test: stabilize gateway sigterm startup | 2025-12-20 18:29 |
| 01882 | docs(templates): update workspace template guidance | 2025-12-20 17:35 |
| 01883 | docs(onboarding): add soul creation step | 2025-12-20 17:38 |

## Narrative

### Pairing and Onboarding (Commits 01713-01747)

Silent SSH auto-approve was added for node pairing (01713), alongside node mode and permission UX (01715). Onboarding identity defaults were loaded (01721) with Clawd as the default (01724). Release preparation for 2.0.0-beta1 (01738) and appcast updates (01742) marked a milestone. Workspace templates were centralized (01747).

### Bootstrap and Templates (Commits 01857-01883)

Onboarding bootstrap conversation was refined (01857). Workspace template guidance was updated (01882) with soul creation steps (01883). Chat kickoff documentation was added (01873). Gateway sigterm startup testing was stabilized (01881), and a merge commit integrated upstream changes (01863).

## Cross-references

- [core-feature](core-feature.md) -- lifecycle features enable core onboarding capabilities
- [documentation](documentation.md) -- onboarding and template docs overlap
- [config](config.md) -- release preparation overlaps with configuration
