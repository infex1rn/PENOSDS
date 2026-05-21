#!/usr/bin/env bash
set -euo pipefail

PROJECT="${PROJECT:-/workspace}"
LIVE_BUILD="$PROJECT/iso/live-build"
OUT="$PROJECT/builds/output"
LOGS="$PROJECT/logs"

echo "======================================"
echo "      PENOS LIVE ISO BUILD SYSTEM      "
echo "======================================"

mkdir -p "$OUT" "$LOGS"

cd "$LIVE_BUILD"

lb clean --purge || true
lb config

echo "Starting PENOS ISO build..."
lb build 2>&1 | tee "$LOGS/penos-live-build.log"

cp -f live-image-amd64.hybrid.iso "$OUT/PENOS-0.1-alpha-amd64.iso"

echo "======================================"
echo "PENOS ISO BUILD COMPLETE"
echo "Output:"
echo "$OUT/PENOS-0.1-alpha-amd64.iso"
echo "======================================"
