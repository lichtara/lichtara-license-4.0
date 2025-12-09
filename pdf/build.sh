#!/bin/bash

# ==========================================================
# LICHTARA LICENSE v4 — BUILD SCRIPT FINAL
# Gera LICENSE-v4.0.pdf com logs, intermediários e segurança.
# ==========================================================

# Resolve o diretório absoluto do script
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

# Arquivos principais
MASTER="master.md"
TEMPLATE="template.tex"
OUTPUT="LICENSE-v4.0.pdf"
INTERMEDIATE_TEX="LICENSE-v4.0.tex"
LOGFILE="build.log"

# Limpa logs antigos
rm -f "$LOGFILE"

echo "----------------------------------------" | tee -a "$LOGFILE"
echo "  LICHTARA LICENSE v4 — PDF BUILD" | tee -a "$LOGFILE"
echo "  Diretório: $SCRIPT_DIR" | tee -a "$LOGFILE"
echo "----------------------------------------" | tee -a "$LOGFILE"

# Verifica arquivos essenciais
if [[ ! -f "$MASTER" ]]; then
  echo "[ERRO] master.md não encontrado no diretório pdf/" | tee -a "$LOGFILE"
  exit 1
fi

if [[ ! -f "$TEMPLATE" ]]; then
  echo "[ERRO] template.tex não encontrado no diretório pdf/" | tee -a "$LOGFILE"
  exit 1
fi

echo "[OK] Arquivos encontrados." | tee -a "$LOGFILE"


# ==========================================================
# 1. Gera arquivo .tex intermediário para depuração
# ==========================================================
echo "[1/3] Gerando arquivo .tex intermediário..." | tee -a "$LOGFILE"

pandoc "$MASTER" \
  --from=markdown \
  --template="$TEMPLATE" \
  --pdf-engine=xelatex \
  --standalone \
  --resource-path="$SCRIPT_DIR" \
  --verbose \
  -t latex \
  -o "$INTERMEDIATE_TEX" \
  >> "$LOGFILE" 2>&1

if [[ $? -ne 0 ]]; then
  echo "[ERRO] Falha ao gerar o arquivo .tex intermediário." | tee -a "$LOGFILE"
  exit 1
fi

echo "[OK] TEX gerado: $INTERMEDIATE_TEX" | tee -a "$LOGFILE"


# ==========================================================
# 2. Gera PDF final
# ==========================================================
echo "[2/3] Compilando PDF com XeLaTeX..." | tee -a "$LOGFILE"

xelatex -interaction=nonstopmode "$INTERMEDIATE_TEX" >> "$LOGFILE" 2>&1
xelatex -interaction=nonstopmode "$INTERMEDIATE_TEX" >> "$LOGFILE" 2>&1  # segunda passada LaTeX

if [[ ! -f "$OUTPUT" ]]; then
  echo "[ERRO] O PDF não foi gerado. Ver build.log" | tee -a "$LOGFILE"
  exit 1
fi

echo "[OK] PDF gerado com sucesso: $OUTPUT" | tee -a "$LOGFILE"


# ==========================================================
# 3. Limpa arquivos auxiliares LaTeX
# ==========================================================
echo "[3/3] Limpando arquivos temporários..." | tee -a "$LOGFILE"

rm -f *.aux *.log *.out *.toc *.lof *.lot *.fls *.fdb_latexmk

echo "[OK] Build concluído!" | tee -a "$LOGFILE"
echo "----------------------------------------" | tee -a "$LOGFILE"
echo "Abra o PDF final em:" | tee -a "$LOGFILE"
echo "$SCRIPT_DIR/$OUTPUT" | tee -a "$LOGFILE"
echo "----------------------------------------" | tee -a "$LOGFILE"
