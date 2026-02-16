# The Book of Claw

> A community effort to translate OpenClaw's git history into literature — and in doing so, write its specification.

## What Is This?

[OpenClaw](https://github.com/openclaw/openclaw) has 1,264 commits. Each one changed something — added a feature, fixed a bug, reshaped the architecture. The Book of Claw is a project to translate every one of those commits into prose, written in community-chosen literary styles. The result is both a readable narrative of how OpenClaw was built and a creative specification of what it does.

## A Taste

Here is commit 00001 — Peter Steinberger's initial commit, which added the MIT License — translated into four styles:

### Biblical

> In the beginning, there was the Void, and the Void was without form, and darkness was upon the face of the repository.
>
> And the Scribe, Steinberger, moved upon the face of the emptiness, and he spake: "Let there be structure." And there was structure, and it was good.
>
> And in the first inscription, he laid down the Covenant — the MIT License — which declareth unto all who would come after: "Thou art free."

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
| **Biblical** | King James English, omniscient chronicler | [guide](styles/biblical/guide.md) |
| **Lobster** | First-person crustacean, bemused by technology | [guide](styles/lobster/guide.md) |
| **Ship's Log** | Terse maritime logbook entries | [guide](styles/ships-log/guide.md) |
| **Misunderstood AI** | Diary of the software itself | [guide](styles/misunderstood-ai/guide.md) |

Want to add a style? [Propose one.](styles/PROPOSE-A-STYLE.md)

## How to Contribute

1. Fork this repo and run `./generate-commit-diffs.sh` to get the source material
2. Pick an untranslated commit from `commit-diffs/`
3. Pick a [style](styles/) and read its guide
4. Write your translation in `translations/{style}/{NNNNN}.md`
5. Open a PR titled `[style] Translate commit NNNNN`

See [CONTRIBUTING.md](CONTRIBUTING.md) for the full guide.

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
templates/           Translation file template
commit-diffs/        Source material (gitignored — generate locally)
```

## License

[MIT](LICENSE)
