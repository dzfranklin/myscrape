#!/usr/bin/env bash
set -euox pipefail
VERSION=$(date -u '+%Y-%m-%d')
TAG="ghcr.io/dzfranklin/myscrape:$VERSION"
docker build . -t "$TAG" --push
