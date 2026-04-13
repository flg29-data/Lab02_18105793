# Lab02_18105793
LABORATÓRIO 02: Transformação de Dados com DBT

# Fernando Luiz Gomes - NUSP 18105793

**Disciplina:** Fundamentos de Engenharia de Dados  

## Objetivo

Este laboratório 02 tem objetivo a transformação de Dados utilizando DBT

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
│   ├── tests/
│   │   └── test_negative_values.sql
│   │
│   ├── dbt_project.yml
│   └── profiles.yml
│
├── README.md
└── requirements.txt
```

## Conteúdo

## 1. Backup da base Silver

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

