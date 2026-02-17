# Theme: Testing

Testing commits in the 01501-02000 range span 31 entries covering OAuth credential tests, auto-reply agent_end parsing, FileHandle safety guards, chat abort stabilization, node list and describe coverage, bridge auto-reconnect, canvas.present IPC coverage, browser MCP tool routes, skills loading edge cases, tool summary streaming, canvas host hello, gateway sigterm startup, MIME detection, SSH autofill helpers, and provider status RPCs.

## Commits

| # | Subject | Date |
|---|---------|------|
| 01501 | fix(macos): clarify OAuth detection | 2025-12-14 19:10 |
| 01507 | fix(auto-reply): parse agent_end and avoid rpc JSON leaks | 2025-12-16 20:35 |
| 01512 | test(macos): guard FileHandle read APIs | 2025-12-16 10:41 |
| 01552 | test: avoid ENOTEMPTY cleanup race | 2025-12-17 19:14 |
| 01573 | Tests: cover clawdis-mac node list | 2025-12-17 20:03 |
| 01585 | test: stabilize chat abort | 2025-12-17 22:04 |
| 01591 | test: harden abort/stream + hide session switching | 2025-12-17 16:21 |
| 01601 | fix: make chat.abort reliable | 2025-12-17 22:33 |
| 01620 | refactor: Include node caps + hardware in node.list | 2025-12-18 00:12 |
| 01636 | test: Test bridge auto-reconnect | 2025-12-18 02:18 |
| 01640 | test: Loosen chat.abort mismatch timeout | 2025-12-18 01:20 |
| 01660 | Tests: cover node.describe for connected unpaired nodes | 2025-12-18 08:38 |
| 01661 | Tests: show unpaired nodes in nodes status | 2025-12-18 08:38 |
| 01663 | ci: raise iOS coverage | 2025-12-18 10:34 |
| 01711 | iOS: fix camera clip clamp regression test | 2025-12-19 00:53 |
| 01723 | test: add canvas.present IPC coverage | 2025-12-19 03:53 |
| 01741 | ci: lower iOS coverage gate | 2025-12-19 18:23 |
| 01769 | test(browser): cover MCP tool routes | 2025-12-19 23:57 |
| 01787 | test(browser): cover agent contract | 2025-12-20 09:34 |
| 01823 | test(agents): cover empty managed skills dir | 2025-12-20 13:04 |
| 01825 | fix: clarify SSH test failure | 2025-12-20 14:02 |
| 01834 | test(web): cover tool summary streaming | 2025-12-20 13:53 |
| 01851 | fix(macos): streamline onboarding ui | 2025-12-20 15:20 |
| 01855 | test: cover tailnet hello canvas host | 2025-12-20 16:45 |
| 01875 | test: mock embedded queue in auto-reply tests | 2025-12-20 18:00 |
| 01876 | test: include token for canvas host hello | 2025-12-20 18:00 |
| 01881 | test: stabilize gateway sigterm startup | 2025-12-20 18:29 |
| 01888 | test: expand mime detection coverage | 2025-12-20 19:16 |
| 01895 | test: cover ssh autofill helpers | 2025-12-20 19:53 |
| 01950 | test: cover models.list | 2025-12-20 23:24 |
| 01960 | test(gateway): cover provider status/logout RPCs | 2025-12-20 23:51 |

## Narrative

### Foundation Tests (Commits 01501-01601)

OAuth detection tests covered various credential formats and failure modes (01501). Auto-reply tests validated agent_end parsing (01507). FileHandle read API guards were added (01512). Cleanup race conditions were avoided (01552). Node list CLI output was tested (01573). Chat abort saw repeated stabilization (01585, 01591, 01601) with timeout loosening (01640).

### Node and Canvas Coverage (Commits 01620-01769)

Node list tests covered capabilities and hardware fields (01620). Bridge auto-reconnect was tested (01636). Node describe and unpaired node status tests were added (01660-01661). iOS coverage gates were managed (01663, 01741). Camera clip clamp regression was tested (01711). Canvas.present IPC coverage was added (01723). Browser MCP tool routes (01769) and agent contract (01787) expanded browser testing.

### Skills and Gateway Tests (Commits 01823-01960)

Empty managed skills directory was covered (01823). SSH test failure messages were clarified (01825). Tool summary streaming was tested (01834). Onboarding UI tests were added (01851). Canvas host hello tests covered tailnet scenarios (01855, 01876). Auto-reply test mocking was improved (01875). Gateway sigterm startup was stabilized (01881). MIME detection coverage expanded (01888). SSH autofill helpers were tested (01895). Models.list (01950) and provider status/logout RPCs (01960) received coverage.

## Cross-references

- [api](api.md) -- API additions are tested alongside implementation
- [core-feature](core-feature.md) -- new features drive test additions
- [bugfix](bugfix.md) -- regression tests accompany bug fixes
