# Onboarding: Your First Contribution

> **No coding experience required.** This project is about writing, not programming. If you can read and have opinions about prose, you can contribute.
>
> If you're using an AI coding agent (Claude Code, Cursor, Codex, etc.), point it at this file — just type `@ONBOARDING.md` — and say: **"Walk me through the onboarding."** The agent will handle the technical steps for you.

## What You'll Be Doing

The Book of Claw takes real software changes (git commits) and translates them into literary prose — biblical chronicles, lobster diaries, ship's logs, and more. Your job is to pick a commit, pick a style, and write (or help your AI agent write) a translation. The agent handles the git, the files, and the PR. You handle the voice.

## Two Tracks

- **Track A: Translate a Commit** — pick an existing style and translate a commit (Stages 1-6)
- **Track B: Propose a New Style** — invent a new literary voice for the project (Stages 1, 7)

Both tracks start with Stage 1.

---

## Stage 1: Environment Setup

### What the agent does

1. Check if `commit-diffs/` exists and contains numbered directories:

```bash
ls commit-diffs/ | head -5
```

2. If `commit-diffs/` is missing or empty, run the generator:

```bash
./generate-commit-diffs.sh
```

This clones OpenClaw and extracts all 1,264 commits (~88MB). It takes a few minutes.

3. Verify a git remote is configured (the contributor should be working from a fork):

```bash
git remote -v
```

The contributor should have an `origin` pointing to their fork. If not, help them set it up.

4. Check if the GitHub CLI (`gh`) is installed and authenticated — it's needed to open PRs in Stages 6 and 7:

```bash
gh --version
gh auth status
```

If `gh` is not installed, help the contributor install it:

- **macOS:** `brew install gh`
- **Debian/Ubuntu:** `sudo apt install gh` (or see https://github.com/cli/cli/blob/trunk/docs/install_linux.md)
- **Windows:** `winget install GitHub.cli`
- **Other:** Download from https://cli.github.com

If `gh` is installed but not authenticated:

```bash
gh auth login
```

Walk through the prompts: choose GitHub.com, HTTPS protocol, authenticate via browser. The agent should guide the contributor through each prompt if they get stuck.

5. Once the style and commit are chosen (Stages 2-3), create a working branch:

```bash
git checkout -b translate/{style}/{NNNNN}
```

### What the agent asks

- "Do you already have a fork of this repo, or should I help you set one up?"
- "I see `commit-diffs/` doesn't exist yet. Want me to run `./generate-commit-diffs.sh` to generate the source material?"
- "Do you have the GitHub CLI (`gh`) installed? We'll need it to open your PR later."
- "Which track do you want? **A) Translate a commit** in an existing style, or **B) Propose a new style**?"

### What to check

- [ ] `commit-diffs/` exists and contains 1,264 subdirectories
- [ ] `git remote -v` shows a fork as `origin`
- [ ] `gh auth status` shows an authenticated session
- [ ] Working branch is created (after Stages 2-3, or Stage 7)

---

## Stage 2: Choose Your Style

### What the agent does

1. List the available styles by reading the `styles/` directory:

| Style | Voice | Guide |
|---|---|---|
| **Biblical** | Old Testament chronicler, paratactic prose | [styles/biblical/guide.md](styles/biblical/guide.md) |
| **Lobster** | First-person crustacean, bemused by technology | [styles/lobster/guide.md](styles/lobster/guide.md) |
| **Ship's Log** | Terse maritime logbook entries | [styles/ships-log/guide.md](styles/ships-log/guide.md) |
| **Misunderstood AI** | Diary of the software itself | [styles/misunderstood-ai/guide.md](styles/misunderstood-ai/guide.md) |

2. When the contributor picks a style, read that style's guide from `styles/{style}/guide.md` — summarize the voice, tone, and key glossary terms.

3. Show the example translation from `translations/{style}/00001.md` so the contributor can see the style in action.

### What the agent asks

- "Which style appeals to you? Here's a quick summary of each..."
- "Here's what commit 00001 looks like in **{style}**. Does this feel like something you'd enjoy writing in?"
- "Want to see another style before deciding?"

### What to check

- [ ] Contributor has chosen a style
- [ ] The style's `guide.md` exists at `styles/{style}/guide.md`
- [ ] The example translation exists at `translations/{style}/00001.md`

---

## Stage 3: Choose Your Commit

### What the agent does

1. Check translation coverage — list which commits already have translations in the chosen style:

```bash
ls translations/{style}/
```

2. Suggest the next untranslated commit. With only 00001 currently translated per style, suggest 00002 as a natural starting point, or let the contributor pick any number from 1-1264.

3. Once a commit is chosen, read its source material:
   - `commit-diffs/{NNNNN}-*/commit-info.txt` — commit metadata
   - `commit-diffs/{NNNNN}-*/diff.patch` — the actual changes

4. Present a summary: author, date, commit message, and a brief description of what changed.

### What the agent asks

- "In **{style}**, commit 00001 is already translated. Want to take commit 00002 (the next one), or pick a specific number?"
- "Here's what commit {NNNNN} does: {summary}. Want to translate this one, or see another?"

### What to check

- [ ] The chosen commit number is between 00001 and 01264
- [ ] No existing translation at `translations/{style}/{NNNNN}.md`
- [ ] The commit's source material exists in `commit-diffs/`

---

## Stage 4: Generate Draft Translation

### What the agent does

1. Read all required context:
   - **Commit diff:** `commit-diffs/{NNNNN}-*/diff.patch`
   - **Commit info:** `commit-diffs/{NNNNN}-*/commit-info.txt`
   - **Style guide:** `styles/{style}/guide.md` (voice, structure, glossary)
   - **Template:** `templates/translation-template.md`
   - **Example:** `translations/{style}/00001.md` (for calibration)

2. Generate a draft translation following the template format:
   - Fill in the YAML frontmatter (commit_number, commit_sha, style, title, author, date)
   - Write **The Translation** section in the chosen style's voice, using its glossary
   - Write **The Changes** section as a factual technical summary

3. Present the full draft to the contributor.

### What the agent asks

- "Here's my draft translation. What do you think?"
- "Should I adjust the title? The current one is: **{title}**"
- "The tone feels {assessment} — want me to push it further or pull it back?"

### What to check

- [ ] Frontmatter has all required fields: commit_number, commit_sha, style, title, author, date
- [ ] Glossary terms are used consistently (technical terms mapped to style vocabulary)
- [ ] **The Translation** follows the style's structural conventions
- [ ] **The Changes** accurately describes the commit's technical content
- [ ] The translation covers all significant changes in the diff

---

## Stage 5: Review and Refine

### What the agent does

1. Self-check the draft against the glossary — scan for any technical terms that should have been translated to style-specific vocabulary.

2. Verify structural conventions:
   - **Biblical:** Paratactic prose, "and" conjunctions, no archaic forms
   - **Lobster:** First-person, ocean metaphor present, parenthetical asides
   - **Ship's Log:** "Day N. Watch." header, 3-8 sentences, status closing
   - **Misunderstood AI:** Diary format, introspective moment, emotional honesty

3. Iterate based on contributor feedback. Common revision requests:
   - "Make it more/less dramatic"
   - "The glossary term for X should be Y instead"
   - "The Changes section is missing detail about Z"
   - "The voice doesn't quite match the style guide"

4. When the contributor approves, finalize the translation.

### What the agent asks

- "I found a couple of glossary misses — I used 'repository' where the guide says '{style_term}'. Want me to fix those?"
- "Anything you'd like to change before we finalize?"
- "Are you happy with this version?"

### What to check

- [ ] All glossary terms are correctly mapped
- [ ] Style structural conventions are followed
- [ ] Technical accuracy is preserved in **The Changes**
- [ ] Contributor has explicitly approved the final version

---

## Stage 6: Submit

### What the agent does

1. Write the final translation to `translations/{style}/{NNNNN}.md`.

2. Commit with the conventional message format:

```bash
git add translations/{style}/{NNNNN}.md
git commit -m "[{style}] Translate commit {NNNNN}"
```

3. Push the branch and open a PR (or provide the commands):

```bash
git push -u origin translate/{style}/{NNNNN}
gh pr create --title "[{style}] Translate commit {NNNNN}" --body "Translates commit {NNNNN} into the **{style}** style.

## Checklist
- [ ] Follows style guide: styles/{style}/guide.md
- [ ] Glossary terms used consistently
- [ ] The Changes section is technically accurate
- [ ] Translation covers all significant changes in the diff"
```

### What the agent asks

- "Ready to save and commit?"
- "Should I push and open the PR, or just give you the commands to run yourself?"

### What to check

- [ ] File written to `translations/{style}/{NNNNN}.md`
- [ ] Commit message follows format: `[{style}] Translate commit {NNNNN}`
- [ ] Branch pushed to fork
- [ ] PR opened (or commands provided)

---

## Stage 7: Propose a New Style (Track B)

> Skip here from Stage 1 if the contributor wants to create a new literary style rather than translate in an existing one.

### What the agent does

1. Read the proposal requirements from `styles/PROPOSE-A-STYLE.md`. A complete proposal needs four things:
   - **Style name** — short, evocative (e.g., "noir", "nature-documentary", "sports-commentator")
   - **Voice description** — who is the narrator? What is the tone? (2-3 sentences)
   - **Glossary** — at least 10 mappings from technical terms to style vocabulary
   - **Example translation** — commit 00001 translated in the proposed style

2. Help the contributor brainstorm their style. Start by asking about the voice and narrator, then work through the glossary together.

3. Read an existing style guide (e.g., `styles/biblical/guide.md`) as a structural template — the new guide should follow the same format:
   - Voice and Tone
   - The Narrator
   - Structural Conventions
   - Glossary (table mapping technical terms to style vocabulary)
   - Vocabulary Guidelines

4. Build the glossary interactively. Start with the core terms that every style maps (repository, commit, function, variable, bug, fix, refactor, test, deploy, merge) and expand from there. Show the contributor how other styles handle the same terms for inspiration.

5. Read `commit-diffs/00001-*/commit-info.txt` and `commit-diffs/00001-*/diff.patch`, then generate a draft example translation of commit 00001 in the new style. Show the existing 00001 translations from other styles for comparison.

6. Iterate on the voice, glossary, and example until the contributor is satisfied.

7. Create the working branch:

```bash
git checkout -b style/{style-name}
```

8. Write the style guide and example translation:

```bash
mkdir -p styles/{style-name}
# Write styles/{style-name}/guide.md
mkdir -p translations/{style-name}
# Write translations/{style-name}/00001.md
```

9. Commit and push:

```bash
git add styles/{style-name}/guide.md translations/{style-name}/00001.md
git commit -m "Propose new style: {style-name}"
git push -u origin style/{style-name}
```

10. Open a PR:

```bash
gh pr create --title "New style proposal: {style-name}" --body "## New Style: {style-name}

**Voice:** {voice description}

**Narrator:** {narrator description}

**Glossary size:** {N} terms

This PR includes:
- \`styles/{style-name}/guide.md\` — full style guide with glossary
- \`translations/{style-name}/00001.md\` — example translation of the initial commit

See [styles/PROPOSE-A-STYLE.md](styles/PROPOSE-A-STYLE.md) for acceptance criteria."
```

### What the agent asks

- "Do you have an idea for a style, or want to brainstorm together?"
- "Who is the narrator? What's the tone — serious, playful, detached, intimate?"
- "Let's build your glossary. In your style, what would you call a 'repository'? A 'commit'? A 'bug'?"
- "Here's how the other styles translate commit 00001. Here's my draft in your style — how does it feel?"
- "Want to adjust the voice, tweak the glossary, or refine the example before we submit?"
- "Ready to open the PR? It needs 3 community members to express interest before it gets accepted."

### What to check

- [ ] Style name is short, evocative, and kebab-cased (for use as directory name)
- [ ] Voice description is 2-3 sentences
- [ ] Glossary has at least 10 technical-to-style mappings
- [ ] Style guide follows the same structure as existing guides in `styles/`
- [ ] Example translation of commit 00001 exists and follows the template format
- [ ] Example translation uses the proposed glossary consistently
- [ ] Guide written to `styles/{style-name}/guide.md`
- [ ] Example written to `translations/{style-name}/00001.md`
- [ ] PR opened with clear description

---

## Reference: Key File Paths

| What | Where |
|---|---|
| Source material (commit info) | `commit-diffs/{NNNNN}-*/commit-info.txt` |
| Source material (diff) | `commit-diffs/{NNNNN}-*/diff.patch` |
| Style guides | `styles/{style}/guide.md` |
| Translation template | `templates/translation-template.md` |
| Example translations | `translations/{style}/00001.md` |
| Output location | `translations/{style}/{NNNNN}.md` |
| Style proposal guide | [styles/PROPOSE-A-STYLE.md](styles/PROPOSE-A-STYLE.md) |
| Full contributor guide | [CONTRIBUTING.md](CONTRIBUTING.md) |
| Agent usage guide | [AGENTS.md](AGENTS.md) |
| GitHub CLI | https://cli.github.com |
