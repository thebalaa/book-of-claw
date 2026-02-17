# Theme: iOS

The iOS theme is new in the 01501-02000 range, spanning 4 commits addressing Tailnet/MagicDNS canvas actions, camera clip clamp regression testing, canvas and screen handling refinement, and A2UI action body parsing isolation.

## Commits

| # | Subject | Date |
|---|---------|------|
| 01710 | iOS: allow Tailnet/MagicDNS canvas actions | 2025-12-19 00:52 |
| 01711 | iOS: fix camera clip clamp regression test | 2025-12-19 00:53 |
| 01730 | fix(ios): refine canvas and screen handling | 2025-12-19 12:39 |
| 01739 | fix(ios): make parseA2UIActionBody nonisolated | 2025-12-19 18:10 |

## Narrative

### Canvas and Platform Refinement (Commits 01710-01739)

Tailnet and MagicDNS canvas actions were enabled on iOS (01710), allowing canvas interactions over Tailscale networks. A camera clip clamp regression test was fixed (01711). Canvas and screen handling were refined for better iOS-specific behavior (01730). The parseA2UIActionBody method was marked nonisolated (01739) to resolve Swift concurrency warnings and enable off-main-actor parsing.

## Cross-references

- [networking](networking.md) -- Tailnet canvas actions are a networking feature
- [core-feature](core-feature.md) -- iOS canvas features implement core capabilities
- [testing](testing.md) -- camera regression test overlaps
