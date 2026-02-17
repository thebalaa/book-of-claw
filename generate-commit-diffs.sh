#!/usr/bin/env bash
set -euo pipefail

OUTPUT_DIR="commit-diffs"
REPO_URL="https://github.com/openclaw/openclaw.git"
EXISTING_CLONE=""
FORCE=0
LIMIT=0
REVERSE=0

usage() {
  echo "Usage: $0 [-C output-dir] [-R repo-path] [-f] [--limit N] [--reverse]"
  echo "  -C DIR      Directory to write commit diffs into (default: commit-diffs)"
  echo "  -R PATH     Path to existing repo clone (if omitted, a temporary clone is made)"
  echo "  -f          Force full regeneration, ignoring existing commit dirs"
  echo "  --limit N   Only process the N most recent commits"
  echo "  --reverse   Process commits newest-first"
  exit 1
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    -C) OUTPUT_DIR="$2"; shift 2 ;;
    -R) EXISTING_CLONE="$2"; shift 2 ;;
    -f) FORCE=1; shift ;;
    --limit)
      if [[ -z "${2-}" || ! "${2-}" =~ ^[0-9]+$ || "${2-}" == "0" ]]; then
        echo "Error: --limit requires a positive integer argument"
        exit 1
      fi
      LIMIT="$2"; shift 2 ;;
    --reverse) REVERSE=1; shift ;;
    -h|--help) usage ;;
    --) shift; break ;;
    -*) usage ;;
    *) break ;;
  esac
done

if [ $# -gt 0 ]; then
  usage
fi

mkdir -p "$OUTPUT_DIR"
OUTPUT_DIR=$(cd "$OUTPUT_DIR" && pwd)

# Detect highest existing commit dir for incremental mode
START_IDX=0
LAST_DIR=""
if (( FORCE == 0 )); then
  LAST_DIR=$(ls "$OUTPUT_DIR" 2>/dev/null | grep -E '^[0-9]{5}-' | sort | tail -1 || true)
  if [ -n "$LAST_DIR" ]; then
    START_IDX=$(( 10#${LAST_DIR:0:5} ))
    echo "Found $START_IDX existing commit dir(s). Will process new commits only."
    echo "  (Run with -f to force full regeneration)"
  fi
fi

# Use existing clone or create temporary one
if [ -n "$EXISTING_CLONE" ]; then
  if [ ! -d "$EXISTING_CLONE/.git" ]; then
    echo "Error: '$EXISTING_CLONE' does not appear to be a git repository"
    exit 1
  fi
  echo "Using existing clone at $EXISTING_CLONE"
  cd "$EXISTING_CLONE"
  if (( START_IDX > 0 )); then
    echo "Fetching latest commits..."
    git fetch --quiet origin
    git reset --quiet --hard origin/HEAD
  fi
else
  # Clone into a temporary directory and work from there
  CLONE_DIR=$(mktemp -d)
  trap 'rm -rf "$CLONE_DIR"' EXIT

  echo "Cloning $REPO_URL into temporary directory..."
  git clone --quiet "$REPO_URL" "$CLONE_DIR/repo"
  cd "$CLONE_DIR/repo"
fi

# Get all commits from oldest to newest
mapfile -t COMMITS < <(git rev-list --reverse HEAD)

TOTAL=${#COMMITS[@]}
TOTAL_REPO=$TOTAL   # full repo commit count, used for absolute numbering with --reverse

# Apply --limit: restrict to the newest LIMIT commits
if (( LIMIT > 0 )); then
  if (( LIMIT < TOTAL )); then
    COMMITS=("${COMMITS[@]:$((TOTAL - LIMIT))}")
  fi
  TOTAL=${#COMMITS[@]}
  # Incremental mode is incompatible with --limit; reset it
  START_IDX=0
  LAST_DIR=""
fi

# Apply --reverse: flip to newest-first order
if (( REVERSE == 1 )); then
  REVERSED=()
  for (( _idx=${#COMMITS[@]}-1; _idx>=0; _idx-- )); do
    REVERSED+=("${COMMITS[$_idx]}")
  done
  COMMITS=("${REVERSED[@]}")
  # Reverse changes numbering semantics; disable incremental mode
  START_IDX=0
  LAST_DIR=""
fi

# Sanity-check the boundary: last existing dir's SHA must match the repo at that position
if (( START_IDX > 0 )); then
  EXPECTED_SHA="${COMMITS[$((START_IDX - 1))]}"
  EXISTING_SHORT=$(echo "$LAST_DIR" | cut -c7-16)
  if [[ "$EXPECTED_SHA" != "$EXISTING_SHORT"* ]]; then
    echo "Error: commit #$START_IDX in repo (${EXPECTED_SHA:0:10}) doesn't match existing dir ($EXISTING_SHORT)."
    echo "The upstream history may have been rewritten. Delete $OUTPUT_DIR/ and re-run, or use -f to force regeneration."
    exit 1
  fi
fi

NEW_COUNT=$(( TOTAL - START_IDX ))

if (( NEW_COUNT == 0 )); then
  echo "Already up to date. $TOTAL commit(s) in $OUTPUT_DIR/."
  exit 0
fi

if (( START_IDX > 0 )); then
  echo "Processing $NEW_COUNT new commit(s) (repo total: $TOTAL) into $OUTPUT_DIR/"
else
  echo "Processing $TOTAL commits into $OUTPUT_DIR/"
fi

for i in "${!COMMITS[@]}"; do
  # Absolute commit number: with --reverse, commit i=0 is the newest (= TOTAL_REPO)
  if (( REVERSE == 1 )); then
    NUM=$(( TOTAL_REPO - i ))
  else
    NUM=$(( i + 1 ))
  fi

  # Skip commits already on disk
  if (( NUM <= START_IDX )); then
    continue
  fi

  SHA="${COMMITS[$i]}"
  SHORT_SHA="${SHA:0:10}"

  # Get commit metadata
  SUBJECT=$(git log -1 --format='%s' "$SHA")
  SAFE_SUBJECT=$(echo "$SUBJECT" | tr -cs '[:alnum:]-_ ' '-' | head -c 80)
  DIR_NAME=$(printf "%05d-%s-%s" "$NUM" "$SHORT_SHA" "$SAFE_SUBJECT")

  COMMIT_DIR="$OUTPUT_DIR/$DIR_NAME"
  mkdir -p "$COMMIT_DIR"

  # Write commit info
  git log -1 --format='Commit: %H%nAuthor: %an <%ae>%nDate:   %ai%n%n%s%n%n%b' "$SHA" > "$COMMIT_DIR/commit-info.txt"

  # Write diff against the commit's actual git parent (or empty tree for root commit)
  PARENT=$(git rev-parse --verify "$SHA^" 2>/dev/null || true)
  if [[ -z "$PARENT" ]]; then
    EMPTY_TREE=$(git hash-object -t tree /dev/null)
    git diff "$EMPTY_TREE" "$SHA" > "$COMMIT_DIR/diff.patch"
  else
    git diff "$PARENT" "$SHA" > "$COMMIT_DIR/diff.patch"
  fi

  # Progress every 100 new commits, and always on the last iteration
  DONE=$(( i + 1 - START_IDX ))
  if (( DONE % 100 == 0 )) || (( i == TOTAL - 1 )); then
    echo "  [$DONE/$NEW_COUNT] $SHORT_SHA $SUBJECT"
  fi
done

if (( START_IDX > 0 )); then
  echo "Done. Added $NEW_COUNT new commit dir(s). Total: $TOTAL in $OUTPUT_DIR/"
else
  echo "Done. $TOTAL commit directories created in $OUTPUT_DIR/"
fi
