# Propose a New Literary Style

Want to add a new voice to The Book of Claw? We welcome creative proposals from the community.

## Requirements

To propose a new style, open a [New Style Proposal](../../.github/ISSUE_TEMPLATE/new-style-proposal.yml) issue with:

1. **Style name** — short, evocative (e.g., "biblical", "lobster", "ships-log")
2. **Voice description** — who is the narrator? What is the tone? (2-3 sentences)
3. **Glossary** — at least 10 mappings from technical terms to your style's vocabulary
4. **Example translation** — translate commit 00001 (the Initial Commit) in your proposed style

## Acceptance Criteria

A style is accepted when:

- The proposal includes all four requirements above
- At least **3 community members** comment expressing interest in contributing translations in that style
- A maintainer reviews and merges the style guide

## What Happens Next

Once accepted:

- A `styles/{your-style}/guide.md` is created from your proposal
- You become the initial **style steward** (see CONTRIBUTING.md for what that means)
- The community can begin submitting translations in your style

## Tips for Good Styles

- The best styles create a consistent, recognizable voice that's fun to write *and* read
- A strong glossary is the backbone — it keeps translations consistent across contributors
- Avoid styles that are too similar to existing ones
- Test your style against a few different commits (simple ones, complex ones, bug fixes) to make sure it works across different types of changes
