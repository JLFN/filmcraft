#!/bin/bash
# Build and install FilmCraft from this folder.
#
# Builds the release binary with the embedded canonical builder in ./build,
# installs it into ~/.local/bin, and installs the icon set and desktop entry.
# The builder copies the binary to ./bin/ and removes ./target afterwards, so
# the disk does not fill with build output.
#
# FilmCraft needs FFmpeg with the APV codec and the gbrpf16le pixel format for
# its APV export and EXR paths; this machine provides FFmpeg 8.1 in
# ~/.local/opt/ffmpeg-static, linked into ~/.local/bin.
set -euo pipefail

APP=filmcraft
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BUILDER="$ROOT/build/linux/build.sh"
BIN_DIR="$HOME/.local/bin"
ICON_DIR="$HOME/.local/share/icons"
APPS_DIR="$HOME/.local/share/applications"

echo "== build =="
bash "$BUILDER" -p "$ROOT" -b "$APP"

echo "== install =="
install -Dm755 "$ROOT/bin/$APP" "$BIN_DIR/$APP"
if [ -d "$ROOT/assets/app-icon/hicolor" ]; then
  mkdir -p "$ICON_DIR"
  cp -r "$ROOT/assets/app-icon/hicolor" "$ICON_DIR/"
fi
for desk in "$ROOT"/packaging/linux/*.desktop; do
  [ -e "$desk" ] || continue
  install -Dm644 "$desk" "$APPS_DIR/$(basename "$desk")"
  if [ -d "$HOME/Desktop" ]; then install -m755 "$desk" "$HOME/Desktop/$(basename "$desk")"; fi
done
command -v update-desktop-database >/dev/null && update-desktop-database "$APPS_DIR" || true
command -v gtk-update-icon-cache >/dev/null && gtk-update-icon-cache -f -t "$ICON_DIR/hicolor" || true

echo "installed $BIN_DIR/$APP"
