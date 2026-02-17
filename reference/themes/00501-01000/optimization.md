# Theme: Optimization

Optimization commits in the 501-1000 range are focused and targeted rather than forming a sustained campaign. They cover webchat asset bundling with rolldown, the persistent RPC worker replacing per-request CLI spawns, moving blocking work off the main thread in the macOS app, adaptive noise floor tracking for voice wake speech detection, gateway instance reuse to avoid redundant process spawns, and web provider connection reuse for send operations.

## Commits

| # | Subject | Date |
|---|---------|------|
| 00594 | feat(agent): use persistent rpc worker for agent sends | 2025-12-07 05:14 |
| 00662 | webchat: bundle assets with rolldown | 2025-12-07 17:44 |
| 00772 | perf(mac): move blocking launchctl/webchat work off main | 2025-12-08 18:42 |
| 00806 | macos: refine speech noise floor tracking | 2025-12-08 22:24 |
| 00955 | feat(mac): reuse running gateway | 2025-12-09 19:00 |
| 00976 | web: reuse active listener for sends | 2025-12-09 20:33 |

## Narrative

The first optimization in this range appeared at commit 00594, which replaced per-request CLI process spawning with a persistent RPC worker for agent sends. Instead of launching a new Node.js process for each XPC agent request, the macOS app now maintains a long-running clawdis rpc worker with stdin/stdout pipes, eliminating process startup latency.

Commit 00662 introduced rolldown bundling for webchat assets. By creating a single bundled JavaScript file instead of loading individual ES modules, the webchat UI loads faster and avoids the overhead of multiple HTTP requests through the localhost server.

Commit 00772 moved blocking launchctl queries and webchat initialization off the main thread in the macOS app. Operations involving external process spawning and network setup were relocated to background queues, improving UI responsiveness during app startup.

Commit 00806 implemented adaptive noise floor tracking for voice wake speech detection. The algorithm uses asymmetric smoothing alphas (0.08 when quiet, 0.01 when loud) for better discrimination between speech and ambient noise. Audio level processing was moved to a detached task to avoid actor reentrancy.

Late in the range, commit 00955 added gateway instance reuse. Before spawning a new gateway process, the macOS app now probes for an existing running instance via health check and attaches to it if found. This avoids duplicate gateway processes and reduces startup time when the gateway is already running.

Commit 00976 optimized the web provider to reuse the existing webhook listener connection for outbound sends instead of creating new connections, reducing connection churn and overhead.

## Cross-references

- [linting](linting.md) -- type-safety improvements in linting commits sometimes have optimization benefits
- [dependency](dependency.md) -- rolldown bundling relates to dependency management
