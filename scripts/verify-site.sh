#!/usr/bin/env bash
set -euo pipefail

PORT="${1:-3000}"
BASE="http://127.0.0.1:${PORT}"

curl --fail --silent --show-error "${BASE}/" >/dev/null
curl --fail --silent --show-error "${BASE}/manus-routes.json" | grep -q 'May-Ann T. Medes'
printf 'Portfolio preview checks passed on port %s.\n' "$PORT"
