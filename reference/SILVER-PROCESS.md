# Silver Layer Process

Step-by-step procedure for producing silver theme narratives from bronze commit summaries.

```
Phase 1: Analyze Tags → Phase 2: Plan Themes → Phase 3: Write Theme Files → Phase 4: Update Catalogues → Phase 5: Verify
```

---

## Phase 1: Analyze Tags in Bronze Range

### Step 1.1: Read bronze files

Read all bronze files for the 500-commit range (10 files of 50 commits each). For example, for range 00501-01000, read `commits/commits-00501-00550.md` through `commits/commits-00951-01000.md`.

### Step 1.2: Extract tags

For each bronze entry, extract the tags and count occurrences per tag across the entire 500-commit range.

### Step 1.3: Identify qualifying tags

A tag qualifies for a silver theme file when it appears in **3 or more commits** within the range.

### Output

A tag frequency table listing each tag and its count, sorted by frequency.

---

## Phase 2: Plan Theme Files

### Step 2.1: Classify themes

Check [themes.md](themes.md) for each qualifying tag:

- **Continuation**: tag already has a theme row — create a new file in the new range directory
- **New**: tag has no existing theme row — add a new row to themes.md

### Step 2.2: Below-threshold tags

Tags with fewer than 3 commits in the range are skipped. They remain tracked only in the bronze layer and are listed in the "Tags without dedicated theme files" section of [index.md](index.md).

### Step 2.3: List files to create

For each qualifying tag, the file to create is: `themes/NNNNN-NNNNN/<tag>.md`

### Decision point: overlapping themes

If a qualifying tag overlaps significantly with an existing theme under a different name, merge into the existing theme rather than creating a duplicate. For example, don't create both `bugfix` and `fix` themes — use the established name.

---

## Phase 3: Write Theme Files

### Step 3.1: Create directory

```bash
mkdir -p reference/themes/NNNNN-NNNNN/
```

### Step 3.2: Gather commits

For each theme, extract all commits carrying that tag from the bronze files in the range.

### Step 3.3: Write each theme file

Use this exact format:

```markdown
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

### Step 3.4: Narrative guidelines

- Group commits into **2-5 chronological phases** based on what was happening
- Phase headings should describe what happened (e.g. "In-Chat Status Command (665)"), not "Phase 1"
- Reference specific commit numbers in prose (e.g. "Commit 00756 implemented...")
- Cross-references use relative paths within the same range directory
- **Factual only** — no opinions, metaphors, or literary language

---

## Phase 4: Update Catalogues

### Step 4.1: Update themes.md

In [themes.md](themes.md):

- For **existing themes**: append the new file path to that theme's row
- For **new themes**: add a new row in alphabetical order with the first commit number and file path

### Step 4.2: Update index.md — tags without themes

In [index.md](index.md), update the "Tags without dedicated theme files" section. List only below-threshold tags (fewer than 3 commits) for this range.

### Step 4.3: Update index.md — theme count

Update the theme count in the Silver Layer section of index.md to reflect the current total number of themes in themes.md.

---

## Phase 5: Verify

Run through this checklist:

- [ ] `ls reference/themes/NNNNN-NNNNN/*.md` shows the correct number of files
- [ ] Every qualifying tag (3+ commits) has a corresponding theme file
- [ ] Every theme file listed in themes.md has a valid file path that exists
- [ ] index.md "Tags without dedicated theme files" lists only below-threshold tags for this range
- [ ] Each theme file's commit table matches the commits tagged in the bronze files
- [ ] Narrative references correct commit numbers
- [ ] Cross-references use relative paths and point to existing files in the same range directory
