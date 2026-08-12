#!/usr/bin/env bash
set -euo pipefail

BUNDLE_DIR="${1:-build/linux/x64/release/bundle}"
OUTPUT_DEB="${2:-katan-amd64.deb}"

if [ -n "${VERSION:-}" ]; then
  :
elif [ -n "${RELEASE_TAG:-}" ] && [[ "$RELEASE_TAG" =~ ^v[0-9] ]]; then
  VERSION="${RELEASE_TAG#v}"
else
  VERSION=$(grep '^version:' pubspec.yaml | sed 's/version: *\([0-9.]*\).*/\1/')
fi
DEB_NAME="katan-${VERSION}-amd64.deb"

PKG_DIR="deb_staging"
rm -rf "$PKG_DIR"
mkdir -p "$PKG_DIR/DEBIAN"
mkdir -p "$PKG_DIR/opt/katan"
mkdir -p "$PKG_DIR/usr/bin"
mkdir -p "$PKG_DIR/usr/share/applications"
mkdir -p "$PKG_DIR/usr/share/pixmaps"

cp -a "$BUNDLE_DIR"/* "$PKG_DIR/opt/katan"

ICON_CANDIDATES=(
  "linux/runner/resources/app_icon.png"
  "macos/Runner/Assets.xcassets/AppIcon.appiconset/app_icon_256.png"
  "android/app/src/main/res/mipmap-xxxhdpi/ic_launcher.png"
)
ICON_COPIED=0
for ICON_SRC in "${ICON_CANDIDATES[@]}"; do
  if [ -f "$ICON_SRC" ]; then
    cp "$ICON_SRC" "$PKG_DIR/usr/share/pixmaps/katan.png"
    ICON_COPIED=1
    break
  fi
done
if [ "$ICON_COPIED" -eq 0 ]; then
  echo "Warning: icon file not found; package will have no pixmap"
fi

cat > "$PKG_DIR/usr/bin/katan" << 'WRAPPER'
#!/bin/sh
exec /opt/katan/katan "$@"
WRAPPER
chmod 755 "$PKG_DIR/usr/bin/katan"

cat > "$PKG_DIR/usr/share/applications/katan.desktop" << 'DESKTOP'
[Desktop Entry]
Name=Katan
Comment=Katan desktop client
Exec=/opt/katan/katan
Icon=katan
Terminal=false
Type=Application
Categories=Utility;Network;
DESKTOP

cat > "$PKG_DIR/DEBIAN/control" << CONTROL
Package: katan
Version: $VERSION
Section: utils
Priority: optional
Architecture: amd64
Maintainer: Magomedcoder <info@magomedcoder.ru>
Description: Katan desktop client
 Katan client application for Linux.
CONTROL

dpkg-deb -b "$PKG_DIR" "$DEB_NAME"
rm -rf "$PKG_DIR"

if [ -n "$OUTPUT_DEB" ] && [ "$DEB_NAME" != "$OUTPUT_DEB" ]; then
  mv "$DEB_NAME" "$OUTPUT_DEB"
fi

echo "Built: ${OUTPUT_DEB:-$DEB_NAME}"
