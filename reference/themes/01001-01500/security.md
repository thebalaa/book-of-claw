# Theme: Security

Security commits in the 1001-1500 range address control socket peer verification, default allowlist restrictions, TeamID validation, and SSH tunnel hardening. These changes progressively tighten access controls across the system.

## Commits

| # | Subject | Date |
|---|---------|------|
| 01085 | mac: lock control socket to team-signed peers | 2025-12-12 01:22 |
| 01084 | web: default to self-only without config | 2025-12-12 00:50 |
| 01191 | fix(macos): harden remote ssh tunnel | 2025-12-13 01:43 |
| 01205 | security(macos): require TeamID for control socket | 2025-12-13 02:50 |
| 01238 | macOS: add onboarding security notice | 2025-12-13 15:52 |

## Narrative

Commit 01084 implemented a default self-only allowlist when no allowFrom configuration is present, restricting auto-replies to same-phone DMs by default. This prevents unintended message responses to unauthorized contacts.

Commit 01085 added peer verification to the control socket handler using getsockopt(SOL_LOCAL, LOCAL_PEERPID) to accept only same-user or team-signed connections. This was later strengthened by commit 01205, which added explicit TeamID validation requirements for control socket access, preventing unauthorized applications from communicating with the control socket.

Commit 01191 hardened the remote SSH tunnel implementation with improved error handling and connection validation, adding checks to ensure tunnel integrity and proper cleanup on failure.

Commit 01238 added a security notice to the macOS onboarding wizard, informing users about security considerations and best practices during initial setup.

## Cross-references

- [config](config.md) -- self-only default allowlist is a security-oriented configuration change
- [networking](networking.md) -- SSH tunnel hardening relates to network security
