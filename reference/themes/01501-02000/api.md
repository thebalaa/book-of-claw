# Theme: API

API commits in the 01501-02000 range span 65 entries covering ClawdisKit A2UI sharing, canvas protocol refinements (canvas.present, snapshot, action bridge), browser MCP tool dispatch and control API simplification, the skills system API (load, install, metadata, settings), SSH autofill helpers, tool summary streaming, steerable agent loop, provider status RPCs, models.list, and tailscale authentication. The API surface expanded significantly to support the skills ecosystem and multi-device control.

## Commits

| # | Subject | Date |
|---|---------|------|
| 01664 | A2UI: share bundle via ClawdisKit | 2025-12-18 10:44 |
| 01669 | A2UI: share web UI and action bridge | 2025-12-18 11:38 |
| 01697 | CLI: add nodes canvas snapshot + duration parsing | 2025-12-18 23:32 |
| 01704 | Canvas host: fix action bridge invocation | 2025-12-19 00:04 |
| 01716 | feat: add mac node screen recording and ssh tunnel | 2025-12-19 02:33 |
| 01718 | feat: add node screen recording across apps | 2025-12-19 02:56 |
| 01720 | refactor: replace canvas.show with canvas.present | 2025-12-19 03:35 |
| 01722 | feat(agent): load workspace skills | 2025-12-19 03:38 |
| 01723 | test: add canvas.present IPC coverage | 2025-12-19 03:53 |
| 01727 | fix(control-ui): drop /ui alias | 2025-12-19 05:13 |
| 01733 | Mac: add summarize tool | 2025-12-19 17:46 |
| 01735 | chore(protocol): regenerate schema | 2025-12-19 17:52 |
| 01739 | fix(ios): make parseA2UIActionBody nonisolated | 2025-12-19 18:10 |
| 01746 | docs: document WhatsApp and Telegram config | 2025-12-19 19:03 |
| 01768 | feat(browser): add MCP tool dispatch | 2025-12-19 23:57 |
| 01770 | docs(browser): add MCP tool spec | 2025-12-19 23:57 |
| 01780 | refactor(browser): trim observe endpoints | 2025-12-20 02:07 |
| 01783 | docs(browser): update browser tool surface | 2025-12-20 02:53 |
| 01785 | refactor(browser): simplify control API | 2025-12-20 03:27 |
| 01786 | docs(browser): simplify control contract | 2025-12-20 03:27 |
| 01806 | feat: parse skill install metadata | 2025-12-20 12:59 |
| 01807 | refactor(canvas): host A2UI via gateway | 2025-12-20 12:17 |
| 01809 | feat(skills): load bundled skills | 2025-12-20 12:23 |
| 01813 | feat: add skills settings and gateway skills management | 2025-12-20 13:33 |
| 01821 | fix(agents): handle managed skills list | 2025-12-20 12:59 |
| 01826 | fix: add ClawdisIPC import | 2025-12-20 14:03 |
| 01829 | feat(runtime): bootstrap PATH for clawdis | 2025-12-20 13:31 |
| 01830 | fix(agents): support loadSkillsFromDir result | 2025-12-20 13:31 |
| 01832 | feat(web): stream tool summaries | 2025-12-20 13:47 |
| 01845 | fix: route voice wake to main | 2025-12-20 15:30 |
| 01849 | feat(agent): queue steering messages | 2025-12-20 16:10 |
| 01853 | feat: advertise cli path for remote ssh | 2025-12-20 16:43 |
| 01854 | refactor: extract canvas a2ui handler | 2025-12-20 16:45 |
| 01855 | test: cover tailnet hello canvas host | 2025-12-20 16:45 |
| 01859 | refactor: serve canvas host on gateway port | 2025-12-20 17:13 |
| 01861 | feat: refresh skills metadata and toggles | 2025-12-20 17:23 |
| 01866 | docs: update mac skills install types | 2025-12-20 17:40 |
| 01868 | refactor: tighten steerable agent loop typing | 2025-12-20 17:50 |
| 01876 | test: include token for canvas host hello | 2025-12-20 18:00 |
| 01877 | fix: accept duplex upgrade sockets | 2025-12-20 18:00 |
| 01878 | docs: update summarize installer spec | 2025-12-20 18:00 |
| 01886 | docs: add ordercli skill | 2025-12-20 18:50 |
| 01887 | fix: use file-type for mime sniffing | 2025-12-20 19:13 |
| 01888 | test: expand mime detection coverage | 2025-12-20 19:16 |
| 01890 | fix: merge bonjour txt records for ssh autofill | 2025-12-20 17:13 |
| 01891 | fix: resolve bonjour txt for ssh autofill | 2025-12-20 18:40 |
| 01892 | fix(web): handle self-chat mode | 2025-12-20 19:31 |
| 01893 | fix: use local timestamps in agent envelope | 2025-12-20 19:40 |
| 01894 | refactor: centralize gateway parsing | 2025-12-20 19:53 |
| 01895 | test: cover ssh autofill helpers | 2025-12-20 19:53 |
| 01898 | fix(gateway): start browser control server | 2025-12-20 19:16 |
| 01900 | fix(browser): allow control server without playwright | 2025-12-20 19:16 |
| 01907 | feat: add gateway-daemon command | 2025-12-20 19:35 |
| 01916 | feat: require job name | 2025-12-20 19:56 |
| 01949 | feat: add models.list | 2025-12-20 23:23 |
| 01951 | feat(macos): load models from gateway | 2025-12-20 23:24 |
| 01955 | feat(web): emit provider status updates | 2025-12-20 23:30 |
| 01960 | test(gateway): cover provider status/logout RPCs | 2025-12-20 23:51 |
| 01963 | fix(chat): refine onboarding bubbles | 2025-12-20 23:15 |
| 01974 | fix: restore canvas action bridge | 2025-12-21 00:53 |
| 01975 | fix: emit delta-only node system events | 2025-12-21 00:55 |
| 01976 | fix: streamline WhatsApp login flow | 2025-12-21 00:59 |
| 01982 | feat(gateway): add tailscale auth + pam | 2025-12-21 00:44 |
| 01986 | fix: use A2UI message context | 2025-12-21 01:48 |
| 01998 | fix: prefer header mime for media extensions | 2025-12-21 02:34 |

## Narrative

### Canvas and Protocol Refinement (Commits 01664-01739)

ClawdisKit A2UI bundle sharing (01664) and web UI action bridge sharing (01669) established the cross-platform canvas API. Canvas snapshot CLI support with duration parsing (01697) and action bridge fixes (01704) matured the canvas protocol. Screen recording and SSH tunnel APIs were added (01716, 01718). The canvas.show command was replaced with canvas.present (01720). Workspace skills loading API emerged (01722) with IPC test coverage (01723). The summarize tool was added (01733). Protocol schema was regenerated (01735).

### Browser Control and Skills APIs (Commits 01746-01868)

Browser MCP tool dispatch (01768) with test routes (01769) and documentation (01770) introduced tool-based browser control. The API surface was progressively trimmed: observe endpoints removed (01780), browser tool surface updated (01783), control API simplified (01785). Skills APIs expanded: install metadata parsing (01806), bundled skills loading (01809), settings and gateway management (01813), managed skills list (01821), loadSkillsFromDir support (01830). Tool summary streaming (01832) and runtime PATH bootstrapping (01829) rounded out the skills API. The steerable agent loop typing was tightened (01868).

### Gateway Services and Auth (Commits 01876-02000)

Canvas host hello required tokens (01876), and duplex upgrade sockets were accepted (01877). MIME sniffing switched to file-type (01887) with expanded coverage (01888). SSH autofill helpers used Bonjour TXT records (01890-01891, 01895). Self-chat mode was handled (01892). Gateway parsing was centralized (01894). Browser control server startup was fixed (01898, 01900). The gateway-daemon command (01907) and job naming (01916) formalized service operation. Models.list (01949) with macOS loading (01951) and provider status updates (01955) with test coverage (01960) enabled dynamic configuration. Canvas action bridge was restored (01974), delta-only node events added (01975). Tailscale auth with PAM (01982) closed the range.

## Cross-references

- [core-feature](core-feature.md) -- API additions implement the protocol layer for new features
- [testing](testing.md) -- most API changes include test coverage
- [documentation](documentation.md) -- API specs are documented alongside implementation
