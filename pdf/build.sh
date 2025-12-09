#!/bin/bash

cd "$(dirname "$0")"

pandoc master.md \
  --from=markdown \
  --pdf-engine=xelatex \
  --template=../templates/template.tex \
  --verbose \
  -o LICENSE-v4.0.pdf
