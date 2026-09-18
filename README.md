# 🚀 Projetos e Customizações TOTVS Protheus (ADVPL)

Repositório dedicado ao desenvolvimento, melhorias e customizações de rotinas no **TOTVS Protheus**, utilizando ADVPL, boas práticas de versionamento de código com Git/GitHub e integração com ferramentas de gestão de tarefas (Jira).

---

## 📋 Funcionalidades e Entregas Desenvolvidas

### 1. Validação de Produtos Perecíveis no Documento de Entrada (`M116FIM`)
* **Task Jira:** `KAN-2`
* **Objetivo:** Garantir a integridade dos dados e o controlo de rastreabilidade (lotes e validades) no recebimento de mercadorias pertencentes a categorias sensíveis, como hortifrúti e açougue.
* **Regra de Negócio Implementada:**
  * Varredura dinâmica nos itens do documento de entrada (`aCols` / tabela `SD1`).
  * Consulta relacional à tabela de produtos (`SB1`) através da função `Posicione()` para identificar o grupo do produto (`B1_GRUPO`).
  * Validação obrigatória dos campos de lote (`D1_LOTECTL`) e data de validade (`D1_DTVALID`).
  * Mecanismo de bloqueio preventivo (retorno `.F.` e emissão de alerta) caso um item perecível seja lançado sem a devida rastreabilidade.

---

## 🛠️ Tecnologias e Ferramentas Utilizadas
* **Linguagem:** ADVPL (TOTVS Protheus)
* **Controlo de Versão:** Git, Git Bash e GitHub (Fluxo de Branches e Pull Requests)
* **Gestão de Projetos:** Jira (Kanban / Acompanhamento de Sprints)
* **Ambiente de Trabalho:** Windows / VS Code / GitHub Codespaces

---
*Desenvolvido por Pâmela Coelho.*
