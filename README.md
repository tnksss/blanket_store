---

# 🛏️ Blanket Store

![Tests](https://img.shields.io/badge/tests-Minitest%20%7C%20SimpleCov-success?style=flat-square)
![Ruby Version](https://img.shields.io/badge/ruby-3.3+-red?style=flat-square)
![Rails Version](https://img.shields.io/badge/rails-8.1-blue?style=flat-square)

A **Blanket Store** é um e-commerce premium especializado em produtos de cama, mesa e banho de alto padrão...


## 🧪 Engenharia de Qualidade & TDD

O projeto foi construído seguindo rigorosamente o fluxo do **TDD (Test-Driven Development)** utilizando o framework nativo **Minitest** combinado com a gem **SimpleCov** para auditoria de cobertura de código.

### Regras de Negócio Blindadas:
* **Produtos:** Bloqueio de persistência para registros sem nome ou categoria.
* **Cores:** Impedimento de cores órfãs (sem associação a um produto pai) ou sem nome identificador.
* **Variantes:**
  * Validação numérica estrita de preço (proibido valores menores ou iguais a zero).
  * Validação de consistência de estoque (proibido números fracionados ou saldos negativos).

---

## 🛠️ Tecnologias Utilizadas

* **Linguagem:** Ruby 3.3+
* **Framework:** Ruby on Rails 8.1 (Modo Clássico MVC)
* **Banco de Dados:** PostgreSQL (Rodando em container isolado via Docker)
* **Estilização:** Tailwind CSS (Nativo do Rails 8)
* **Suíte de Testes:** Minitest & SimpleCov
* **Versionamento:** Git & GitHub (Fluxo de Feature Branches)

---

## 🚀 Como Executar o Projeto Localmente

### 1. Pré-requisitos
Certifique-se de ter instalado em sua máquina:
* Ruby 3.3.x
* Docker & Docker Compose (para o banco PostgreSQL)

### 2. Clonar o Repositório e Instalar Dependências
```bash
git clone [https://github.com/tnksss/blanket_store.git](https://github.com/tnksss/blanket_store.git)
cd blanket_store
bundle install