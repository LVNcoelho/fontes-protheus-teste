# 🚀 Projetos e Customizações TOTVS Protheus (ADVPL)

Repositório dedicado ao desenvolvimento, melhorias e customizações de rotinas no **TOTVS Protheus**, utilizando ADVPL, boas práticas de versionamento de código com Git/GitHub, integração com Jira e suporte a processos de homologação.

---

## ⚙️ Configuração do Ambiente de Desenvolvimento

* **TOTVS Developer Studio (TDS):** Instalação e configuração do ambiente de desenvolvimento integrado, com apontamento direto para o servidor de homologação da matriz.
* **Controlo de Versão:** Clonagem do repositório padrão de fontes do Protheus através do Git da empresa e configuração estruturada do workspace local.
* **Gestão de Fontes Customizados:** Garantia de acesso e governança sobre os fontes customizados utilizando o padrão de prefixos da rede (ex: rotinas específicas e pontos de entrada).

---

## 📋 Funcionalidades e Entregas Desenvolvidas

### 1. Validação de Produtos Perecíveis no Documento de Entrada (`M116FIM`)
* **Task Jira:** `KAN-2`
* **Contexto de Negócio:** Solicitação da diretoria de operações para garantir que, ao realizar a entrada de notas fiscais de transferência entre filiais, o sistema valide o preenchimento de lote e validade para produtos perecíveis (hortifrúti/açougue).
* **Regra Implementada:**
  * Localização do Ponto de Entrada **`M116FIM`** (Documento de Entrada) para análise de itens (`SD1`).
  * Consulta relacional à tabela de produtos (`SB1`) via função `Posicione()` para identificar o grupo do produto (`B1_GRUPO`).
  * Inserção de alerta preventivo e bloqueio de gravação (`lRet := .F.`) caso o lote (`D1_LOTECTL`) ou a validade (`D1_DTVALID`) venham em branco para categorias de perecíveis.
* **Entrega:** Código ajustado, validado via versionamento Git (Branch, Commit e PR *Merged* no GitHub), compilado em ambiente de homologação e documentado no Jira com evidência de testes.

---

## 🛠️ Tecnologias e Ferramentas Utilizadas
* **Linguagem:** ADVPL (TOTVS Protheus)
* **IDE:** TOTVS Developer Studio (TDS) / VS Code / Codespaces
* **Controlo de Versão:** Git, Git Bash e GitHub
* **Gestão de Projetos:** Jira (Kanban / Acompanhamento de Sprints)

---
*Desenvolvido por Pâmela Coelho.*
