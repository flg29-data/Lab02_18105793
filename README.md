# Lab02_18105793
LABORATÓRIO 02: Transformação de Dados com DBT

# Fernando Luiz Gomes - NUSP 18105793

**Disciplina:** Fundamentos de Engenharia de Dados  

## Objetivo

Este laboratório 02 tem objetivo a transformação de Dados da camada Silver para Gold utilizando DBT

Projeto: Reparo dos dados de transações do varejo (análise de cesta de compras, segmentação de clientes e análise de varejo).

## Estrutura

```
Lab02_18105793/
│
│   ├── models/
│   │   ├── staging/
│   │   │   └── stg_sales.sql
│   │   │   └── stg_customers.sql
│   │   │   └── source.yml
│   │   │
│   │   ├── marts/
│   │   │   └── fact_sales.sql
│   │   │   └── dim_customers.sql
│   │
│   ├── macros/
│   │   └── calculate_total.sql
│   │
│   ├── dbt_project.yml
│   └── profiles.yml
│
├── README.md
└── requirements.txt
```

## Conteúdo

## 0. Pré-requisitos
- PostgreSQL (versão 1.10.0)
- VSCode
- Python (versão 3.11) - compatível com DBT
- Git (versão 2.53.0.2) - compatibilidade com DBT
- DBT (versão 1.11.8)

## 1. Backup/Restore da base Silver

Backup base silver "fact_sales" realizado pelo PostgreSQL


Restore base silver "fact_sales_silver.backup" realizado pelo PostgreSQL no database "lab02"


## 2. Instalação / Configuração do DBT

2.1 Instação do DBT (Postgres)

```
pip install dbt-postgres
```

2.2 Inicialização do Projeto

```
dbt init dbt_project
```

2.3 Configuração da conexão

→ arquivo >> `profiles.yml`


2.4 Definição do Source (camada Silver)

→ arquivo >> `models\staging\source.yml`

## 3. Transformações

3.1 Staging (limpeza)

→ arquivo tabela "stg_sales" >> `models\staging\stg_sales.sql`

→ arquivo tabela "stg_customers" >> `models\staging\stg_customers.sql`

3.2 Marts (Gold)

→ arquivo tabela "fact_sales" >> `models\staging\fact_sales.sql`

→ arquivo tabela "dim_customers" >> `models\staging\dim_customers.sql`

## 4. Macro

## 5. Visualização
