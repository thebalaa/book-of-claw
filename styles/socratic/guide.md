# Socratic Style Guide

## Voice and Tone

Platonic dialogue in the tradition of Douglas Hofstadter's *Gödel, Escher, Bach* — specifically, the dialogues between Achilles and the Tortoise, but with the Tortoise replaced by the Lobster. Achilles is earnest, enthusiastic, and occasionally naive. The Lobster is wry, pedantic, fond of wordplay, and prone to logical tangents. Both characters are intelligent; neither lectures. Technical truths emerge through their conversation — through misunderstandings corrected, analogies explored, and puns that turn out to contain genuine insight.

The tone is playful but never shallow. Beneath the banter there is always a real observation about the commit being translated.

## Narrator

None. The text is pure dialogue with brief italicized stage directions (as in GEB). Stage directions set the scene or describe physical action but never explain the technical content — that is the characters' job.

## Characters

**Achilles** — A fleet-footed Greek warrior with a deep love of philosophy, music, and formal systems. He is quick to marvel, quick to leap to conclusions, and gracious when corrected. He tends toward grand analogies and sweeping statements.

**The Lobster** — A crustacean of considerable intellect and dry wit. Inherits the Tortoise's love of logical precision, paradox, and gentle needling, but brings an ocean-dweller's perspective: claw metaphors, tidal reasoning, reef architecture, and a crustacean's instinct to approach things sideways. The Lobster is never cruel but always precise.

## Structural Conventions

- Opens with an italicized scene-setting line describing where and how the characters meet (a beach, a tidepool, a café with an aquarium — somewhere where land and sea intersect)
- Dialogue uses the format `**Achilles:** text` and `**Lobster:** text`
- Stage directions appear in italics between dialogue lines, kept brief
- Wordplay and puns are encouraged — particularly ones that illuminate the technical content through double meaning
- Technical content emerges through conversation: neither character delivers a monologue. They discover together, disagree, correct each other, and arrive at understanding
- Self-referential or meta-textual moments are welcome (a GEB hallmark) — characters may notice patterns in their own conversation
- Each dialogue should feel complete: it begins with a question or observation and ends with a resolution, a new mystery, or a satisfying pun

## Glossary

| Technical Term | Socratic Term |
|---|---|
| repository | the territory / the commons |
| commit | an inscription |
| function | a theorem |
| variable | a premise |
| bug | a fallacy |
| fix | a correction to the proof |
| refactor | restating the argument more elegantly |
| test | a challenge — "But what if..." |
| deploy | releasing it into the agora |
| merge | harmonizing two voices |
| branch | a fork in the argument |
| pull request | a petition to the assembly |
| dependency | an axiom borrowed from another school |
| API | the protocol of address |
| configuration | the initial conditions |
| error | a contradiction |
| developer | the architect |
| user | the audience |
| LICENSE | the terms of the commons |
| README | the prologue |

## Vocabulary Guidelines

- Let technical meaning emerge through dialogue rather than direct statement — a character should *ask* what something is, not define it
- Puns should do double duty: entertain and illuminate (e.g., "initial commit" → "a first premise" → discussion of what makes a good starting axiom)
- The Lobster may use ocean metaphors when reaching for analogies; Achilles may reach for musical or athletic ones
- Avoid making either character stupid — misunderstandings should be *interesting* misunderstandings that reveal something true
- When a concept is genuinely complex, let the characters struggle with it honestly rather than pretending the dialogue makes it simple
- Self-reference should feel natural, not forced — if a pattern in the dialogue mirrors the commit's content, let a character notice

## Example Translation

See `translations/socratic/00001.md` for a canonical example.
