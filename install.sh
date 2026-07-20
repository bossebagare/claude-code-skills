#!/usr/bin/env bash
set -euo pipefail

REPO_URL="https://github.com/bossebagare/claude-code-skills.git"
TARGET="$HOME/.claude/skills"

if ! command -v git >/dev/null 2>&1; then
  echo "git hittades inte. Installera git forst." >&2
  exit 1
fi

if [ -d "$TARGET" ]; then
  if [ -d "$TARGET/.git" ]; then
    echo "Hittade befintligt git-repo i $TARGET, hamtar senaste (git pull)..."
    git -C "$TARGET" pull origin master
    echo "Klart. Skills-mappen ar uppdaterad."
    exit 0
  else
    BACKUP="$TARGET.bak.$(date +%Y%m%d-%H%M%S)"
    echo "Mappen $TARGET finns redan men ar inte ett git-repo. Flyttar den till $BACKUP for sakerhets skull..."
    mv "$TARGET" "$BACKUP"
  fi
fi

echo "Klonar $REPO_URL till $TARGET..."
git clone "$REPO_URL" "$TARGET"
echo "Klart. Skills installerade i $TARGET"
