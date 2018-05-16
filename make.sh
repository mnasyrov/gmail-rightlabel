#!/bin/bash
set -e

VERSION=$(jq -r ".version" src/manifest.json)

mkdir build
cd src
zip -r ../build/gmail-rightlabel-${VERSION}.zip .
