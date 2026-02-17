# Theme: Security

Security commits in the 01501-02000 range span 5 entries covering wide-area Bonjour security over Tailscale documentation, WhatsApp credential hardening, SSH auto-approve with consent for worktrees, and tailscale authentication with PAM integration.

## Commits

| # | Subject | Date |
|---|---------|------|
| 01532 | Docs: secure wide-area Bonjour over Tailscale | 2025-12-17 14:27 |
| 01687 | Web: harden WhatsApp creds handling | 2025-12-18 17:19 |
| 01713 | feat(pairing): add silent SSH auto-approve | 2025-12-19 01:04 |
| 01714 | docs(agents): require consent for worktrees | 2025-12-19 01:18 |
| 01982 | feat(gateway): add tailscale auth + pam | 2025-12-21 00:44 |

## Narrative

### Network and Credential Security (Commits 01532-01714)

Wide-area Bonjour over Tailscale was documented with security considerations (01532). WhatsApp credentials handling was hardened (01687) to prevent leakage. SSH auto-approve was added for node pairing (01713), with agent consent required for worktree operations (01714), balancing convenience with authorization controls.

### Authentication Infrastructure (Commit 01982)

Tailscale authentication with PAM integration (01982) added network-level authentication to the gateway, enabling secure access control based on Tailscale identity.

## Cross-references

- [networking](networking.md) -- tailscale and Bonjour security overlap
- [core-feature](core-feature.md) -- auth features enable secure multi-device control
- [process-lifecycle](process-lifecycle.md) -- SSH pairing is a lifecycle concern
