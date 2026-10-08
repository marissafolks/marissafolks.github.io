#!/bin/bash
set -e

# Always run from the folder this script lives in, wherever it's launched from
cd "$(dirname "$0")"

if [ -z "$(git status --porcelain)" ]; then
  echo "Nothing to push. No changes since the last commit."
  exit 0
fi

echo "What changed? (commit message):"
read message

git add .
git commit -m "$message"
git push

echo "Done! Changes pushed to GitHub."
