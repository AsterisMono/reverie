#!/usr/bin/env bash
set -euo pipefail

tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT

curl -L \
  https://github.com/iDvel/rime-ice/releases/latest/download/full.zip \
  -o "$tmp/full.zip"

mkdir -p /usr/share/rime-data

unzip -qo "$tmp/full.zip" -d /usr/share/rime-data
