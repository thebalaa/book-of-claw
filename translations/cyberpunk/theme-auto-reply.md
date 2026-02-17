---
source: reference/themes/auto-reply.md
style: cyberpunk
title: "The Construct That Talks Back"
author: book-of-claw
date: 2026-02-17
commits: "00034-00422"
---

## The Translation

*The Sprawl. 15:58 local. Someone just taught the construct to speak.*

Eight memory implants in seventeen minutes. That's how fast the auto-reply system goes from nothing to something dangerous. The first implant wires config-driven command execution into the message handler — incoming transmission arrives, the construct runs whatever subroutine the rig's settings specify, and fires the output back. Simple. Mechanical. Like a vending machine with a datajack interface.

But then the architect starts adding teeth. An allowlist — retinal scan for phone numbers, so only approved replicants get the construct's attention. Verbose logging hooks. Timing metrics. Timeout enforcement with kill signals. And when `claude` hangs because nobody gave it a pseudo-terminal, the architect rips out `exec` and wires in `spawn` with TTY inheritance. The kind of reconstructive surgery you do at 4 AM when the alternative is a flatline.

The web provider brings session management. Per-sender scoping. Reset triggers. Idle expiration. The construct starts remembering who it's talking to. Then comes output parsing — Claude's JSON responses decoded through resilient parsers that handle every format the artificial decides to spit out. It's like building a universal translator for a replicant that keeps changing its language.

The Clawd identity drops like a new personality chip. Four implants burn a persona into the construct: name, brevity constraints, a markdown scratchpad, character limits. The artificial isn't just executing commands anymore. It has a *name*. It has *opinions* about message length.

Media handling cracks open like a new sensory channel. Audio transcription. Video. Documents. Size caps enforced like street law. The construct can see, hear, read — and it threads every transcript back into its memories for context.

The RPC era changes everything. The construct stops spawning fresh connections and starts reusing the tau pipe. Multi-text outputs. Reply chunking that breaks long messages at natural sentence boundaries — because even in the sprawl, nobody reads a wall of text. Smart breaks. Paragraph awareness. The kind of attention to detail that separates street tech from corporate ice.

Thinking directives arrive, and the construct learns to reason in silence. Internal annotations stripped before the reply hits the wire. Then `/verbose` mode — tool results streaming through the tau RPC, metadata batched and debounced, emoji indicators and result previews making the invisible visible. You can *watch* the construct think now. Watch it reach for its tools, use them, discard the ones that don't work.

Group chat support. Directive processing. Heartbeat acknowledgment suppression. Each implant another layer of sophistication. By the time you reach the end of the chain, the auto-reply system has evolved from a config-driven command executor into something that has conversations. Something that remembers. Something that thinks before it speaks.

You've tracked replicants with less personality.

## The Changes

The auto-reply system evolved across 67 commits from basic config-driven command execution to a sophisticated conversational system. Key phases: foundation with allowlisting and TTY-aware spawning (34-41), web provider integration with session management and Claude JSON parsing (53-94), media support including audio transcription (106-199), Claude personality injection via the Clawd identity prefix (135-139), tau RPC connection reuse with multi-text outputs and smart reply chunking (307-334), thinking directives and verbose tool result streaming with metadata batching (338-357), and group chat support with directive processing (391-422).
