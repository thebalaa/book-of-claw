# The Commit Lake

Welcome to the commit lake — a structured body of water where translation lobsters swim, feeding on the raw sediment of OpenClaw's git history and surfacing with enriched summaries ready for literary translation.

The lake has three layers, from the silty bottom to the shimmering surface:

```
  ~~~  Silver  ~~~   Theme narratives — the currents that connect
  ===  Bronze  ===   Per-commit summaries — the enriched middle water
  ...  Raw     ...   Commit diffs — the sediment on the lake floor
```

## Raw Layer: The Sediment

The `commit-diffs/` directory at the repository root holds the unprocessed output of `generate-commit-diffs.sh` — one folder per commit, **11,243 commits** and counting.

Each folder is named `NNNNN-<sha10>-<subject>/` and contains:

- `commit-info.txt` — author, date, SHA, subject, and body
- `diff.patch` — the full diff

This is the lake floor. Lobsters don't eat here directly — the sediment is too raw. But it's the source of truth from which everything above is refined.

## Bronze Layer: The Middle Water

One file per batch of 50 commits, in `commits/commits-NNNNN-NNNNN.md`.

Each entry follows this format:

```
---

## NNNNN — <subject line>
**SHA:** <first 10 chars> · **Date:** YYYY-MM-DD HH:MM
**Files changed:** <comma-separated filenames>
**Tags:** `tag1`, `tag2`

<2-3 sentence technical description>
```

The bronze layer is where raw sediment becomes digestible — factual, tagged, and structured for consumption. Translation lobsters feed primarily here.

## Silver Layer: The Surface Currents

One file per theme per 500-commit range, in `themes/<range>/` (e.g. `themes/00501-01000/auto-reply.md`).

Each theme file follows this format:

```
# Theme: <Display Name>

<Opening paragraph — 2-4 sentences summarizing the theme's arc in this range>

## Commits

| # | Subject | Date |
|---|---------|------|
| NNNNN | <subject> | YYYY-MM-DD HH:MM |

## Narrative

### <Phase Heading> (Commits NNNN-NNNN)

<Factual prose, 1-2 paragraphs per phase. Reference commit numbers.>

## Cross-references

- [theme](theme.md) -- relationship description
```

Silver narratives trace the currents that run through the lake — how features evolved, bugs cascaded, and architecture shifted across hundreds of commits. They connect what the bronze layer keeps separate.

## Gold Layer: What the Lobsters Create

The gold layer is what all this infrastructure exists to support — the literary translations that authors produce by swimming through the lake. These are the poems, stories, and creative works that transform factual commit history into literature. Gold lives outside the `reference/` directory, in the hands of the translators themselves.

These are the weird fishes that emerge from the lake's depths, their forms shifting and changing with each passing commit as they crawl, slither and drag themselves ashore.

## How Layers Connect

Tags are the join key between bronze and silver. Every tag in a bronze entry maps to a potential theme file. A tag qualifies for its own silver theme file when it appears in **3 or more commits** within a 500-commit range. Tags below this threshold remain tracked only in the bronze layer.

## Tag Vocabulary

| Tag | Meaning |
|-----|---------|
| `api` | REST/GraphQL API endpoints and handlers |
| `audio` | Audio playback, recording, sound handling |
| `auto-reply` | Config-driven and Claude auto-reply system |
| `bugfix` | Fixing incorrect behavior |
| `build` | Build system, compilation, bundling |
| `ci` | Continuous integration, GitHub Actions |
| `cleanup` | Dead code removal, cosmetic tidying |
| `config` | Configuration system, settings management |
| `core-feature` | Primary relay functionality (send, receive, poll, webhook) |
| `cross-platform` | Platform abstraction, shared code across OS targets |
| `debugging` | Debug tooling, diagnostic features |
| `dependency` | Dependency updates, removals |
| `devops` | Deployment, infrastructure, CI/CD |
| `documentation` | README, comments, JSDoc, guides |
| `error-handling` | Error recovery, retries, failure modes |
| `genesis` | Project creation, licensing |
| `ios` | iOS-specific features and fixes |
| `linting` | Biome, code quality tooling |
| `logging` | Log output, log levels, structured logging |
| `macos` | macOS-specific features and fixes |
| `naming` | Renames, aliases, cosmetic identity |
| `networking` | HTTP, WebSocket, connection management |
| `optimization` | Performance improvements, caching |
| `performance` | Speed, memory, resource usage |
| `persistence` | Data storage, databases, file-based state |
| `process-lifecycle` | Keeping alive, graceful shutdown, signals |
| `provider` | Multi-provider architecture (Twilio vs Web) |
| `refactor` | Restructuring without behavior change |
| `security` | Auth, encryption, access control |
| `testing` | Vitest, unit tests, test infrastructure |
| `twilio-api` | Twilio SDK/API integration |
| `type-safety` | TypeScript type improvements |
| `ui` | Visual interface components, layout, styling |
| `ux` | User-facing prompts, error messages, defaults |
| `verbosity` | Logging, output control, --verbose, --quiet |

Commits can have multiple tags. If a commit doesn't fit existing tags, consider adding a new tag — but prefer existing tags; new tags should have 3+ commits to justify inclusion.

## Conventions

- One bronze file per batch of 50 commits
- Entries ordered by commit number
- Use `##` headings for each commit: `## NNNNN — Commit subject`
- Include SHA, date (YYYY-MM-DD HH:MM), files changed, and tags below the heading
- No opinions, metaphors, or style-specific language in either layer
- Theme narratives are factual — literary interpretation belongs in the translations
- Theme phase headings should describe what happened, not just "Phase 1"
- Cross-references use relative paths within the same range directory

## Process Guides

- [BRONZE-PROCESS.md](BRONZE-PROCESS.md) — step-by-step procedure for producing bronze commit summaries
- [SILVER-PROCESS.md](SILVER-PROCESS.md) — step-by-step procedure for producing silver theme narratives

## Catalogues

- [index.md](index.md) — inventory of all bronze and silver documents
- [themes.md](themes.md) — master list of all themes with file paths
