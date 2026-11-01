-- Query 2 — Funcionários por Região (com localização)
-- EMPLOYEES com LEFT JOIN em DEPARTMENTS, LOCATIONS, COUNTRIES e REGIONS.

SELECT
    EMPLOYEE_ID,
    FIRST_NAME,
    LAST_NAME,
    EMAIL,
    PHONE_NUMBER,
    HIRE_DATE,
    JOB_ID,
    SALARY,
    COMMISSION_PCT,
    MANAGER_ID,
    DEPARTMENT_ID
FROM
    HR.EMPLOYEES;

-- observando dados da tabela HR.DEPARTMENTS;
SELECT
    DEPARTMENT_ID,
    DEPARTMENT_NAME,
    MANAGER_ID,
    LOCATION_ID
FROM
    HR.DEPARTMENTS;

-- observando dados da tabela  HR.LOCATIONS;

SELECT
    LOCATION_ID,
    CITY,
    COUNTRY_ID
FROM
    HR.LOCATIONS;

-- observando dados da tabela HR.COUNTRIES;
SELECT
    COUNTRY_ID,
    COUNTRY_NAME,
    REGION_ID
FROM
    HR.COUNTRIES;

-- observando dados da tabela  HR.REGIONS;
SELECT
    REGION_ID,
    REGION_NAME
FROM
    HR.REGIONS;

-- aplicação de LEFT JOIN 
SELECT 
funcionarios.EMPLOYEE_ID, 
funcionarios.FIRST_NAME, 
funcionarios.LAST_NAME,
funcionarios.SALARY, 
departamentos.DEPARTMENT_NAME,
localizacao.CITY,
continente.COUNTRY_NAME,
regiao.REGION_NAME
FROM HR.EMPLOYEES funcionarios

--junções das tabelas hr.departmnets com
LEFT JOIN HR.DEPARTMENTS departamentos
ON funcionarios.DEPARTMENT_ID = departamentos.DEPARTMENT_ID

LEFT JOIN HR.LOCATIONS localizacao
ON departamentos.LOCATION_ID = localizacao.LOCATION_ID

LEFT JOIN HR.COUNTRIES continente
ON localizacao.COUNTRY_ID = continente.COUNTRY_ID

LEFT JOIN HR.REGIONS regiao 
ON continente.REGION_ID = regiao.REGION_ID
--aplicação de where 
WHERE regiao.REGION_NAME IS NOT NULL
ORDER BY regiao.REGION_NAME

--resultado left join selecionando id do empregado, primeiro nome, sobre nome, salario, departamento, cidade , pais e região.