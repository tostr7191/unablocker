#!/usr/bin/env bash
set -euo pipefail

DOCKER_USER="tostr7191"
DOCKER_PROJECT="unablocker"

PLATFORMS="linux/amd64"

tag=$(git describe --tags --always)

#docker build -t "$DOCKER_USER/$DOCKER_PROJECT:latest" -t "$DOCKER_USER/$DOCKER_PROJECT:$tag" .

docker buildx build --no-cache \
--platform "$PLATFORMS" \
-t "$DOCKER_USER/$DOCKER_PROJECT:latest" \
-t "$DOCKER_USER/$DOCKER_PROJECT:$tag" \
--push \
.

#docker push "$DOCKER_USER/$DOCKER_PROJECT:latest"
#docker push "$DOCKER_USER/$DOCKER_PROJECT:$tag"
