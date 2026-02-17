# Theme: Multi-Provider

Across commits 501-1000, the project expanded from a WhatsApp-only messaging system to a multi-provider architecture supporting WhatsApp, Telegram, and WebChat surfaces. This began with a simple --provider CLI flag (582), grew through Telegram integration via the grammY library (689, 690), and matured into architectural rules about how providers interact with streaming and partial replies (854, 855). The gateway server ultimately became the orchestrator that starts providers and routes messages to the correct surface (927).

## Commits

| # | Subject | Date |
|---|---------|------|
| 00582 | CLI: allow --provider flag for login/logout (default whatsapp) | 2025-12-07 03:41 |
| 00689 | Add Bun bundle docs and Telegram grammY support | 2025-12-07 22:46 |
| 00690 | Telegram: enable grammY throttler and webhook tests | 2025-12-07 22:52 |
| 00854 | fix: stop partial replies for whatsapp/telegram surfaces | 2025-12-09 01:40 |
| 00855 | fix: block partial replies on external chat surfaces | 2025-12-09 01:48 |
| 00927 | Gateway: start providers and route sends to their surface | 2025-12-09 16:38 |

## Narrative

The multi-provider theme began with commit 00582 (2025-12-07 03:41), which added a --provider flag to the login and logout CLI commands with a default value of "whatsapp". This was the first explicit acknowledgment that the system would support multiple messaging backends, even though only WhatsApp was implemented at the time.

Telegram support arrived in commit 00689 (2025-12-07 22:46), which added documentation for Telegram bot integration via the grammY Bot API library and created docs covering webhook setup and configuration. The grammY and @grammyjs/transformer-throttler dependencies were added to package.json. The immediate follow-up, commit 00690 (22:52), enabled the grammY throttler plugin to respect Telegram rate limits and added webhook test coverage, implementing automatic request throttling to avoid 429 flood errors.

As the system matured with multiple active providers, commit 00854 (2025-12-09 01:40) addressed a critical behavioral difference between internal and external messaging surfaces. It disabled streaming partial replies for WhatsApp and Telegram while preserving full streaming to internal UIs and control channels. Test coverage verified that onPartialReply callbacks were excluded when replying to WhatsApp messages. Commit 00855 (01:48) extended this rule to all external chat surfaces, introducing the Surface parameter to agent command context and a buildProviderSummary helper. The rule was documented in AGENTS.md: never send streaming or partial replies to external messaging surfaces.

The architectural culmination came in commit 00927 (2025-12-09 16:38), where the gateway server gained the ability to automatically start configured providers on launch. The gateway checks for authentication credentials and launches provider monitors for both WhatsApp Web and Telegram. Outbound sends are routed to the correct provider based on a surface hint in the send request, completing the multi-provider routing layer.

The progression from a CLI flag to a full provider routing gateway reflects the project's evolution from a single-channel WhatsApp tool to a multi-surface messaging platform, with each step addressing both feature needs and the behavioral constraints that different messaging platforms impose.

## Related Themes

- [naming-and-identity](naming-and-identity.md) -- the relay-to-gateway rename (commits 919-945) was driven by the shift from single-provider relay to multi-provider gateway
- [type-safety](type-safety.md) -- commits 00853, 00907 typed the provider-specific streaming events and protocol frames
