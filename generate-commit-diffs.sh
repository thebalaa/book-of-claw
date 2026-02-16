#!/usr/bin/env bash
set -euo pipefail

OUTPUT_DIR="commit-diffs"
REPO_URL="https://github.com/openclaw/openclaw.git"

usage() {
  echo "Usage: $0 [-C output-dir]"
  echo "  -C DIR  Directory to write commit diffs into (default: commit-diffs)"
  exit 1
}

while getopts "C:h" opt; do
  case "$opt" in
    C) OUTPUT_DIR="$OPTARG" ;;
    h) usage ;;
    *) usage ;;
  esac
done

# Clone into a temporary directory and work from there
CLONE_DIR=$(mktemp -d)
trap 'rm -rf "$CLONE_DIR"' EXIT

echo "Cloning $REPO_URL into temporary directory..."
git clone --quiet "$REPO_URL" "$CLONE_DIR/repo"

mkdir -p "$OUTPUT_DIR"
OUTPUT_DIR=$(cd "$OUTPUT_DIR" && pwd)

cd "$CLONE_DIR/repo"

# Get all commits from oldest to newest
mapfile -t COMMITS < <(git rev-list --reverse HEAD)

TOTAL=${#COMMITS[@]}
echo "Processing $TOTAL commits into $OUTPUT_DIR/"

for i in "${!COMMITS[@]}"; do
  SHA="${COMMITS[$i]}"
  SHORT_SHA="${SHA:0:10}"
  NUM=$((i + 1))

  # Get commit metadata
  SUBJECT=$(git log -1 --format='%s' "$SHA")
  SAFE_SUBJECT=$(echo "$SUBJECT" | tr -cs '[:alnum:]-_ ' '-' | head -c 80)
  DIR_NAME=$(printf "%05d-%s-%s" "$NUM" "$SHORT_SHA" "$SAFE_SUBJECT")

  COMMIT_DIR="$OUTPUT_DIR/$DIR_NAME"
  mkdir -p "$COMMIT_DIR"

  # Write commit info
  git log -1 --format='Commit: %H%nAuthor: %an <%ae>%nDate:   %ai%n%n%s%n%n%b' "$SHA" > "$COMMIT_DIR/commit-info.txt"

  # Write diff (for first commit, diff against empty tree)
  if [ "$i" -eq 0 ]; then
    EMPTY_TREE=$(git hash-object -t tree /dev/null)
    git diff "$EMPTY_TREE" "$SHA" > "$COMMIT_DIR/diff.patch"
  else
    PARENT="${COMMITS[$((i - 1))]}"
    git diff "$PARENT" "$SHA" > "$COMMIT_DIR/diff.patch"
  fi

  # Progress every 100 commits
  if (( NUM % 100 == 0 )) || (( NUM == TOTAL )); then
    echo "  [$NUM/$TOTAL] $SHORT_SHA $SUBJECT"
  fi
done

echo "Done. $TOTAL commit directories created in $OUTPUT_DIR/"
