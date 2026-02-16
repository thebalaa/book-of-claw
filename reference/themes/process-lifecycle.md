# Theme: Process Lifecycle

Addresses how the CLI process stays alive after setup, shuts down gracefully, and manages child processes — including timeout enforcement and TTY inheritance for commands that need interactive environments.

## Commits

| # | Subject | Time |
|---|---------|------|
| 00024 | Keep setup/webhook running with waitForever and graceful SIGINT | 13:25 |
| 00026 | Keep process alive reliably with unref interval in waitForever | 13:36 |
| 00037 | Add command timeout and async polling auto-replies | 16:06 |
| 00041 | Run auto-reply commands via spawn with TTY to avoid hangs | 16:15 |

## Narrative Thread

When the webhook server or setup command completed, Node.js would exit because nothing was keeping the event loop alive. Commit 00024 introduced `waitForever()` plus graceful SIGINT handling. Just 11 minutes later, commit 00026 revised the approach — using an unref'd interval that allows graceful shutdown without blocking the event loop.

The second pair of lifecycle commits (00037, 00041) relates to the auto-reply system. Commit 00037 added configurable timeouts for auto-reply commands and made polling-mode replies asynchronous. Commit 00041 changed child process execution from `exec` to `spawn` with TTY inheritance, because some commands (notably `claude`) would hang without a pseudo-terminal.

## Related Themes

- [auto-reply](auto-reply.md) — lifecycle management for auto-reply child processes
- [verbosity-and-ux](verbosity-and-ux.md) — timeout logging overlaps with both themes
