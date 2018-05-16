#!/bin/bash
set -e

VERSION=$(jq -r ".version" src/manifest.json)
FILENAME="gmail-rightlabel-${VERSION}.zip"

mkdir -p build
test -f build/${FILENAME} && rm build/${FILENAME}
cd src
zip -r ../build/${FILENAME} .
