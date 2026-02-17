# Theme: Type Safety

Across commits 501-1000, type safety work shifted from traditional TypeScript tightening to cross-language protocol typing as the project introduced a macOS Swift client and a WebSocket-based Gateway architecture. Early efforts focused on strengthening webchat server types (760) and removing type-only runtime exports (821), while the majority of work concentrated on establishing typed protocols between the TypeScript Gateway server and Swift macOS client. This included introducing discriminated union types via TypeBox schemas (907), building a Swift code generator from those schemas (910), and systematically replacing raw dictionary handling with strongly-typed structs for Gateway frames (912), presence events (913), and agent events (915). The theme culminated in a fully typed cross-language protocol where compile-time guarantees spanned from TypeScript server to Swift client.

## Commits

| # | Subject | Date |
|---|---------|------|
| 00760 | chore: tighten webchat types and formatting | 2025-12-08 17:09 |
| 00764 | Webchat: clean server build and add ws types | 2025-12-08 16:21 |
| 00821 | control: drop runtime export of type-only HeartbeatEventPayload | 2025-12-08 23:15 |
| 00840 | chore: tidy agent event streaming types | 2025-12-09 00:57 |
| 00852 | chore: harden rpc assistant streaming types | 2025-12-09 01:31 |
| 00853 | refactor: type tau rpc stream events | 2025-12-09 01:37 |
| 00868 | Build: fix RPC sendable params and CLI imports | 2025-12-09 03:33 |
| 00880 | WebChat: make tunnel restart handler hop to MainActor | 2025-12-09 03:58 |
| 00883 | VoiceWake: drop remote ssh config and harden template parsing | 2025-12-09 03:04 |
| 00907 | Gateway: discriminated protocol schema + CLI updates | 2025-12-09 15:01 |
| 00910 | Protocol: add TypeBox-driven Swift generator | 2025-12-09 15:21 |
| 00912 | Mac: use typed GatewayFrame + forward-compatible Swift generator | 2025-12-09 15:26 |
| 00913 | Mac: build GatewayProtocol target and typed presence handling | 2025-12-09 15:35 |
| 00915 | Mac: type agent events end-to-end | 2025-12-09 15:38 |
| 00958 | mac: fix gateway hello types | 2025-12-09 19:01 |
| 00961 | fix(mac): encode gateway params with protocol AnyCodable | 2025-12-09 19:10 |

## Narrative

The first type safety intervention in this range addressed the webchat server. Commit 00760 (2025-12-08 17:09) defined ChatMessage, AttachmentInput, and RpcPayload types in the TypeScript webchat server, adding type guards for payload validation. Shortly after, commit 00764 (16:21) added WebSocket type definitions to support the push-based update architecture being built for webchat.

As the control channel emerged, commit 00821 (2025-12-08 23:15) removed the runtime export of HeartbeatEventPayload, which was a type-only declaration that had been unnecessarily generating runtime code. Commit 00840 (2025-12-09 00:57) cleaned up agent event streaming type definitions for consistency, followed by commit 00852 (01:31) which hardened RPC assistant streaming types by updating bundled dependency paths. Commit 00853 (01:37) replaced the loose RpcStreamEvent type with a typed AgentEvent union from the Pi/Tau library, adding explicit type guards for message role checking.

Swift-specific type safety appeared in commit 00868 (03:33), which fixed Swift 6 Sendable warnings in ControlChannel by adjusting method visibility and removing incorrect Sendable requirements. Commit 00880 (03:58) wrapped tunnel restart continuations in MainActor.run to satisfy Swift concurrency type checking. Commit 00883 (03:04) hardened template parsing to handle missing variables gracefully without throwing, combining type safety with robustness.

The most significant type safety work arrived with the Gateway protocol architecture. Commit 00907 (2025-12-09 15:01) introduced discriminated union types for all Gateway protocol frames using TypeBox schemas on the TypeScript side and created GatewayModels.swift with typed Hello, HelloOk, Request, Response, and Event structs on the Swift side. Commit 00910 (15:21) automated this by building a TypeScript script that generates Swift types directly from TypeBox schemas, ensuring the two languages stay in sync. Commit 00912 (15:26) updated GatewayChannel to use the strongly-typed GatewayFrame discriminated union instead of raw dictionaries. Commit 00913 (15:35) extended this to presence handling, and commit 00915 (15:38) completed the pipeline by typing agent events end-to-end through the Gateway.

Two final commits addressed type issues discovered during integration. Commit 00958 (19:01) replaced JSONSerialization with JSONEncoder/Decoder for the gateway hello handshake to avoid Objective-C bridging issues, introducing strongly-typed Hello and HelloOk structs. Commit 00961 (19:10) fixed request parameter encoding by consistently using the protocol's AnyCodable type throughout frame construction, resolving ambiguity between the app's own AnyCodable implementation and the protocol's version.

The type safety discipline in this range evolved from targeted TypeScript fixes to a systematic cross-language type generation pipeline, reflecting the project's architectural shift from a single-language Node.js relay to a multi-language system with a Swift macOS client communicating over WebSocket protocols.

## Related Themes

- [multi-provider](multi-provider.md) -- commits 00852, 00853 typed provider-specific RPC streaming events
- [naming-and-identity](naming-and-identity.md) -- commit 00907 introduced protocol naming conventions that the type system enforces
