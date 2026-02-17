# Theme: DevOps

DevOps commits in the 01501-02000 range span 36 entries covering wireit build orchestration, DNS zone management tooling, CI coverage gates and retries, gateway lifecycle management (port retry, failure details, bun compilation, launchd), DMG packaging, A2UI bundle updates, PM2 detection, gateway sigterm testing, browser control server, and iOS CI workflow splitting.

## Commits

| # | Subject | Date |
|---|---------|------|
| 01530 | Build: add wireit | 2025-12-17 13:20 |
| 01543 | CLI: dns setup supports sudo-owned CoreDNS config | 2025-12-17 17:15 |
| 01544 | CLI: make dns setup create valid zone | 2025-12-17 17:25 |
| 01546 | CLI: bootstrap invalid wide-area DNS zone | 2025-12-17 18:02 |
| 01663 | ci: raise iOS coverage | 2025-12-18 10:34 |
| 01672 | ci: fix swiftformat | 2025-12-18 12:50 |
| 01675 | ci: retry submodule checkout | 2025-12-18 13:26 |
| 01677 | ci: retry swiftpm build/test | 2025-12-18 13:37 |
| 01683 | ci: relax iOS coverage gate | 2025-12-18 14:26 |
| 01712 | CLI: retry --force until gateway port is free | 2025-12-18 23:56 |
| 01726 | fix(control-ui): serve dashboard at root | 2025-12-19 05:11 |
| 01736 | perf: move gateway env checks off main | 2025-12-19 17:54 |
| 01737 | chore: log gateway env timings | 2025-12-19 17:54 |
| 01740 | perf: throttle gateway environment checks | 2025-12-19 18:21 |
| 01741 | ci: lower iOS coverage gate | 2025-12-19 18:23 |
| 01745 | fix: surface gateway failure details | 2025-12-19 18:48 |
| 01749 | feat(gateway): support bun-compiled embedded gateway | 2025-12-19 19:20 |
| 01750 | build(macos): bundle bun gateway | 2025-12-19 19:20 |
| 01751 | feat(macos): run bundled gateway via launchd | 2025-12-19 19:20 |
| 01754 | fix(macos): sign bun gateway with jit entitlements | 2025-12-19 19:24 |
| 01760 | build(macos): add dmg+zip packaging | 2025-12-19 22:22 |
| 01791 | chore: update a2ui bundle | 2025-12-20 11:32 |
| 01853 | feat: advertise cli path for remote ssh | 2025-12-20 16:43 |
| 01881 | test: stabilize gateway sigterm startup | 2025-12-20 18:29 |
| 01885 | fix: detect main module under PM2 | 2025-12-20 18:39 |
| 01896 | chore(deps): add chromium-bidi and long | 2025-12-20 19:16 |
| 01898 | fix(gateway): start browser control server | 2025-12-20 19:16 |
| 01899 | build(macos): bundle playwright in embedded gateway | 2025-12-20 19:16 |
| 01902 | chore: fix biome + swiftformat lint | 2025-12-20 19:01 |
| 01903 | chore: fix swiftformat lint | 2025-12-20 19:48 |
| 01906 | chore: fix biome formatting | 2025-12-20 20:33 |
| 01910 | chore: format macos relay | 2025-12-20 20:41 |
| 01931 | chore: swiftformat macos settings | 2025-12-20 21:52 |
| 01985 | build: update iOS lint scripts | 2025-12-21 01:47 |
| 01988 | ci: split ios workflow | 2025-12-21 00:49 |
| 01992 | build: silence mac packaging warnings | 2025-12-21 02:06 |

## Narrative

### Build Orchestration and DNS (Commits 01530-01546)

Wireit was added for build task orchestration (01530). DNS setup tooling for wide-area discovery supported sudo-owned CoreDNS configs (01543), valid zone creation (01544), and invalid zone bootstrapping (01546).

### CI and Gateway Lifecycle (Commits 01663-01760)

iOS coverage was raised (01663) then relaxed (01683, 01741). CI fixes addressed SwiftFormat (01672), submodule retries (01675), and SwiftPM retries (01677). Gateway lifecycle improvements included port retry (01712), env check offloading (01736-01737, 01740), failure detail surfacing (01745), bun-compiled embedding (01749-01750), launchd support (01751), JIT entitlements signing (01754), and DMG+ZIP packaging (01760).

### Operations and CI Finalization (Commits 01791-01992)

A2UI bundle was updated (01791). CLI path advertising for remote SSH (01853) improved remote operations. Gateway sigterm startup testing was stabilized (01881). PM2 main module detection was fixed (01885). Browser control server startup (01898) and Playwright bundling (01899) expanded the gateway's capabilities. Multiple formatting passes enforced code style (01902-01903, 01906, 01910, 01931). iOS lint scripts were updated (01985), iOS workflow was split (01988), and Mac packaging warnings were silenced (01992).

## Cross-references

- [build](build.md) -- build and devops overlap significantly for CI and packaging
- [networking](networking.md) -- DNS tooling overlaps with networking
- [core-feature](core-feature.md) -- gateway lifecycle supports core feature deployment
