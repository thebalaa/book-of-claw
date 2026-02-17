# Cyberpunk Theme-Narrative Guide

## 1. Purpose & Relationship to the Existing Guide

The [commit-level guide](guide.md) defines voice, glossary, and vocabulary for translating individual commits — single memory implants slotted into the sprawl. This guide is its companion for **theme-level narratives**: the silver layer translations where a theme's full arc across a 500-commit range becomes a self-contained story.

Where the commit guide gives you a narrator and a moment, this guide gives you a **cast** and a **current**. The existing guide remains canonical for cyberpunk voice, the glossary of 44+ term mappings, vocabulary guidelines, and structural conventions. Everything here layers on top of that foundation.

This guide adds:

- **Characters** — an ensemble whose domains map to the 32 reference themes
- **Conflicts** — tensions between characters that generate narrative variety
- **Arc construction** — a step-by-step authoring process for theme narratives
- **Foreshadowing protocol** — how to cast shadows from future events
- **Decision grid** — a private tagging system to prevent monotone storytelling

---

## 2. Character Definitions

Five operators work the OpenClaw sprawl. Each owns a cluster of themes and brings a distinct voice, philosophy, and set of tensions to the narrative.

---

### The Architect

**Handle:** `ARCH` · **Real name never used**
**Look:** Clean-room gloves over chrome fingernails. Wears a lab coat with no pockets — nothing enters that wasn't designed to be there. Eyes track structural load in any system she jacks into.
**Habitat:** The deep stacks — compiler forges, type-lattice cathedrals, dependency graphs rendered as cathedral buttresses.

**Worldview:** Every system has a platonic form. The work is convergence toward it. Entropy is the only real enemy — not bugs, not deadlines, but the slow accumulation of structural debt that makes a system lie about what it is. She fears the day a codebase becomes too dishonest to refactor.

**Voice notes:** Precise. Declarative. Her sections read like architectural specifications written by someone who finds beauty in load-bearing walls. Longer sentences than other characters — she thinks in compound structures. Occasionally cold.

**Primary themes:** refactor, cleanup, type-safety, build, dependency, linting, naming-and-identity
**Secondary themes:** ci, optimization

---

### The Operator

**Handle:** `OPS-9` · Ninth in a line of operators; the previous eight burned out or flatlined
**Look:** Cargo vest over a thermal layer, every pocket holding a diagnostic dongle or a restart key. Bags under the eyes. Fingers stained with solder and caffeine.
**Habitat:** The machine floor — process tables, launchd scaffolding, SSH tunnel junctions, the hum of worker daemons cycling through their loops.

**Worldview:** Systems don't need to be beautiful; they need to be *up*. Uptime is the only honest metric. He respects The Architect's vision but knows that elegant blueprints don't restart crashed workers at 3 AM. He fears the silent failure — the daemon that dies without logging, the tunnel that closes without a signal.

**Voice notes:** Terse. Operational. His sections read like incident reports written by someone who's been awake too long. Short sentences. Lists. He names specific processes, ports, PIDs. Occasionally resigned.

**Primary themes:** process-lifecycle, error-handling, devops, networking, performance
**Secondary themes:** persistence, security

---

### The Street Doc

**Handle:** `Patch` · Self-chosen, proudly literal
**Look:** Surgical loupes pushed up on the forehead, toolkit slung low on the hip. Always has diagnostic traces scrolling in peripheral vision. Fingerless gloves — needs the tactile feedback.
**Habitat:** The clinic — crash dumps, stack traces, test harnesses, logging pipelines. Wherever something is bleeding data.

**Worldview:** Every bug is a wound and every wound tells a story about how the body was built. She doesn't judge the original surgery — she just needs the patient stable before the next spike. She fears the bug that can't be reproduced, the failure that only manifests in production under load, the ghost in the trace.

**Voice notes:** Clinical but warm. Her sections read like field surgery notes — observational, precise about symptoms, satisfied when the bleeding stops. Uses medical metaphor naturally. Occasionally dark-humoured.

**Primary themes:** bugfix, testing, debugging, logging, security
**Secondary themes:** error-handling, ci

---

### The Interface

**Handle:** `Glass` · Because that's what stands between the user and the machine
**Look:** Projection contacts that overlay wireframes on everything. Clothes shift colour based on ambient data density. Speaks softly — the loudest thing in the room should always be the signal, not the messenger.
**Habitat:** The surface — terminal output streams, configuration surfaces, documentation vaults, the thin membrane where human attention meets system state.

**Worldview:** A system that can't be understood by its operator doesn't exist — it's just weather. Clarity is a moral obligation. She fears the moment when a user makes a wrong decision because the system lied to them through bad defaults, missing docs, or a wall of unformatted noise.

**Voice notes:** Measured. Empathetic. Her sections read like someone explaining a city to a newcomer — pointing out what matters, naming what's confusing, smoothing the path. Longer descriptive passages. Occasionally frustrated by systems that refuse to be legible.

**Primary themes:** ui, ux, documentation, verbosity-and-ux, config
**Secondary themes:** logging, naming-and-identity

---

### The Fixer

**Handle:** `Deal` · Because every new capability is a negotiation with complexity
**Look:** Long coat with too many inside pockets, each holding a different API credential or platform SDK. Grins too easily. Always carrying something new.
**Habitat:** The frontier — new feature branches, API negotiation tables, platform border crossings (iOS customs, macOS immigration), provider bazaars where Twilio and OpenAI hawk their wares.

**Worldview:** The sprawl grows or it dies. New capabilities are oxygen. He knows every new feature is a deal with the devil — more surface area, more failure modes, more dependencies — but stasis is death. He fears the day the system stops being able to absorb the new, the day it calcifies.

**Voice notes:** Energetic. Expansive. His sections read like a fixer's pitch — here's what we're getting, here's what it costs, here's why it's worth it. Shorter paragraphs, more momentum. Occasionally reckless.

**Primary themes:** core-feature, api, auto-reply, multi-provider, twilio-api
**Secondary themes:** ios, macos, cross-platform, networking

---

### The Witness

**Handle:** `CASE` · A case number, a detective's case, a shell casing
**Look:** Worn trench coat over body armor. Nicotine stains on fingers. Eyes that have seen the construct at forty-two thousand open doors. Carries a battered portable terminal loaded with five case files.
**Habitat:** A decommissioned relay station in the sprawl's outer ring. Post-Act IV. Rain through the ceiling. Five case files spread across a table that used to be a server rack.

**Worldview:** History is forensic evidence. Every system failure was visible in advance — not as prediction, but as architecture. The `0.0.0.0` binding wasn't a mistake. It was a wound that hadn't started bleeding. CASE believes catastrophe can be read backward through the people who built the thing that broke.

**Voice notes:** Prophetic dread. Short, sharp reframings. Present tense for the past. Occasionally addresses the reader directly. Film noir detective crossed with Cassandra vertigo. The future isn't a power — it's a weight. Her sections read like depositions filed by someone who arrived too late to prevent anything.

**Relationship to themes:** CASE owns no themes. CASE reads all themes. The Witness chapter is always written AFTER the five character chapters, drawing exclusively from their content, the foreshadowing timeline, and world concordance. CASE provides forensic hindsight — the sixth perspective that reframes what the other five characters lived through without changing what they saw.

**Structural role:** CASE appears in two forms:
1. **Standalone chapter** — a post-Act IV forensic review of the five character accounts
2. **Epigraph annotations** — short blockquote marginalia (2-4 lines) at the start of key sections in other characters' chapters, forensic commentary from another time

---

### Theme Coverage

All 32 themes from [reference/themes.md](../../reference/themes.md) are assigned:

| Theme | Primary | Secondary |
|-------|---------|-----------|
| api | The Fixer | — |
| auto-reply | The Fixer | — |
| bugfix | The Street Doc | — |
| build | The Architect | — |
| ci | — | The Architect, The Street Doc |
| cleanup | The Architect | — |
| config | The Interface | — |
| core-feature | The Fixer | — |
| cross-platform | — | The Fixer |
| debugging | The Street Doc | — |
| dependency | The Architect | — |
| devops | The Operator | — |
| documentation | The Interface | — |
| error-handling | The Operator | The Street Doc |
| genesis | (ensemble) | — |
| ios | — | The Fixer |
| linting | The Architect | — |
| logging | The Street Doc | The Interface |
| macos | — | The Fixer |
| multi-provider | The Fixer | — |
| naming-and-identity | The Architect | The Interface |
| networking | The Operator | The Fixer |
| optimization | — | The Architect |
| performance | The Operator | — |
| persistence | — | The Operator |
| process-lifecycle | The Operator | — |
| refactor | The Architect | — |
| security | The Street Doc | The Operator |
| testing | The Street Doc | — |
| twilio-api | The Fixer | — |
| type-safety | The Architect | — |
| ui | The Interface | — |
| ux | The Interface | — |
| verbosity-and-ux | The Interface | — |

Themes with a primary owner are narrated from that character's POV. Themes with only secondary owners use whichever character's perspective best fits the range's content. The `genesis` theme is an ensemble piece.

---

## 3. Conflict Matrix

Every character pair carries at least one structural tension. These tensions are not plot points to force — they're currents that naturally surface when theme narratives intersect.

| Pair | Tension |
|------|---------|
| **Architect × Operator** | The Architect's XPC refactors destabilise The Operator's running launchd agents. Clean abstractions vs. "don't touch it, it's load-bearing." |
| **Architect × Street Doc** | The Architect wants root-cause structural fixes; The Street Doc needs the bleeding stopped *now*. Planned surgery vs. field triage. |
| **Architect × Interface** | The Architect names things for structural truth; The Interface names things for human comprehension. Internal precision vs. external clarity. |
| **Architect × Fixer** | Every new feature The Fixer lands introduces dependencies The Architect must absorb. Purity vs. growth. |
| **Operator × Street Doc** | Both respond to failures but from opposite ends — The Operator restarts the process, The Street Doc wants to understand *why* it died. Uptime vs. diagnosis. |
| **Operator × Interface** | The Operator's verbose diagnostic logging floods The Interface's clean output channels. Signal density vs. signal clarity. |
| **Operator × Fixer** | New providers and platforms mean new processes to supervise, new tunnels to maintain, new daemons to babysit. The Fixer opens doors; The Operator has to guard them all. |
| **Street Doc × Interface** | The Street Doc's debug traces and test harnesses are noisy; The Interface wants clean surfaces. Diagnostic visibility vs. user experience. |
| **Street Doc × Fixer** | New features arrive with new bugs — The Street Doc sees every new capability as a future patient. The Fixer sees every bug report as friction against progress. |
| **Interface × Fixer** | New capabilities need new UI surfaces, new documentation, new configuration options. The Fixer moves fast; The Interface needs time to make it legible. |

### External Pressures

Beyond inter-character tension, the world itself applies force:

- **Platform deadlines** — iOS and macOS releases force The Fixer and The Operator into crunch
- **Breaking API changes** — upstream providers shift their protocols, destabilising The Fixer's deals and The Operator's integrations
- **Scale thresholds** — the system crosses a complexity boundary where The Architect's abstractions become load-bearing
- **Dependency rot** — third-party packages decay, creating work for The Architect and The Street Doc simultaneously

---

## 4. Narrative Arc Construction Process

Follow these steps when translating a silver-layer theme file into a cyberpunk narrative.

### Step 1: Read the Silver Theme File

Open the theme file for the range being translated (e.g., `reference/themes/00501-01000/process-lifecycle.md`). Note:

- The opening summary paragraph
- The commit table (count, range, key commits)
- The phase headings and their narrative content
- The cross-references to other themes

### Step 2: Assign POV Character

Using the theme coverage table above, identify the primary character for this theme. If the theme has only secondary owners, read the commit content and choose the character whose domain is most strongly represented in this specific range.

The POV character narrates. Other characters appear through their effects — their work is visible, their motivations are inferred, their presence is felt.

### Step 3: Identify Intersections

Check the theme file's cross-references. For each linked theme, note which character owns it. These characters will appear in the narrative as:

- **Allies** — their work enables or supports the POV character
- **Friction sources** — their work complicates or constrains the POV character
- **Shadows** — they're affected by the POV character's work but aren't present

### Step 4: Map to the Decision Grid

See [Section 6](#6-decision-grid-usage-author-only-metadata) for the grid. For each phase heading in the silver file, privately tag it with a grid cell. This is metadata — it never appears in the output. The purpose is to ensure narrative variety: a theme shouldn't read as five phases of unqualified triumph.

**Minimum coverage:** each theme narrative should touch at least 4 different grid cells.

### Step 5: Query for Foreshadowing

Before writing, consult the [Foreshadowing Protocol](#5-foreshadowing-protocol). Check subsequent theme ranges and any known future developments. Note 1-3 details that can cast shadows backward into the current narrative.

### Step 6: Write

Using the POV character's voice, the [cyberpunk glossary](guide.md), and the structural conventions from the existing guide:

- Open with atmosphere and location (the character's habitat)
- Follow the phase structure from the silver file
- Let intersecting characters appear through their effects
- Embed foreshadowing as sensory details or offhand observations
- Close with the character's state — what they've gained, what it cost, what's coming

---

## 5. Foreshadowing Protocol

Before beginning any theme narrative, the author answers this prompt:

> *"Are there future events, world-state changes, or character destinations beyond this range that should cast shadows backward?"*

### Sources of Foreshadowing

- **Later theme ranges** — if the same theme file exists in the next 500-commit range, skim it for major shifts
- **Cross-referenced themes** — if a linked theme will undergo a dramatic change (e.g., a rewrite, a platform migration), that change can ripple backward
- **Known architectural pivots** — Gateway WebSocket replacing direct tunnels, new provider integrations, platform expansions

### Rules

1. **Always deniable.** Foreshadowing is sensory, atmospheric, or offhand — never plot exposition. A flicker in a diagnostic readout. A tunnel that takes a millisecond longer to respond. A new protocol header the character doesn't recognise. The reader shouldn't notice on first read.

2. **Maximum three per narrative.** More than three becomes a pattern visible to the reader, which defeats the purpose.

3. **Never spoil.** If a character will be "retired" (their domain deprecated or absorbed), foreshadowing is a vague unease — not a retirement notice.

### Examples

| Future Event | Foreshadowing |
|--------------|---------------|
| Gateway WebSocket replaces SSH tunnels | "The tunnel junction hums steady, but there's a new frequency underneath — something the walls are learning to carry." |
| iOS platform arrives | "Customs is building a new checkpoint at the edge of the grid. The Fixer has been seen there, measuring doorframes." |
| A major refactor collapses two subsystems | "The load-bearing wall between the authentication stack and the session pool has developed a hairline fracture. The Architect pretends not to see it." |

---

## 6. Decision Grid Usage (Author-Only Metadata)

> **This framework is never referenced in the output.** It is a private tool for the author to ensure narrative variety.

The grid maps two axes — **agency** (what the character chooses to do) and **outcome** (what the world permits) — into nine cells:

|  | **World Permits** | **World Blocks** | **World Indeterminate** |
|---|---|---|---|
| **Character Chooses** | Triumph — they act, it works | Rebuff — they act, it fails | Limbo — they act, outcome unclear |
| **Character Unknown** | Windfall — something good arrives unsought | Calamity — something bad arrives unsought | Drift — things change, direction unclear |
| **Character Avoids** | Dodge — they step aside, danger passes | Trap — they step aside, danger finds them anyway | Fog — they hold still, nothing resolves |

### How to Use It

For each phase heading in the silver theme file, privately assign a grid cell:

```
Phase 1: Child Process Foundation     → Triumph
Phase 2: Launchd Agent Management     → Limbo
Phase 3: XPC and RPC Stabilization    → Rebuff
Phase 4: Debug and Restart Controls   → Windfall
Phase 5: Timeout and Race Fixes       → Trap
Phase 6: SSH Tunnel Management        → Triumph
Phase 7: Control Channel Architecture → Drift
Phase 8: Worker Supervision           → Dodge
Phase 9: Gateway WebSocket Protocol   → Limbo
```

### Minimum Coverage

- **Bronze standard:** 4 different cells across the narrative
- **Silver standard:** 6 different cells
- **Gold standard:** all 9 cells (rare; only for themes with many phases)

### Worksheet Template

Copy this into your working notes for each theme:

```
Theme: _______________
Range: _______________
POV:   _______________

Phase | Grid Cell | Notes
------|-----------|------
      |           |
      |           |
      |           |
      |           |
```

---

## 7. Example: Annotated Theme Translation

**Source:** [`reference/themes/00501-01000/process-lifecycle.md`](../../reference/themes/00501-01000/process-lifecycle.md)

### Step 1: Silver File Summary

The process-lifecycle theme across commits 505–985 traces evolution from child process spawning through launchd agent management to Gateway WebSocket architecture. Nine phases, 20 commits, cross-references to testing and auto-reply.

### Step 2: Character Assignment

**POV: The Operator (OPS-9).** Process lifecycle is his primary domain.

### Step 3: Intersections

| Cross-Referenced Theme | Character | Role in Narrative |
|------------------------|-----------|-------------------|
| testing | The Street Doc | Friction — her test harnesses stress his processes |
| auto-reply | The Fixer | Enablement — auto-reply needs process lifecycle to be stable |
| refactor (XPC work) | The Architect | Friction — her XPC refactors destabilise running agents |

### Step 4: Grid Cell Tagging

| Phase | Grid Cell | Rationale |
|-------|-----------|-----------|
| 1. Child Process Foundation | Triumph | Simple spawning works cleanly |
| 2. Launchd Agent Management | Limbo | Agents are registered but behaviour is unpredictable |
| 3. XPC and RPC Stabilization | Rebuff | The Architect's abstractions break running processes |
| 4. Debug and Restart Controls | Windfall | A debug flag arrives that wasn't planned but solves a real problem |
| 5. Timeout and Race Fixes | Trap | Avoiding the race condition exposes a deeper timing issue |
| 6. SSH Tunnel Management | Triumph | Tunnels work, connections hold |
| 7. Control Channel Architecture | Drift | The architecture shifts toward something new; direction unclear |
| 8. Worker Supervision | Dodge | Process monitoring catches failures before they cascade |
| 9. Gateway WebSocket Protocol | Limbo | The new protocol works but its full implications are unresolved |

**Coverage: 6 cells (Silver standard).** ✓

### Step 5: Foreshadowing Notes

1. Gateway WebSocket will become the dominant transport in the next range — foreshadow as a new signal frequency in the tunnel junctions
2. Auto-reply will undergo a major refactor — foreshadow as The Fixer measuring the auto-reply pipeline with unfamiliar instruments

### Step 6: Prose Excerpt

*The following demonstrates the translation of Phase 2 (Launchd Agent Management) using The Operator's voice, grid cell Limbo, and the existing cyberpunk glossary.*

---

*The machine floor at sub-level nine. Sodium light. The hum of process tables cycling through their loops, that low electric mantra that means everything is still breathing.*

OPS-9 wires the first launchd agents into the scaffolding at commit 549 — daemon skeletons slotted into the system's startup lattice, each one a promise that a particular service will be standing when the grid powers up. He tests the connections. Current flows. The agents register.

But registration isn't life. The agents sit in the startup queue like patients in a waiting room — names on a list, vitals unchecked. At 551 he bolts on a plist generator, automating what he'd been hand-soldering: configuration manifests stamped out in XML, each one describing a daemon's shape, its dependencies, its conditions for waking.

The Architect's fingerprints are on the XPC layer underneath. Clean work — he'll give her that — but clean in the way a blueprint is clean. Blueprints don't account for the moment a launchd agent tries to phone home through an XPC channel that's been refactored out from under it. He's seen the logs. The handshake attempts. The silence where a response should be.

At 616 he patches the agent lifecycle to survive the Architect's abstractions — a resilience layer, ugly but functional, that catches the XPC disconnects and re-establishes the channel before the daemon notices it was alone. It works. Mostly. The timing is wrong in ways he can't yet measure, and the logs show occasional gaps — half-second silences where a daemon was technically alive but functionally deaf.

He files it. Moves on. The machine floor doesn't wait for certainty.

Somewhere below the tunnel junction, a new frequency is threading through the conduit walls — something that isn't SSH, isn't XPC, something that tastes like a different protocol entirely. OPS-9 notices it the way you notice a change in air pressure. Files that too.

---

*End of excerpt. Note how:*
- *The Operator's voice is terse, operational, grounded in physical metaphor*
- *The Architect appears through her effects (XPC refactor) not her presence*
- *The grid cell (Limbo) manifests as agents that register but don't fully live, timing that's "wrong in ways he can't yet measure"*
- *Foreshadowing (Gateway WebSocket) appears as a sensory detail — "a new frequency" — deniable and atmospheric*
- *The glossary maps naturally: launchd agents → daemon skeletons, plist → configuration manifest, XPC → named as-is (it's cyberpunk enough)*
