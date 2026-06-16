#!/usr/bin/env bash
# ABOUTME: Build the public CV from cv.md into a Nur-styled web page and a PDF.
# ABOUTME: cv.md -> pandoc -> inject into web.html.tmpl (index.html) + Chrome print (cv.pdf).
set -euo pipefail
cd "$(dirname "$0")"

SRC="cv.md"
TMPL="web.html.tmpl"
WEB="index.html"
PDF="cv.pdf"
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"

# 1) Web page: pandoc body fragment injected into the Nur template.
pandoc "$SRC" -f markdown+hard_line_breaks -t html5 -o _frag.html
perl -0777 -pe 'BEGIN{ open(F, "_frag.html") or die; local $/; $c=<F>; close F } s/\{\{CONTENT\}\}/$c/' "$TMPL" > "$WEB"
rm -f _frag.html

# 2) PDF: same source, print stylesheet, headless Chrome.
pandoc "$SRC" \
  -f markdown+hard_line_breaks \
  --standalone --embed-resources \
  --variable pagetitle="Massimiliano Aroffo - CV" \
  -c print.css \
  -o _print.html
"$CHROME" --headless --disable-gpu --no-pdf-header-footer \
  --print-to-pdf="$PDF" "file://$PWD/_print.html" 2>/dev/null
rm -f _print.html

echo "Generated: $PWD/$WEB and $PWD/$PDF"
