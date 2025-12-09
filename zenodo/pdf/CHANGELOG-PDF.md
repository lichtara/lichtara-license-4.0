# CHANGELOG — LICHTARA LICENSE v4.0 (PDF)

Histórico de alterações visuais, estruturais e de template.

---

## **v4.0 — 2025-12-XX (versão inicial do PDF oficial)**

### Estrutura base criada:

* Capa em azul profundo (#0A1A2F), com títulos em dourado (#D4AF37)
* Folha de rosto formal com DOI e autoria expandida
* Marca d’água diagonal “LICHTARA” (8–12% opacidade)
* Cabeçalho e rodapé institucionais
* Tipografia:

  * Títulos: Libre Baskerville / EB Garamond
  * Corpo: Inter / Source Sans / Lato
  * Código: Fira Code / JetBrains Mono
* Template LaTeX criado em `/pdf/template.tex`
* Script canônico de compilação `/pdf/build.sh`
* Manual de Produção `/pdf/production-notes.md`

### Estrutura lógica do PDF:

* Capa → Folha de rosto → NOTICE → Sumário
* Seções I a IX (completa)
* Anexos A–E
* Glossário
* Apêndices
* Referências
* Registro automatizado de SHA-256 no version-info.json

---

## **Futuras entradas**

A serem preenchidas quando houver:

* ajuste de paleta,
* modificação da capa,
* mudança de tipografia,
* alteração de marca d’água,
* reconstrução do template,
* correção de caminhos `\include`,
* regeneração visual.

---

**Este changelog acompanha a evolução estética e estrutural do PDF, não o conteúdo normativo.**
