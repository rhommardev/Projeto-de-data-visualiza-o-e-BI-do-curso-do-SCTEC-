# Projeto de data visualização e BI do curso do SCTEC RH Analytics
Aluno: Rhommar Martinez
Turma: 3 

Repositorio dedicado a entrega de 2do projeto modulo 1 do curso de data visualização e BI.

O objetivo deste projeto é identificar quais departamentos e cargos concentram os maiores salários e analisar como os funcionários estão distribuídos entre as cidades, países e regiões da empresa.

A análise será realizada utilizando consultas SQL no banco FreeSQL e uma etapa exploratória em Python, com o uso de medidas estatísticas e gráficos simples.

Base de dados utilizada: https://freesql.com/

## DESAFIO:
A equipe de análise foi chamada para estudar os dados de Recursos Humanos da empresa, com foco na distribuição dos funcionários, nos cargos, nos departamentos e nos salários.

O objetivo deste projeto é identificar quais departamentos e cargos concentram os maiores salários e analisar como os funcionários estão distribuídos entre as cidades, países e regiões da empresa.

### Query 1 — Comparação de Salários por Departamento e Cargo
Objetivo: identificar os salários dos funcionários, relacionando cada pessoa ao seu departamento e ao cargo ocupado. A consulta permitirá observar quais cargos e departamentos possuem os maiores salários.

### Query 2 — Distribuição dos Funcionários por Localidade
Objetivo: identificar em quais cidades, países e regiões os funcionários estão alocados, relacionando os funcionários aos seus departamentos e locais de trabalho.

### Query 3 — Funcionários por Ano de Admissão
Objetivo: analisar a distribuição dos funcionários por ano de admissão e comparar seus salários atuais, considerando departamentos e cargos.

### Estrutura do projeto
├── data/                 # Arquivos CSV exportados das consultas SQL
├── images/               # Gráficos gerados no notebook
├── notebook/             # Notebook com a análise em Python
├── sql/                  # Consultas SQL usadas na extração
└── README.md

 ## Dados Utilizados
 Foram utilizadas tabelas do schema HR:

EMPLOYEES
DEPARTMENTS
JOBS
LOCATIONS
COUNTRIES
REGIONS

## Solução:
Extração de dados realizada através de consultas SQL no banco FreeSQL, com exportação dos resultados em arquivos CSV para posterior análise em Python.

Querys SQL utilizadas para extração de dados:
- Query 1: `sql/QUERY_1_SQL.sql` ''
- Query 2: `sql/QUERY_2_SQL.sql`
- Query 3: `sql/QUERY_3_SQL.sql`

Arquivos CSV exportados das consultas SQL:
- Query 1: `data/QUERY_1_CSV.csv`   
- Query 2: `data/QUERY_2_CSV.csv`
- Query 3: `data/QUERY_3_CSV.csv`

