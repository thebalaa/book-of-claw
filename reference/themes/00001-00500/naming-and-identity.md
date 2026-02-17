# Theme: Naming and Identity

Seven commits trace the project's identity evolution from initial branding touches through a major rebranding phase spanning three distinct identities: Warelay, Clawd, and CLAWDIS. The naming changes progress from cosmetic flourishes to command interface compression, followed by brand normalization and documentation reorganization, and culminating in a complete package rebrand that introduces a macOS companion app under the final CLAWDIS name.

## Commits

| # | Subject | Date |
|---|---------|------|
| 00007 | Add 📡 emoji to README header | 2025-11-24 11:41 |
| 00029 | Rename setup->up (alias kept) and keep process alive | 2025-11-24 14:43 |
| 00031 | Add wa alias; drop deprecated setup alias | 2025-11-24 15:31 |
| 00258 | Fix: warelay lowercase | 2025-11-25 18:27 |
| 00269 | Rename claude-config.md to clawd.md, update credits | 2025-11-25 19:07 |
| 00415 | feat: add mac companion app | 2025-12-05 23:13 |
| 00417 | chore: rename package to clawdis | 2025-12-05 23:19 |

## Narrative Thread

The project's naming journey began with cosmetic touches. Commit 00007 added a satellite dish emoji (📡) to the README title, establishing early visual identity for the Warelay WhatsApp relay tool. The interface then underwent compression: commit 00029 renamed the `setup` command to `up` while retaining backward compatibility through a deprecated alias. Two commits later (00031), the `wa` alias emerged as an even terser alternative and the old `setup` alias was removed entirely. This compression sequence shows deliberate evolution from verbose `setup` to minimal `wa`.

Brand normalization appeared mid-project. Commit 00258 standardized inconsistent capitalization by enforcing lowercase "warelay" throughout documentation. Documentation reorganization followed when commit 00269 renamed `claude-config.md` to `clawd.md`, reflecting the personal assistant persona that had emerged during the project's development. This commit also added Clawd as co-author in credits with they/them pronouns, formalizing the AI assistant's role in the project's identity.

The final rebrand arrived with the macOS companion app. Commit 00415 introduced the SwiftUI-based menubar application and revealed the new name: CLAWDIS, a play on "Clawd" the lobster mascot. The package rename followed immediately in commit 00417, changing all references from "warelay" to "clawdis" throughout the codebase. This completed the identity arc from utilitarian "Warelay" through personified "Clawd" to the final branded form "CLAWDIS", with the macOS app serving as the capstone that necessitated and embodied the rebrand.

## Related Themes

- [verbosity-and-ux](verbosity-and-ux.md) — command naming directly impacts user experience
- [documentation](documentation.md) — documentation reorganization accompanied naming changes
