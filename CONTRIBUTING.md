# Contributing to The Book of Claw

## Quick Start

1. **Fork** this repository
2. **Clone** and run `./generate-commit-diffs.sh` to get the source material
3. **Pick a commit** — browse `commit-diffs/` or check the coverage matrix (coming soon)
4. **Pick a style** — read its [style guide](styles/)
5. **Write your translation** in `translations/{style}/{NNNNN}.md` using the [template](templates/translation-template.md)
6. **Open a PR** with the title: `[style] Translate commit NNNNN`

## Getting the Source Material

The raw commit diffs are not stored in this repository (they're ~88MB). Generate them locally:

```bash
./generate-commit-diffs.sh
```

This clones the OpenClaw repo and extracts all 1,264 commits into `commit-diffs/`. Each commit directory contains:

- `commit-info.txt` — commit hash, author, date, and message
- `diff.patch` — the full unified diff

## Translation Format

Every translation file lives at `translations/{style}/{NNNNN}.md` where `NNNNN` is the zero-padded commit number.

### Required Frontmatter

```yaml
---
commit_number: 00042
commit_sha: "abc123def456..."
style: biblical
title: "An Evocative Title"
author: your-github-username
date: 2026-02-15
---
```

### Required Sections

Each translation has two sections:

**The Translation** — the literary version, written in the chosen style using its glossary and voice conventions.

**The Changes** — a plain-english technical summary of what the commit actually does. This is the "key" that ensures technical accuracy is preserved regardless of how creative the literary version gets.

See [templates/translation-template.md](templates/translation-template.md) for the full template.

## Style Guides

Before writing, read the style guide for your chosen style:

| Style | Guide |
|---|---|
| Biblical | [styles/biblical/guide.md](styles/biblical/guide.md) |
| Lobster | [styles/lobster/guide.md](styles/lobster/guide.md) |
| Ship's Log | [styles/ships-log/guide.md](styles/ships-log/guide.md) |
| Misunderstood AI | [styles/misunderstood-ai/guide.md](styles/misunderstood-ai/guide.md) |

Each guide includes a **glossary** mapping technical terms to style-specific vocabulary. Use it consistently — this is what makes translations in the same style feel cohesive across different authors.

## PR Guidelines

- **Title format:** `[biblical] Translate commit 00042`
- **Batch PRs:** You may include up to 10 translations in a single PR. Keep them in the same style for easier review.
- **One style per file:** Each file translates one commit in one style. If you want to translate the same commit in two styles, that's two files.

## Review Process

Every translation PR needs **one approving review** from a maintainer or style steward.

Reviewers check:

1. **Style adherence** — does it follow the style guide and use the glossary?
2. **Technical accuracy** — does "The Changes" section correctly describe the commit?
3. **Completeness** — does the literary translation actually cover the commit's changes?

The bar is "follows the style guide and is technically accurate." We are not gatekeeping prose quality — if your translation follows the rules and gets the facts right, it's welcome.

## Style Stewards

A **style steward** is a community member who has contributed 10+ accepted translations in a given style. Stewards:

- Are listed in that style's `guide.md`
- Can approve translation PRs in their style
- Help maintain glossary consistency
- Mentor new contributors to their style

## Using AI Agents

AI coding agents can draft translations quickly. See [AGENTS.md](AGENTS.md) for a complete guide on using agents effectively — feeding them the right context, reviewing their output, and batch translation.

## Proposing a New Style

See [styles/PROPOSE-A-STYLE.md](styles/PROPOSE-A-STYLE.md) for full details. In short: open an issue with a name, voice description, glossary (10+ terms), and an example translation. If 3+ people want to write in your style, it gets accepted.
