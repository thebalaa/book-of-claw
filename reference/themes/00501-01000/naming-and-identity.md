# Theme: Naming and Identity

Across commits 501-1000, the project underwent two major naming transitions. The first replaced the legacy "warelay" name with "clawdis" (579, 650), culminating in a version 2.0.0 milestone. The second, larger rename replaced "relay" with "gateway" throughout the entire codebase (908, 919, 920, 922, 933, 945) as the architecture shifted from a simple message relay to a WebSocket-based gateway server. Both renames touched documentation, code, CLI commands, UI labels, and IPC socket paths, reflecting the project's commitment to keeping names aligned with evolving architecture.

## Commits

| # | Subject | Date |
|---|---------|------|
| 00522 | chore(mac): rename relay root label to Clawdis project root | 2025-12-06 23:56 |
| 00579 | chore: purge warelay references | 2025-12-07 03:36 |
| 00650 | chore: bump version to 2.0.0 | 2025-12-07 16:28 |
| 00908 | CLI: remove relay/heartbeat legacy commands | 2025-12-09 15:06 |
| 00919 | Mac: launch gateway and add relay installer | 2025-12-09 16:15 |
| 00920 | Debug: rename restart button to Gateway | 2025-12-09 16:16 |
| 00922 | Docs: rename relay command to gateway | 2025-12-09 17:24 |
| 00933 | IPC: rename relay socket to gateway.sock | 2025-12-09 17:03 |
| 00945 | chore: rename relay to gateway | 2025-12-09 18:00 |

## Narrative

The first naming change in this range was a minor UI label fix. Commit 00522 (2025-12-06 23:56) renamed the debug setting label from "Relay project root" to "Clawdis project root" to better reflect the product name in the macOS settings interface.

The warelay-to-clawdis rename was completed in commit 00579 (2025-12-07 03:36), which purged all remaining "warelay" references from CHANGELOG.md, README.md, and documentation files, updating IPC socket paths from ~/.warelay to ~/.clawdis and command examples to use the clawdis prefix. This naming cleanup was sealed by commit 00650 (2025-12-07 16:28), which bumped the package version from 1.4.0 to 2.0.0, marking the major release milestone where the project fully adopted its new identity.

The second and larger naming transition began on December 9th as the architecture evolved from a message relay to a WebSocket gateway. Commit 00908 (2025-12-09 15:06) removed legacy relay and heartbeat command references from the CLI and updated GatewayChannel to use typed parameters. Commit 00919 (16:15) updated the macOS app to launch the gateway process instead of the relay, adding installer helpers for the gateway binary. The immediate follow-up, commit 00920 (16:16), changed the debug menu button label from "Restart relay" to "Restart Gateway" as a one-line UI text update.

Documentation caught up in commit 00922 (17:24), which updated all documentation to use "gateway" terminology instead of "relay" throughout the docs directory. Infrastructure naming followed in commit 00933 (17:03), which renamed the IPC socket file from relay.sock to gateway.sock and updated all socket path references.

The comprehensive rename concluded in commit 00945 (2025-12-09 18:00), which swept through the entire codebase updating AGENTS.md, CHANGELOG.md, README.md, all documentation files, code comments, variable names, file names, and user-facing text from "relay" to "gateway". This single commit touched every layer of the project to ensure naming consistency.

The naming work in this range demonstrates a pattern of incremental renaming followed by a comprehensive sweep. Both the warelay-to-clawdis and relay-to-gateway transitions followed the same approach: targeted fixes to the most visible references first, followed by a thorough pass to catch everything remaining.

## Related Themes

- [type-safety](type-safety.md) -- commit 00907 introduced typed protocol models that enforced the new gateway naming at the type level
- [multi-provider](multi-provider.md) -- the relay-to-gateway rename reflected the architectural shift from single-provider relay to multi-provider gateway
