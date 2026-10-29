#!/usr/bin/env bash
# Generate .html copies (without the XML declaration) for GitHub Pages.
set -euo pipefail
cd "$(dirname "$0")"

for f in index en/index la/index license; do
  if [ ! -f "$f.xhtml" ]; then
    echo "missing: $f.xhtml" >&2
    exit 1
  fi
  tail -n +2 "$f.xhtml" > "$f.html"
  echo "wrote $f.html"
done
