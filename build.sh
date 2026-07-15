#!/bin/sh
# Minify index.html -> dist/index.html. Run before pushing; deploy dist/.
set -e
cd "$(dirname "$0")"
mkdir -p dist
npx --yes html-minifier-terser index.html -o dist/index.html \
  --collapse-whitespace --remove-comments --minify-css true --minify-js true
wc -c index.html dist/index.html
