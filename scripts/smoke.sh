#!/usr/bin/env bash
set -euo pipefail
PORT="${PORT:-3000}"
for i in {1..30}; do
  if curl -fsS "http://localhost:$PORT/" >/dev/null; then
    echo "Smoke OK"
    exit 0
  fi
  sleep 1
done
echo "Smoke FAIL" >&2
exit 1
