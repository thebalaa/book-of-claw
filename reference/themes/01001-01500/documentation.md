# Theme: Documentation

Documentation in commits 1001-1500 progressed from feature-specific docs like voice wake routing (1095, 1101) and gateway refactor notes (1162), through a major documentation refresh replacing Tau with Pi terminology (1258-1260), into comprehensive onboarding guides (1237, 1441), platform-specific runbooks for iOS (1340, 1345) and Android (1393), and architectural documentation for new features like Bonjour discovery (1464), browser control (1275, 1318), and cron scheduling (1249).

## Commits

| # | Subject | Date |
|---|---------|------|
| 01042 | chore(test): document force run and relax coverage scope | 2025-12-10 01:06 |
| 01073 | gateway: force ws-only clients | 2025-12-10 16:27 |
| 01095 | docs: clarify voice wake last-channel routing | 2025-12-12 16:26 |
| 01101 | docs(readme): describe voice wake reply routing | 2025-12-12 16:42 |
| 01162 | docs: finalize gateway refactor notes | 2025-12-12 22:26 |
| 01195 | docs(agents): forbid git stash without consent | 2025-12-13 02:08 |
| 01207 | docs(mac): drop screenshot alias plan | 2025-12-13 02:51 |
| 01237 | docs(onboarding): explain WhatsApp + Telegram setup | 2025-12-13 15:33 |
| 01249 | docs(cron): update store + run log paths | 2025-12-13 19:52 |
| 01252 | docs(onboarding): explain primary gateway and remotes | 2025-12-13 12:55 |
| 01258 | docs(site): refresh clawdis.ai for Pi | 2025-12-13 13:25 |
| 01259 | docs(readme): pi-only wording | 2025-12-13 13:26 |
| 01260 | docs: pi-only terminology | 2025-12-13 13:26 |
| 01268 | docs: pixel lobster terminal theme | 2025-12-13 16:23 |
| 01275 | docs(clawdis-mac): improve help for browser control | 2025-12-13 16:23 |
| 01278 | docs(session): note gateway session source of truth | 2025-12-13 16:33 |
| 01293 | docs(mac): document clawdis ui passthrough | 2025-12-13 17:17 |
| 01318 | feat(browser): add ai snapshot refs + click | 2025-12-13 18:48 |
| 01340 | docs(ios): add Iris connection runbook | 2025-12-13 23:49 |
| 01341 | docs(readme): describe macOS + iOS companion apps | 2025-12-13 23:50 |
| 01345 | docs(ios): update Iris connect runbook | 2025-12-14 00:08 |
| 01349 | docs(changelog): add 2.0.0-beta1 entry | 2025-12-14 00:34 |
| 01350 | docs(readme): reflect gateway + companion apps | 2025-12-14 00:34 |
| 01352 | docs(site): note fn+F2 on mac | 2025-12-14 00:42 |
| 01357 | docs(telegram): clarify polling + webhook config | 2025-12-14 00:49 |
| 01358 | docs(remote): clarify ssh tunneling | 2025-12-14 00:49 |
| 01359 | docs: clarify legacy control + sessions path | 2025-12-14 00:49 |
| 01360 | docs: refer to session store | 2025-12-14 00:50 |
| 01361 | docs(clawd): update install + session store path | 2025-12-14 00:50 |
| 01362 | docs(index): update architecture + quickstart | 2025-12-14 00:50 |
| 01363 | docs(site): refresh footer + agent blurb | 2025-12-14 00:50 |
| 01364 | docs(site): fix Clawd setup link | 2025-12-14 00:52 |
| 01365 | docs: sync telegram + remote summaries | 2025-12-14 00:52 |
| 01370 | docs(site): update docs nav | 2025-12-14 00:55 |
| 01383 | feat(macos): add OpenAI Whisper tool | 2025-12-14 01:56 |
| 01393 | docs(android): expand node README | 2025-12-14 02:14 |
| 01415 | fix: expand reply cwd (~) and document AGENTS | 2025-12-14 02:59 |
| 01422 | feat: bootstrap agent workspace and AGENTS.md | 2025-12-14 03:14 |
| 01424 | docs: recommend git repo for workspace backups | 2025-12-14 03:18 |
| 01441 | docs: add onboarding spec | 2025-12-14 03:59 |
| 01464 | docs(bonjour): document gateway and iOS discovery logging | 2025-12-14 04:34 |
| 01465 | docs(agents): prefer Observation framework | 2025-12-14 04:32 |
| 01500 | docs(macos): critter-first onboarding copy | 2025-12-14 06:26 |

## Narrative

### Feature Documentation (1042, 1073, 1095, 1101)

Early documentation commits in this range covered specific features. Commit 01042 documented the test:force helper. Commit 01073 updated documentation to reflect the WebSocket-only gateway client model. Commits 01095 and 01101 documented voice wake last-channel routing behavior and the removal of forward target preferences.

### Architecture and Refactor Notes (1162, 1195, 1207)

Commit 01162 added architecture documentation summarizing the gateway refactoring effort including endpoint resolution centralization, payload decoding extraction, and event bus migration. Commit 01195 established safety guidelines forbidding agent use of git stash without user consent. Commit 01207 removed a planned screenshot alias feature from documentation.

### Onboarding and Messaging Setup Guides (1237, 1249, 1252)

Commit 01237 added comprehensive WhatsApp and Telegram setup documentation for the onboarding flow. Commit 01249 updated cron store and run log file paths. Commit 01252 clarified onboarding content explaining the primary gateway concept and remote access options.

### Pi Migration Documentation Refresh (1258-1260)

Commits 01258-01260 performed a major documentation overhaul replacing all references to "Tau" with "Pi" as the sole coding agent. This touched README, system prompts, configuration examples, troubleshooting guides, and agent integration docs across dozens of files.

### Browser Control and Session Documentation (1268, 1275, 1278, 1293, 1318)

Commit 01268 documented the Pixel Lobster terminal theme. Commit 01275 improved browser control help text. Commit 01278 documented the Gateway as the authoritative session source. Commit 01293 documented UI argument passthrough. Commit 01318 documented the new AI snapshot format with clickable reference IDs for agent-driven browser interaction.

### Platform Runbooks and README Updates (1340-1341, 1345, 1349-1350)

Commit 01340 created a comprehensive iOS node connection runbook for Iris integration. Commit 01341 updated the README with macOS and iOS companion app descriptions. Commit 01345 refined the iOS runbook with clearer node selection guidance. Commits 01349-01350 added the 2.0.0-beta1 changelog entry and updated the README to reflect the Gateway architecture.

### Site-Wide Documentation Refresh (1352, 1357-1365, 1370)

A rapid series of documentation commits between 01352 and 01370 refreshed the documentation site. This included Telegram polling and webhook configuration (1357), SSH tunneling topology (1358), legacy control channel deprecation (1359), session store references (1360-1361), architecture quickstart (1362), footer and navigation updates (1363, 1370), and link fixes (1364-1365).

### Agent Workspace and Platform Documentation (1383, 1393, 1415, 1422, 1424)

Commit 01383 documented the OpenAI Whisper tool. Commit 01393 expanded the Android node README. Commit 01415 documented AGENTS.md configuration. Commit 01422 created the agent workspace bootstrapping documentation and setup guide. Commit 01424 recommended git repos for workspace backups.

### Onboarding and Discovery Documentation (1441, 1464-1465, 1500)

Commit 01441 created a comprehensive onboarding specification document. Commit 01464 documented Bonjour gateway and iOS discovery logging. Commit 01465 updated agent docs to recommend the Swift Observation framework. Commit 01500 revised macOS onboarding copy to emphasize the critter-first approach to agent identity creation.

## Cross-references

- [testing](testing.md) -- test documentation and coverage scope docs
- [ux](ux.md) -- onboarding documentation and user-facing copy
