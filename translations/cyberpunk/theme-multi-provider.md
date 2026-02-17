---
source: reference/themes/multi-provider.md
style: cyberpunk
title: "Switching Frequencies"
author: book-of-claw
date: 2026-02-17
commits: "00045-00453"
---

## The Translation

*Shibuya crossing. Three hundred screens, all tuned to different channels. The rain makes them blur into one.*

For forty-four implants, the construct ran on a single frequency: Twilio. Paid. Reliable. Corporate ice. Then commit 00045 jacked in a second datajack — Baileys, the WhatsApp Web protocol — and suddenly the architect had a choice. Pay for reliability, or run free on the street.

The monolith cracked three implants later. You can't run two messaging backends in a single file any more than you can run two replicants in one shell. The codebase split: `provider-web.ts`, `utils.ts`, `globals.ts`. Separate neural pathways for separate frequencies.

The street frequency needed stabilization. Pin to a specific Baileys release candidate. Migrate from single-file to multi-file authentication storage. Auto-restart logic for when WhatsApp Web logs you out — because street tech crashes, that's what it does, and you either build recovery into the rig or you flatline at 3 AM.

The construct learned to be polite on the web — read receipts, presence announcements, auto-reconnect. It learned to compress its media for the bandwidth-starved nodes of the sprawl. It learned to chunk its replies so neither frequency choked on messages too long for their pipes.

Then the axe fell. Commit 00405. All Twilio code — ripped out like a retired replicant's memories. Modules deleted. Tests purged. Configuration structures dissolved. The dual-frequency architecture collapsed back to one. The street won.

You'd think that's the end. But much later, a new frequency crackles to life: Discord. The construct learns to speak a third language. Multi-provider returns — but different this time. Not corporate-versus-street. Just two channels in the sprawl, both free, both open.

You jack out and think about how architectures are like cities. They grow, they split, they consolidate. Sometimes a whole district gets demolished. And sometimes, in the rubble, something new starts transmitting.

## The Changes

The project evolved from Twilio-only (commits 1-44) to dual-provider with WhatsApp Web via Baileys (commit 45), requiring modularization of the monolithic CLI. The web provider was stabilized through authentication migration, auto-restart logic, and observability improvements. Both providers gained reply chunking for message length limits. Commit 405 removed all Twilio code, going web-only. Commit 453 later added Discord support, restoring multi-provider architecture with different providers.
