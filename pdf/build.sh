#!/usr/bin/env bash

set -e

echo "[LICHTARA] Iniciando build do PDF..."

# Caminho base do script

BASE_DIR="$(cd "$(dirname "$0")" && pwd)"
MASTER="${BASE_DIR}/master.md"
TEMPLATE="${BASE_DIR}/template.tex"
OUTPUT="${BASE_DIR}/LICENSE-v4.0.pdf"

# Checagem do master.md

if [ ! -f "$MASTER" ]; then
echo "[ERRO] master.md não encontrado em ${MASTER}"
exit 1
fi

# Checagem do template.tex

if [ ! -f "$TEMPLATE" ]; then
echo "[ERRO] template.tex não encontrado em ${TEMPLATE}"
exit 1
fi

# Limpeza de builds anteriores

if [ -f "$OUTPUT" ]; then
echo "[LICHTARA] Removendo PDF anterior..."
rm "$OUTPUT"
fi

echo "[LICHTARA] Compilando com Pandoc + XeLaTeX..."
pandoc "$MASTER"
--from markdown
--template "$TEMPLATE"
--pdf-engine=xelatex
-o "$OUTPUT"

echo "[LICHTARA] Build finalizado com sucesso."
echo "[LICHTARA] Arquivo gerado: $OUTPUT"
