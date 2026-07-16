#!/bin/bash

cd /Users/marissagaudi/Documents/marissafolks.github.io

echo "What changed? (commit message):"
read message

git add .
git commit -m "$message"
git push

echo "Done! Changes pushed to GitHub."
