#!/bin/bash
# Pushes this folder to https://github.com/OverStarData/muslim-flow (create the empty public repo on GitHub first).
cd "$(dirname "$0")"
[ -d .git ] || git init -b main
git add -A
git commit -m "Muslim Flow: README, screenshots and redirect page" || true
git remote get-url origin >/dev/null 2>&1 || git remote add origin https://github.com/OverStarData/muslim-flow.git
git push -u origin main
echo
echo "Done. You can close this window."
