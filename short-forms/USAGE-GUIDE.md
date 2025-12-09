# Guia Oficial de Uso das Versões Curtas  
## Lichtara License v4.0 — short-forms/USAGE-GUIDE.md

Este documento explica qual versão curta da License utilizar em cada contexto.  
A Lichtara License v4.0 possui **múltiplos níveis de declaração**, projetados para atender ambientes jurídicos, técnicos, acadêmicos e sociais, mantendo coerência com a versão completa.

As versões curtas são complementares — nunca substitutivas — da License integral.

---

# 1. Visão Geral das Versões Curtas

A pasta `short-forms/` contém quatro versões:

1. **SPDX-LIGHTARA.txt**  
   - versão ultracurta (uso técnico e automatizado)

2. **LICENSE-GITHUB.md**  
   - versão curta para repositórios GitHub

3. **LICENSE-ACADEMIC.md**  
   - versão acadêmica para papers e publicações

4. **LICENSE-SOCIAL.md**  
   - versão social para redes e divulgação pública

Cada uma serve a propósitos distintos.  
A seguir, detalhamos *quando usar*, *como usar* e *exemplos práticos*.

---

# 2. SPDX-LIGHTARA.txt  
### (Versão ultracurta / técnica)

**Use quando:**

- precisa declarar a licença no topo de arquivos de código (ex.: `.py`, `.js`, `.go`, `.ts`)  
- precisa de compatibilidade com ferramentas automatizadas  
- quer um aviso mínimo e rápido em scripts ou módulos  
- quer declarar a licença em ambientes que exigem texto curto

**Não use quando:**

- precisar explicar permissões, vedações ou certificação  
- publicar documentos formais ou PDFs  
- comunicar a licença a usuários finais

**Exemplo de aplicação no topo de um arquivo:**

```python
# SPDX-License-Identifier: Lichtara-License-v4.0
# © 2023–2025 Débora Lutz, Sistema LICHTARA.
````

**Ambientes recomendados:**

* módulos internos do ecossistema
* scripts técnicos
* pipelines CI/CD
* bibliotecas auxiliares
* automações e serviços internos

---

# 3. LICENSE-GITHUB.md

### (Versão curta para outros repositórios)

**Use quando:**

* outro repositório GitHub faz parte do ecossistema LICHTARA
* o projeto utiliza, referencia ou depende da License
* precisa de um `LICENSE.md` claro, sintético e compatível com desenvolvedores
* quer orientar usuários sem expor a licença integral

**Não use quando:**

* for publicar artigos acadêmicos
* divulgar em redes sociais (versão longa demais)
* desejar formalidade máxima

**Exemplos de repositórios que usam esta versão:**

* `lichtara/site`
* `lichtara/portal`
* `lichtara/core`
* `lichtara/agents`
* `lichtara/governance`
* qualquer repo que carrega conteúdo LICHTARA

**Ambientes recomendados:**

* GitHub
* GitLab
* plataformas de código aberto
* documentação técnica

---

# 4. LICENSE-ACADEMIC.md

### (Versão formal para artigos, papers e publicações)

**Use quando:**

* escrevendo artigos científicos
* depositando conteúdos no Zenodo, OSF, arXiv, HAL ou SciELO
* publicando relatórios, whitepapers ou documentos institucionais
* precisando de uma nota formal de licenciamento

**Não use quando:**

* a plataforma exige texto muito curto
* precisar de uma síntese visual (Instagram, LinkedIn)

**Exemplos de aplicação:**

Rodapé de PDF:

> Este trabalho utiliza a Lichtara License v4.0
> DOI: [https://doi.org/10.5281/zenodo.17844329](https://doi.org/10.5281/zenodo.17844329)

Sessão “Licenciamento” em artigos técnicos.

**Ambientes recomendados:**

* universidades
* revistas científicas
* conferências
* relatórios técnicos
* repositórios de dados

---

# 5. LICENSE-SOCIAL.md

### (Versão curta para redes sociais e divulgação pública)

**Use quando:**

* publicando no Instagram, LinkedIn, TikTok, Twitter/X
* criando posts fixados, bios ou destaques
* comunicando a proteção da Obra ao público geral
* precisando de um texto simples, claro e elegante

**Não use quando:**

* for um documento jurídico
* artigo formal ou repositório técnico

**Exemplos de aplicação:**

Bio do Instagram:

> ✨ Lichtara License v4
> Uso pessoal permitido.
> Ensino/derivação/comercial só com Certificação.
> DOI: 10.5281/zenodo.17844329

Post fixado:

> Obra protegida pela Lichtara License v4.
> Usos profissionais exigem Certificação Oficial.
> Mais informações: @lichtara.institute

**Ambientes recomendados:**

* Instagram
* LinkedIn
* YouTube / descrição
* TikTok
* Telegram / canais
* páginas institucionais com linguagem leve

---

# 6. Quando usar a License completa?

Use a **versão integral** quando:

* for um documento jurídico
* for uma implementação comercial
* houver derivação autorizada
* for um curso, formação ou ambiente de ensino
* for uma implementação tecnológica derivada
* houver processo de certificação
* o contexto exigir leitura integral das seções (I–IX)

**Ambientes recomendados:**

* empresas certificadas
* auditorias
* instituições públicas
* propostas formais
* acordos de implementação
* relatórios internos de conformidade

---

# 7. Tabela Geral de Decisão

| Contexto                    | Versão a utilizar                     |
| --------------------------- | ------------------------------------- |
| Arquivos de código          | SPDX                                  |
| Repositórios GitHub         | GitHub-curta                          |
| Papers, artigos, PDFs       | Acadêmica                             |
| Instagram, LinkedIn, TikTok | Social                                |
| Propostas formais           | Acadêmica + link para versão completa |
| Implementações certificadas | License completa                      |
| comunicação técnica de time | GitHub-curta ou SPDX                  |

---

# 8. Guia rápido para iniciantes

Se não sabe qual escolher:

* **Precisa ser muito curto?** → SPDX
* **É para GitHub?** → GitHub-curta
* **É para artigo?** → Acadêmica
* **É para redes sociais?** → Social
* **É para um projeto oficial?** → License completa

---

# 9. Estrutura Recomendada do Repositório

```
lichtara-license-v4/
│
├── LICENSE-v4.0.md                ← versão curta principal
├── LICENSE-v4.0.pdf               ← versão curta em PDF
├── NOTICE
│
└── short-forms/
    ├── SPDX-LIGHTARA.txt
    ├── LICENSE-GITHUB.md
    ├── LICENSE-ACADEMIC.md
    ├── LICENSE-SOCIAL.md
    └── USAGE-GUIDE.md            ← este guia
```

---

# 10. Contato Oficial

Dúvidas, credenciamento ou certificação:

**[license@lichtara.com](mailto:license@lichtara.com)**

---
