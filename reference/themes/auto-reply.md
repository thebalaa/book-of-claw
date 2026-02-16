# Theme: Auto-Reply

The auto-reply system evolved from basic config-driven command execution (commits 34-41) through provider integration and media support (53-106), gained Claude-specific identity and personality (135-139), added timeout handling and audio transcription (184-199), then underwent massive expansion with multi-text RPC outputs, chunking, heartbeat integration, thinking directives, verbose tool results (324-357), group chat handling (391), and directive processing (395, 422). By commit 500, auto-reply supports sophisticated multi-turn conversations with streaming tool feedback and session management.

## Commits

| # | Subject | Time |
|---|---------|------|
| 00034 | Log command execution in config-driven replies | 15:58 |
| 00035 | Add claude auto-reply allowlist and verbose hooks | 16:00 |
| 00036 | Document config options and log auto-reply timing | 16:02 |
| 00037 | Add command timeout and async polling auto-replies | 16:06 |
| 00038 | Log templated command argv and enforce timeout kill | 16:09 |
| 00039 | Log stderr and timeout info for auto-reply commands | 16:11 |
| 00040 | Simplify command log to show resolved argv only | 16:11 |
| 00041 | Run auto-reply commands via spawn with TTY to avoid hangs | 16:15 |
| 00053 | Add web provider inbound monitor with auto-replies | 18:33 |
| 00066 | Add claudeOutputFormat support and provider banners | 01:36 |
| 00069 | Parse Claude JSON output to return text replies | 01:41 |
| 00086 | feat: add send --json, logger cleanup, and resilient Claude parsing | 04:08 |
| 00094 | feat: log auto-reply body and stats for web provider | 04:42 |
| 00106 | chore: surface media URL in command prompts and tests | 05:20 |
| 00135 | claude: prefix prompt with Clawd identity | 06:41 |
| 00137 | claude: tell Clawd to use ~/clawd markdown scratchpad | 06:49 |
| 00138 | claude: expand Clawd prompt, remind 1500 char limit | 06:50 |
| 00139 | claude: allow scratchpad markdown or images, remind length | 06:50 |
| 00184 | Add cwd option for command replies | 16:19 |
| 00189 | Auto-reply: send timeout fallback and tests | 17:52 |
| 00196 | feat: optional audio transcription via CLI | 23:06 |
| 00197 | feat: transcribe audio and surface transcript to prompts | 23:13 |
| 00199 | feat: support audio/video/doc media caps and transcript context | 23:21 |
| 00285 | Skip responsePrefix for HEARTBEAT_OK responses | 06:02 |
| 00289 | Fix empty result JSON dump and missing heartbeat prefix | 04:29 |
| 00307 | perf(pi): reuse tau rpc for command auto-replies | 20:09 |
| 00311 | chore: user-agnostic Claude identity and tests | 13:21 |
| 00313 | fix: send Claude identity prefix on first session message | 14:35 |
| 00324 | revert: mark system prompt sent on first turn | 21:23 |
| 00325 | logging: emit agent/session meta at command start | 21:30 |
| 00326 | auto-reply: support multi-text RPC outputs | 23:03 |
| 00327 | limits: chunk replies for twilio/web | 23:10 |
| 00328 | web: handle multi-payload replies | 23:46 |
| 00329 | Auto-reply: smarter chunking breaks | 00:25 |
| 00330 | Auto-reply: format and lint fixes | 00:30 |
| 00331 | CI: fix command-reply payload typing | 00:33 |
| 00332 | Auto-reply: allow array payloads in signature | 00:35 |
| 00333 | Heartbeat: normalize array replies | 00:40 |
| 00334 | Heartbeat: normalize reply arrays for twilio/web | 00:43 |
| 00338 | Auto-reply: add thinking directives | 08:45 |
| 00340 | Auto-reply: ack think directives | 08:54 |
| 00341 | Auto-reply: treat prefixed think directives as directive-only | 08:57 |
| 00342 | Auto-reply: add /verbose directives and tool result replies | 09:04 |
| 00343 | Auto-reply: add verbose session hint | 09:07 |
| 00346 | Auto-reply: show tool results before main reply in verbose mode | 09:14 |
| 00347 | Auto-reply: stream verbose tool results via tau rpc | 09:21 |
| 00351 | Verbose: include tool arg metadata in prefixes | 09:57 |
| 00352 | Verbose: batch rapid tool results | 10:11 |
| 00353 | Verbose: shorten home paths in tool meta | 10:12 |
| 00354 | Verbose: slow tool batch window to 1s | 10:13 |
| 00356 | Verbose: collapse tool meta paths by directory | 10:24 |
| 00357 | Verbose: shorten meta paths when aggregating | 10:26 |
| 00378 | auto-reply: surface tool args from rpc start events | 13:31 |
| 00380 | auto-reply: emoji + result preview for verbose tool calls | 13:34 |
| 00381 | auto-reply: single emoji per verbose tool line | 13:35 |
| 00391 | auto-reply: handle group think/verbose directives | 02:29 |
| 00395 | auto-reply: honor /new after timestamp prefixes | 17:53 |
| 00422 | fix: suppress heartbeat directive acks and add coverage | 22:54 |

## Narrative Thread

### Foundation: Config-Driven Command Execution (34-41)

The auto-reply system appeared as a burst of 8 commits in 17 minutes on 2025-11-24. Commit 00034 introduced config-driven replies that execute external commands in response to incoming messages. Commit 00035 immediately added an allowlist mechanism so only approved phone numbers would receive Claude-generated auto-replies, plus verbose logging hooks. Commit 00036 documented the new configuration options and added timing metrics.

The remaining commits hardened the execution model. Commit 00037 added configurable timeouts and made auto-replies work in polling mode, not just webhook mode. Commits 00038-00040 refined logging in rapid succession: showing the fully resolved command arguments, capturing stderr, reporting timeouts, and finally simplifying to show only the resolved argv. Commit 00041 switched from `exec` to `spawn` with TTY inheritance after discovering that `claude` hangs without a pseudo-terminal.

### Provider Integration and Output Parsing (53-94)

Commit 00053 introduced the web provider's `web:monitor` command for listening to inbound messages and executing auto-replies. This added session management with per-sender scoping, reset triggers via `/new`, idle expiration, and new template variables including `{{SessionId}}` and `{{IsNewSession}}`.

Commit 00066 added `claudeOutputFormat` configuration to support different Claude CLI output formats (JSON, text). Commit 00069 implemented robust parsing of Claude JSON output to extract text replies from various JSON structures, creating helper functions to handle Claude's different output formats. Commit 00086 added `--json` flag to the send command and implemented resilient Claude JSON parsing with validation schemas. Commit 00094 enhanced logging for web provider auto-replies to show reply body and execution statistics including duration and bytes sent.

### Media Support (106)

Commit 00106 extracted media URLs from command stdout using regex pattern matching for "MEDIA:" lines, prepending media notes to command prompts so invocations like Claude receive media context. This enabled commands to output media references that would be included in auto-replies.

### Claude Identity and Personality (135-139)

Commits 00135-00139 introduced the Clawd identity and personality to auto-replies. Commit 00135 added `CLAUDE_IDENTITY_PREFIX` that prepends identity and brevity constraints to Claude CLI invocations. Commit 00137 extended this to instruct Claude to use a markdown scratchpad file at `~/clawd` for working through problems, leveraging the Claude CLI's scratchpad feature. Commit 00138 expanded the Clawd prompt to include explicit reminders about the 1500-character limit for WhatsApp messages. Commit 00139 refined the prompt to allow markdown formatting or image output in the scratchpad while reiterating the message length constraint.

### Working Directory and Timeout Handling (184-189)

Commit 00184 added working directory (cwd) option to command reply configuration, enabling commands to execute in specified directories. Commit 00189 implemented timeout fallback for auto-reply send operations with comprehensive test coverage, ensuring message delivery is not blocked by extended response times.

### Audio and Media Expansion (196-199)

Commits 00196-00199 introduced comprehensive audio transcription capabilities. Commit 00196 added optional audio transcription feature accessible via CLI flags. Commit 00197 implemented audio transcription with automatic inclusion of transcripts in prompt context, adding audio documentation and enhancing templating to support transcript variables. Commit 00199 extended media support to audio, video, and document formats with enforced size caps, integrating transcript context across all media types for comprehensive Claude processing.

### Response Prefix and Heartbeat Handling (285, 289)

Commit 00285 prevented responsePrefix from being applied to HEARTBEAT_OK responses, preserving exact match strings for warelay heartbeat detection logic. Commit 00289 fixed empty result field handling using explicit type checks preventing raw JSON when Claude CLI returns empty results, and applied responsePrefix to heartbeat alert messages in the heartbeat runner.

### Agent Infrastructure (307, 311, 313, 324-325)

Commit 00307 optimized Pi agent replies by reusing the tau RPC connection for command auto-replies instead of creating new connections, reducing overhead for multi-turn interactions. Commit 00311 replaced hardcoded user paths with dynamic `~/Clawd` references and added MEDIA syntax instructions to the Claude identity prefix. Commit 00313 fixed a timing bug where `systemSent` was set to true before being passed to the command reply runner, preventing the Claude identity prefix from being injected on the first message. Commit 00324 reverted a previous change that marked the system prompt as sent on the first turn. Commit 00325 improved logging by emitting agent and session metadata at the start of command execution.

### Multi-Text RPC and Chunking (326-334)

Commits 00326-00334 introduced multi-payload reply support. Commit 00326 extended auto-reply functionality to handle multiple text outputs from RPC responses. Commit 00327 implemented reply chunking for Twilio and web providers to respect message length limits, breaking long replies into multiple messages. Commit 00328 updated the web relay to handle multi-payload replies, allowing multiple messages to be sent in sequence.

Commit 00329 improved chunking logic to use smarter break points at natural sentence and paragraph boundaries. Commits 00330-00331 applied formatting and linting fixes, and corrected type definitions for command-reply payloads. Commit 00332 updated the auto-reply handler to accept array payloads in method signatures, enabling batch processing. Commits 00333-00334 normalized array-based replies in the heartbeat mechanism, ensuring consistent handling of multi-message responses across Twilio and web providers.

### Thinking Directives (338, 340-343)

Commit 00338 introduced thinking directives to the auto-reply system, allowing agents to include internal reasoning annotations that do not appear in the final reply. Commit 00340 implemented acknowledgment of thinking directives in the auto-reply handler, ensuring the system correctly processes and strips thinking sections before sending replies. Commit 00341 refined handling so prefixed think directives (e.g., `/think`) are treated as purely directive with no text contribution. Commit 00342 added support for `/verbose` directives and implemented tool result reply handling, allowing agents to request verbose output mode and send structured tool results. Commit 00343 implemented verbose session hints to notify users when verbose mode is enabled.

### Verbose Tool Results (346-347, 351-357)

Commits 00346-00347 introduced verbose tool result streaming. Commit 00346 reordered reply output in verbose mode to display tool results before main reply text. Commit 00347 implemented streaming of verbose tool results through the tau RPC mechanism, allowing real-time display of tool execution details.

Commits 00351-00357 refined verbose tool output. Commit 00351 extended tool result messages to include metadata (paths, commands) in prefixes formatted as `[🛠️ tool-name arg]`. Commit 00352 implemented tool result coalescing to reduce message spam, batching successive tool results of the same type within 250ms into single messages formatted as `[🛠️ tool] arg1, arg2`. Commit 00353 abbreviated home directory paths in tool metadata to improve readability. Commit 00354 adjusted the debounce window from 250ms to 1 second to allow more tool results to accumulate.

Commit 00356 refactored tool metadata formatting to better aggregate paths sharing the same directory. Commit 00357 optimized path display in aggregated tool metadata by applying home directory shortening when batching.

### Tool Result Enhancements (378, 380-381)

Commit 00378 surfaced tool argument metadata from RPC start events to provide visibility into which tools are being invoked and with what parameters. Commit 00380 added emoji indicators and result previews to verbose tool call messages, making tool execution more visually scannable. Commit 00381 standardized verbose tool output to use a single emoji per tool line (🛠️) for consistent visual presentation.

### Group Chat Support (391)

Commit 00391 extended auto-reply handling to properly process thinking and verbose directives in group chat contexts, enabling full directive support in group conversations.

### Directive Processing (395, 422)

Commit 00395 fixed auto-reply to correctly process `/new` directives even when they appear after timestamp prefixes, ensuring session reset requests work reliably. Commit 00422 suppressed acknowledgment messages for heartbeat directives and added test coverage to verify heartbeat handling does not produce unnecessary user-visible output.

## Related Themes

- [verbosity-and-ux](verbosity-and-ux.md) — extensive logging instrumentation and verbose tool output
- [process-lifecycle](process-lifecycle.md) — timeout and child process management, RPC streaming
- [twilio-api](twilio-api.md) — auto-replies depend on message receiving infrastructure
- [provider](provider.md) — web provider integration and multi-payload handling
- [media](media.md) — media support, audio transcription, and MEDIA token parsing
- [session-management](session-management.md) — session scoping, reset triggers, and identity prefix handling
- [heartbeat](heartbeat.md) — heartbeat integration and response handling
