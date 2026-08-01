#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
BUILD_DIR="$ROOT/build"
TEMP_DIR="$(mktemp -d /private/tmp/scratchpad-build.XXXXXX)"
APP="$TEMP_DIR/ScratchPad.app"
DIST_APP="$BUILD_DIR/ScratchPad.app"
EXECUTABLE="$APP/Contents/MacOS/ScratchPad"
trap 'rm -rf "$TEMP_DIR"' EXIT

rm -rf "$BUILD_DIR"
mkdir -p "$APP/Contents/MacOS" "$APP/Contents/Resources" "$BUILD_DIR/module-cache" "$ROOT/releases"

cp "$ROOT/Info.plist" "$APP/Contents/Info.plist"
cp "$ROOT/Resources/ScratchPad.icns" "$APP/Contents/Resources/ScratchPad.icns"

swiftc -O \
  -module-cache-path "$BUILD_DIR/module-cache" \
  -framework AppKit \
  "$ROOT/Sources/ScratchPad/main.swift" \
  -o "$EXECUTABLE"

codesign --force --deep --sign - "$APP"
codesign --verify --deep --strict --verbose=2 "$APP"

ditto --norsrc --noextattr "$APP" "$DIST_APP"
xattr -d com.apple.FinderInfo "$DIST_APP" 2>/dev/null || true
xattr -d 'com.apple.fileprovider.fpfs#P' "$DIST_APP" 2>/dev/null || true

rm -f "$ROOT/releases/ScratchPad.zip"
ditto -c -k --keepParent --norsrc "$APP" "$ROOT/releases/ScratchPad.zip"

echo "Built $DIST_APP"
echo "Packaged $ROOT/releases/ScratchPad.zip"
