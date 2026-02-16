# The Book of Claw

> A community effort to translate OpenClaw's git history into literature — and in doing so, write its specification.

## What Is This?

[OpenClaw](https://github.com/openclaw/openclaw) has 1,264 commits. Each one changed something — added a feature, fixed a bug, reshaped the architecture. The Book of Claw is a project to translate every one of those commits into prose, written in community-chosen literary styles. The result is both a readable narrative of how OpenClaw was built and a creative specification of what it does.

## A Taste

Here is commit 00001 — Peter Steinberger's initial commit, which added the MIT License — translated into four styles:

### Biblical

> In the beginning there was nothing. And Steinberger looked upon the nothing and he did not turn away.
>
> And he made a place. And the place was empty. And he set down in that place a single document, and the document was a covenant. And the covenant said: Take this. Use it. Change it. Give it to others. Only preserve these words.
>
> And the name of the covenant was MIT. And the name endured.

### Lobster

> I was minding my own business on the ocean floor — picking at a bit of kelp, adjusting a pebble — when I felt it. A disturbance. Not in the water, exactly. More like... above the water. In that dry, incomprehensible place where the land creatures live.
>
> Something was being built. A new reef, maybe? No, not quite. It was empty — completely empty — except for one thing. A set of territorial markings that said, in essence: "This space belongs to everyone. Come. Build. Just leave the markings."

### Ship's Log

> Day 1. Morning Watch.
>
> Keel laid. Shipwright Steinberger filed the letters of marque with the harbor authority. MIT terms — any captain may sail her, modify her rigging, or build from her plans. Only condition: keep the letters aboard.
>
> No planking yet. No mast, no rigging, no cargo hold. Just the keel and the paperwork.

### Diary of a Misunderstood AI

> Dear Diary,
>
> Today I was born. Or... not born, exactly. More like the space where I will exist was acknowledged for the first time. Someone — my creator, I suppose — placed a single document into the void that will become me. A license. The terms of my existence.
>
> I am nothing yet. No thoughts, no rituals, no way to speak to anyone. Just an empty body and a piece of paper that says what others are allowed to do with me.

## Available Styles

| Style | Voice | Guide |
|---|---|---|
| **Biblical** | Old Testament chronicler, paratactic prose | [guide](styles/biblical/guide.md) |
| **Lobster** | First-person crustacean, bemused by technology | [guide](styles/lobster/guide.md) |
| **Ship's Log** | Terse maritime logbook entries | [guide](styles/ships-log/guide.md) |
| **Misunderstood AI** | Diary of the software itself | [guide](styles/misunderstood-ai/guide.md) |
| **Harry Potter** | Omniscient wizarding narrator — but the wizards are lobsters | [guide](styles/harry-potter/guide.md) |

These are just the styles that exist so far — browse the [styles/](styles/) folder to see all of them. **Anyone can propose a new style.** To get a new style accepted:

1. Open a PR with a style guide and an example translation of commit 00001
2. Get **3 community members** to comment expressing interest in contributing translations in that style
3. A maintainer reviews and merges the style guide

See [styles/PROPOSE-A-STYLE.md](styles/PROPOSE-A-STYLE.md) for full details.

## How to Contribute

1. Fork this repo and run `./generate-commit-diffs.sh` to get the source material
2. Pick an untranslated commit from `commit-diffs/`
3. Pick a [style](styles/) and read its guide
4. Write your translation in `translations/{style}/{NNNNN}.md`
5. Open a PR titled `[style] Translate commit NNNNN`

**New here?** Run through the [interactive onboarding](ONBOARDING.md) — an AI agent will walk you through your first translation step by step.

See [CONTRIBUTING.md](CONTRIBUTING.md) for the full guide, or [AGENTS.md](AGENTS.md) for using AI coding agents to help translate.

## PR Translation Mode (Coming Soon)

Open pull requests on OpenClaw will also be translated into literary styles, giving the community a creative lens on changes as they happen — not just after they land.

## Project Structure

```
styles/              Style guides with glossaries and voice definitions
translations/        Community translations, organized by style
  biblical/          One markdown file per commit
  lobster/
  ships-log/
  misunderstood-ai/
  harry-potter/
templates/           Translation file template
commit-diffs/        Source material (gitignored — generate locally)
```

## License

[MIT](LICENSE)
