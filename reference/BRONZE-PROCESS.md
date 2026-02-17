# Bronze Layer Process

Step-by-step procedure for producing bronze commit summaries from raw commit diffs.

```
Phase 1: Generate Diffs → Phase 2: Write Entries → Phase 3: Tag → Phase 4: Update Index → Phase 5: Verify
```

---

## Phase 1: Generate Commit Diffs

### Step 1.1: Run the diff script

From the repository root:

```bash
./generate-commit-diffs.sh
```

Or with a custom output directory:

```bash
./generate-commit-diffs.sh -C /path/to/output
```

### Step 1.2: Identify the commit range

Determine the next unprocessed batch of 50 commits by checking the last entry in [index.md](index.md). The next file should cover the immediately following 50 commits.

### Output

Each commit produces a folder `commit-diffs/NNNNN/` containing:

- `commit-info.txt` — author, date, SHA, subject, and body
- `diff.patch` — the full diff

---

## Phase 2: Write Bronze Entries

### Step 2.1: Create the file

Create `reference/commits/commits-NNNNN-NNNNN.md` where the range matches the 50-commit batch.

### Step 2.2: Write the header

```markdown
# Commit Reference: NNNNN–NNNNN

A plain factual summary of every commit in the OpenClaw repository, from commit NNNNN through commit NNNNN.
```

### Step 2.3: Write each entry

For each commit in the range, write an entry in this exact format:

```markdown
---

## NNNNN — <subject line from commit-info.txt>
**SHA:** <first 10 chars> · **Date:** YYYY-MM-DD HH:MM
**Files changed:** <comma-separated filenames>
**Tags:** `tag1`, `tag2`

<2-3 sentence technical description of what changed and why>
```

### Decision point: trivial commits

If a commit is a merge commit or purely cosmetic (whitespace, formatting only), still include it but keep the description to one sentence.

---

## Phase 3: Assign Tags

### Step 3.1: Tag each entry

For each entry, assign one or more tags from the controlled vocabulary in [README.md](README.md).

### Step 3.2: Multiple tags

A commit can and often should have multiple tags. For example, a bugfix to the macOS UI would get `bugfix`, `macos`, `ui`.

### Step 3.3: New tags

If a commit doesn't fit any existing tag, check whether there are 3+ similar commits in the batch. If so, propose a new tag and add it to the vocabulary in README.md. If not, use the closest existing tag.

### Decision point

Prefer existing tags over creating new ones. A new tag needs 3+ commits to justify its addition.

---

## Phase 4: Update Index

### Step 4.1: Add a row to index.md

Add a row to the Bronze Layer table in [index.md](index.md).

### Step 4.2: Row format

```markdown
| `commits/commits-NNNNN-NNNNN.md` | top-tag (N), top-tag (N), top-tag (N) | 50 |
```

### Step 4.3: Count tags

Count tag occurrences across the entire batch and list the top 3 by frequency.

---

## Phase 5: Verify

Before committing, check each entry against its `commit-info.txt` and `diff.patch`:

- [ ] Subject line quoted accurately from commit-info.txt
- [ ] Technical description matches what the diff actually shows
- [ ] File names are correct
- [ ] Tags accurately reflect the commit's content
- [ ] All 50 commits in the range are present — none skipped
- [ ] SHA is the first 10 characters of the full hash
- [ ] Date matches the commit date in YYYY-MM-DD HH:MM format
