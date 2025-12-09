#!/bin/bash

# Resolve o caminho absoluto da pasta onde o script está
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

# Arquivos principais
MASTER="master.md"
TEMPLATE="template.tex"
OUTPUT="LICENSE-v4.0.pdf"

# Gerar o PDF
pandoc "$MASTER" \
  --from=markdown \
  --pdf-engine=xelatex \
  --template="$TEMPLATE" \
  --resource-path="$SCRIPT_DIR" \
  --verbose \
  -o "$OUTPUT"
