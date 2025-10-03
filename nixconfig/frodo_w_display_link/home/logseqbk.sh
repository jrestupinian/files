#!/run/current-system/sw/bin/bash
set -euo pipefail

curr=$(pwd)
cd /home/josee/logseq/jose/ || { echo "cd failed" >&2; exit 1; }

# Only add & commit if there are changes
if /run/current-system/sw/bin/git diff --quiet --ignore-submodules --cached && /run/current-system/sw/bin/git diff --quiet --ignore-submodules; then
  # no changes in index or working tree
  cd "$curr"
  exit 0
fi

# Stage all changes but avoid noisy output
/run/current-system/sw/bin/git add -A >/dev/null 2>&1

# Create commit only if there are staged changes
if /run/current-system/sw/bin/git diff --cached --quiet --ignore-submodules; then
  cd "$curr"
  exit 0
fi

# Use a descriptive, timestamped commit message
msg="Backup taken at $(date +%F.%H:%M:%S)"
/run/current-system/sw/bin/git commit -m "$msg" >/dev/null 2>&1

# Push, but only show errors
if ! /run/current-system/sw/bin/git push --no-verify >/dev/null 2>&1; then
  echo "git push failed" >&2
  cd "$curr"
  exit 1
fi

cd "$curr"
exit 0
