#!/bin/sh
set -eu

IMAGE="ghcr.io/csiglab/produceologia:latest"
CONTAINER="produceologia"
PORT="${PRODUCEOLOGIA_PORT:-8001}"

cd "$(dirname "$0")"

# Nginx serves the static MkDocs site on port 80 inside the container.
docker pull "$IMAGE"
docker rm -f "$CONTAINER" 2>/dev/null || true
exec docker run -d --name "$CONTAINER" --restart unless-stopped \
  -p "$PORT:80" \
  "$IMAGE"
