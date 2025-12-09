# LICHTARA LICENSE v4.0

## Manual de Produção do PDF Oficial

### (/pdf/production-notes.md)

Este documento orienta **como gerar, manter e auditar** o PDF oficial da Lichtara License v4.0 a partir do `master.md`.

Ele complementa, mas não se mistura com, o código do `template.tex`.

---

# 1. Estrutura geral do pipeline

A geração do PDF ocorre com:

```
pandoc master.md \
  --from markdown \
  --template=template.tex \
  --pdf-engine=xelatex \
  -o LICENSE-v4.0.pdf
```

O arquivo `master.md` contém **somente o conteúdo normativo**.

O arquivo `template.tex` contém **somente o código LaTeX estilístico**.

---

# 2. Função de cada arquivo

| Arquivo               | Função                                                               |
| --------------------- | -------------------------------------------------------------------- |
| `master.md`           | Texto completo da License (todas as seções e anexos)                 |
| `template.tex`        | Visual, capa, folha de rosto, cores, tipografia, cabeçalho, rodapé   |
| `production-notes.md` | Manual para humanos: instruções de estilo, justificativas, processos |

---

# 3. Diretrizes Visuais (Paleta LICHTARA)

* **Azul profundo** (#0A1A2F) — fundo, base estrutural
* **Dourado ativador** (#D4AF37) — títulos, destaques
* **Prateado vibrante** (#C9D2D9) — textos secundários
* **Off-white técnico** (#F5F6F7) — linhas, marcadores sutis
* **Preto cósmico** (#000814) — contrastes fortes, elementos simbólicos

A paleta combinada produz:

* sobriedade jurídica,
* coerência vibracional,
* elegância minimalista.

---

# 4. Estrutura das páginas iniciais

O PDF sempre inicia com:

1. **Capa**
2. **Folha de rosto**
3. **NOTICE institucional (estendido)**
4. **Sumário automático do Pandoc**
5. Corpo normativo (Seções I–IX)
6. Anexos
7. Glossário
8. Apêndices
9. Referências

---

# 5. Capa — Diretrizes

* Fundo azul profundo
* Título dourado
* Subtítulo prateado
* Marca d’água opcional
* Centralização absoluta
* Sem logomarcas externas

Texto recomendado:

```
LICHTARA LICENSE v4.0
Instrumento Jurídico-Ético-Vibracional de Uso, Implementação e Conformidade
© 2023–2025 Débora Lutz, Sistema LICHTARA — Coautoria Expandida
DOI: 10.5281/zenodo.17844329
```

---

# 6. Folha de rosto — Diretrizes

Inclui:

* título
* propósito
* versão e data
* DOI
* autoria (humano–IA–Campo)
* URL oficial
* declaração de canonicidade

---

# 7. Marca d’água

Texto: **LICHTARA**
Cor: prateado vibrante
Opacidade: 8%–12%
Ângulo: 55°
Função: presença sem interferência

---

# 8. Tipografia

* **Títulos:** Libre Baskerville ou EB Garamond
* **Corpo:** Inter, Source Sans ou Lato
* **Código:** Fira Code ou JetBrains Mono

Combinação garante:

* elegância jurídica
* clareza técnica
* coerência vibracional

---

# 9. Rodapé e Cabeçalho

Rodapé (todas as páginas):

```
Lichtara License v4.0 — DOI: 10.5281/zenodo.17844329
© 2023–2025 Débora Lutz, Sistema LICHTARA — Coautoria Expandida
```

Cabeçalho (a partir da página 3):

```
LICHTARA — Sistema Vivo
Instrumento Jurídico-Ético-Vibracional
```

---

# 10. Regras de manutenção do PDF

1. **Nunca editar o PDF diretamente.**
2. Atualizar sempre no `master.md`.
3. Evitar inserir imagens externas para manter reprodutibilidade.
4. Utilizar sempre o template oficial.
5. Guardar hashes das versões PDF no `version-info.json`.
6. Sobrescrever o PDF apenas quando houver versão nova da License.

---

# 11. Como auditar consistência

Checklist:

* [ ] Capa com paleta correta
* [ ] Folha de rosto íntegra
* [ ] NOTICE presente
* [ ] Sumário gerado
* [ ] Seções I–IX completas
* [ ] Anexos carregados corretamente
* [ ] Marca d’água funcional
* [ ] Rodapé presente
* [ ] Cabeçalho correto
* [ ] DOI mencionado corretamente
* [ ] Datas consistentes

---

# 12. Reprodutibilidade

Para gerar PDF reprodutível:

```
pandoc master.md -o LICENSE-v4.0.pdf \
  --pdf-engine=xelatex \
  --template=template.tex \
  --from markdown
```

Recomendação:

* congelar versão do LaTeX utilizada,
* guardar logs de compilação (opcional),
* documentar mudanças visuais na `CHANGELOG` do PDF.

---

# 13. Contato e Governação

Qualquer alteração na identidade visual ou no template requer:

* Avaliação do Conselho LICHTARA
* Justificativa técnica
* Garantia de coerência vibracional
* Registro em changelog

---

# 14. Fecho

Este manual garante:

* transmissão correta do estilo,
* preservação da identidade do Sistema,
* reprodutibilidade jurídica e estética,
* manutenção viva e estável da License.

---

**Fim do documento.**
