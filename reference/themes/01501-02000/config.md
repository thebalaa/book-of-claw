# Theme: Config

Config commits in the 01501-02000 range span 31 entries covering Android cleartext policy, gateway canvas host configuration, WebSocket payload limits, iOS HTTP loading policy, protocol schema regeneration, release preparation, dependency management, workspace templates, skills configuration paths, gateway port and bind configuration, SSH autofill, package metadata, and platform-specific compiler and framework settings.

## Commits

| # | Subject | Date |
|---|---------|------|
| 01654 | fix(android): allow cleartext for tailnet web | 2025-12-18 09:12 |
| 01667 | Gateway: optional canvas host | 2025-12-18 11:35 |
| 01691 | Gateway: raise client maxPayload | 2025-12-18 19:48 |
| 01692 | iOS: allow HTTP loads in WKWebView | 2025-12-18 19:59 |
| 01696 | Gateway: enable canvas host + inject action bridge | 2025-12-18 23:32 |
| 01731 | fix(macos): allow fractional timeout | 2025-12-19 12:40 |
| 01735 | chore(protocol): regenerate schema | 2025-12-19 17:52 |
| 01737 | chore: log gateway env timings | 2025-12-19 17:54 |
| 01738 | chore: prep 2.0.0-beta1 release | 2025-12-19 18:02 |
| 01742 | chore: update appcast for 2.0.0-beta1 | 2025-12-19 18:24 |
| 01743 | fix(deps): include playwright-core in dependencies | 2025-12-19 18:38 |
| 01746 | docs: document WhatsApp and Telegram config | 2025-12-19 19:03 |
| 01747 | feat(templates): centralize workspace templates | 2025-12-19 18:12 |
| 01810 | feat(skills): add extraDirs load paths | 2025-12-20 12:26 |
| 01813 | feat: add skills settings and gateway skills management | 2025-12-20 13:33 |
| 01853 | feat: advertise cli path for remote ssh | 2025-12-20 16:43 |
| 01859 | refactor: serve canvas host on gateway port | 2025-12-20 17:13 |
| 01860 | refactor: remove canvasHost port config | 2025-12-20 17:15 |
| 01864 | refactor: trim skill install spec | 2025-12-20 17:39 |
| 01885 | fix: detect main module under PM2 | 2025-12-20 18:39 |
| 01890 | fix: merge bonjour txt records for ssh autofill | 2025-12-20 17:13 |
| 01891 | fix: resolve bonjour txt for ssh autofill | 2025-12-20 18:40 |
| 01919 | chore: add homepage metadata | 2025-12-20 21:12 |
| 01924 | chore: fix eightctl homepage | 2025-12-20 21:18 |
| 01929 | feat: support gateway bind config | 2025-12-20 21:52 |
| 01951 | feat(macos): load models from gateway | 2025-12-20 23:24 |
| 01956 | chore(android): update icons and platform config | 2025-12-20 23:30 |
| 01957 | chore(android): update kotlin compiler settings | 2025-12-20 23:35 |
| 01965 | chore(ios): link AppIntents framework | 2025-12-21 00:22 |
| 01978 | chore: ignore ClawdisKit .swiftpm | 2025-12-21 01:10 |
| 01994 | feat(mac): add tailscale settings | 2025-12-21 01:16 |

## Narrative

### Platform Policies and Gateway Config (Commits 01654-01742)

Android cleartext was allowed for tailnet web access (01654). Gateway canvas host became optional (01667) with action bridge injection (01696). WebSocket maxPayload was raised (01691). iOS HTTP loads were allowed in WKWebView (01692). Fractional timeout support was added (01731). Protocol schema was regenerated (01735). Gateway env timings were logged (01737). Release prep for 2.0.0-beta1 (01738) and appcast updates (01742) accompanied the milestone. Playwright-core was included in dependencies (01743).

### Skills and Gateway Configuration (Commits 01746-01929)

WhatsApp and Telegram config was documented (01746). Workspace templates were centralized (01747). Skills extra directories (01810) and settings management (01813) expanded configuration surfaces. CLI path advertising for SSH (01853) and canvas host port serving on the gateway (01859, 01860) consolidated configuration. Skills install spec was trimmed (01864). PM2 detection was fixed (01885). SSH autofill via Bonjour TXT records was configured (01890-01891). Homepage metadata was added (01919, 01924). Gateway bind config was supported (01929).

### Platform Updates (Commits 01951-01994)

Models loading from gateway was configured for macOS (01951). Android icons and platform config were updated (01956). Kotlin compiler settings were updated (01957). iOS AppIntents framework was linked (01965). ClawdisKit .swiftpm was gitignored (01978). Tailscale settings were added (01994).

## Cross-references

- [devops](devops.md) -- release prep and CI config overlap
- [build](build.md) -- platform configuration accompanies build changes
- [core-feature](core-feature.md) -- new features require configuration surfaces
