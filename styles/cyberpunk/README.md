# Cyberpunk Style — Authoring Guide

This directory contains everything needed to translate Book of Claw reference material into cyberpunk literary narratives. Four documents form a layered system — start at the top, drill down as needed.

## Document Map

```
guide.md                          ← Voice, glossary, structural rules
narrative-structure/
  theme-narrative-guide.md        ← Characters, conflicts, arc construction
  foreshadowing-timeline.md       ← Real-world chronology (source material)
  world-concordance.md            ← Real world → cyberpunk translation layer
```

## Reading Order

### 1. [guide.md](guide.md) — The Voice

**What it is:** The foundational style guide. Voice, narrator, structural conventions, the 44+ term glossary, vocabulary guidelines, and an example translation.

**When to use it:** Every time you write. This is the law. If a term has a glossary entry, use it. If a sentence doesn't sound like it belongs in a Gibson novel narrated by a Blade Runner, rewrite it.

**Key rules:**
- Second-person present-tense noir narration
- Technology is physical — you slot it, jack it, wire it
- The inverted scale gag — kilobytes as fortunes, megabytes as wealth
- Rain is always falling

### 2. [theme-narrative-guide.md](gold-layer-narrative/theme-narrative-guide.md) — The Cast

**What it is:** The companion guide for silver-to-gold layer translations. Defines five characters (The Architect, The Operator, The Street Doc, The Interface, The Fixer), their voices, domains, and conflicts. Includes the arc construction process, foreshadowing protocol, and decision grid.

**When to use it:** When writing theme-level narratives — the gold layer translations where a theme's full arc across a 500-commit range becomes a self-contained story. Assigns POV characters to all 32 reference themes.

**Key sections:**
- Character definitions and voice notes (Section 2)
- Conflict matrix — ten character-pair tensions (Section 3)
- Step-by-step arc construction process (Section 4)
- Decision grid for narrative variety (Section 6)

### 3. [foreshadowing-timeline.md](gold-layer-narrative/foreshadowing-timeline.md) — The History

**What it is:** The real-world chronology of OpenClaw's rise, identity crises, security disasters, and acquisition. Four acts: Genesis, The Viral Week, The Security Reckoning, Apotheosis. Source material only — never referenced directly in narrative output.

**When to use it:** To understand *what happened* and mine foreshadowing seeds. Each act lists specific seeds with guidance on which character would notice them and when to deploy them.

**Key rule:** Foreshadowing is always deniable. A reader who doesn't know the future should experience the detail as atmosphere.

### 4. [world-concordance.md](gold-layer-narrative/world-concordance.md) — The Rosetta Stone

**What it is:** The translation layer between real history and the cyberpunk world. Maps real entities to cyberpunk entities (OpenAI → Tyrell, ClawHub → The Bazaar), defines the lobster motif system, extends the inverted scale economy to OpenClaw-specific metrics, and provides cyberpunk renderings of all four acts.

**When to use it:** After reading the timeline for *what happened*, consult the concordance for *how to render it*. Includes the character-event resonance map (which character notices which event) and tone calibrations for blending Gibson/PKD/Blade Runner influences.

**Key sections:**
- Corporate power map (Section 2)
- Lobster lore — physical and metaphorical layers (Section 3)
- Inverted scale economy with 11 metric translations (Section 4)
- Moltbook / Forum of Ghosts — dedicated treatment (Section 6)

## Authoring Workflow

1. **Identify the commit range and theme** from reference material
2. **Assign POV character** using the theme coverage table in `theme-narrative-guide.md`
3. **Check foreshadowing** — consult the timeline for seeds appropriate to this range
4. **Translate entities and metrics** — use the concordance for real-world → cyberpunk mappings
5. **Tag phases with the decision grid** — ensure narrative variety (minimum 4 cells)
6. **Write** — using the guide's glossary, the POV character's voice, and the concordance's tone calibrations
7. **Verify** — glossary terms used correctly, foreshadowing is deniable (max 3 per narrative), rain is falling

## Quick Reference

| I need to... | Go to... |
|---|---|
| Translate a technical term | `guide.md` glossary |
| Know whose voice to use | `theme-narrative-guide.md` Section 2 + theme coverage table |
| Find a character conflict | `theme-narrative-guide.md` Section 3 |
| Understand what really happened | `foreshadowing-timeline.md` |
| Render a real entity in cyberpunk | `world-concordance.md` Section 2 |
| Render a real metric in cyberpunk | `world-concordance.md` Section 4 |
| Know which character reacts to an event | `world-concordance.md` Section 7 |
| Calibrate Gibson vs PKD vs Blade Runner tone | `world-concordance.md` Section 8 |
