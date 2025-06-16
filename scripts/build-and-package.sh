#!/bin/sh

set -ex

cd "$(git rev-parse --show-toplevel)"

VERSION="$(jq -r ".version" <package.json)"
DIST_NAME="um-web.$1.v${VERSION}"

case "$1" in
"modern") npm run build -- --modern ;;
"legacy") npm run build ;;
"extension") npm run make-extension ;;
"--all")
  "$0" legacy
  "$0" extension
  "$0" modern
  exit 0
  ;;

*)
  echo "Unknown command: $1"
  exit 1
  ;;
esac

cp README.md LICENSE dist/
mv dist "${DIST_NAME}"
zip -rJ9 "${DIST_NAME}.zip" "${DIST_NAME}"

if [ "$1" = "legacy" ]; then
  # For upcoming extension build
  mv "${DIST_NAME}" dist
else
  rm -rf "${DIST_NAME}"
fi
