--Construindo query 3 

--Query 3: funcionários por ano de admissão, com EXTRACT, WHERE e ORDER BY;
--EMPLOYEES, DEPARTMENTS e JOBS, trazendo EMPLOYEE_ID, HIRE_DATE, ano de admissão, salário, departamento e cargo.
SELECT
    EMPLOYEE_ID,
    FIRST_NAME,
    LAST_NAME,
    HIRE_DATE,
    JOB_ID,
    SALARY,
    COMMISSION_PCT,
    DEPARTMENT_ID
FROM
    HR.EMPLOYEES;

--seleção de dados da tabela departamentos
SELECT
    DEPARTMENT_ID,--join
    DEPARTMENT_NAME ---
FROM
    HR.DEPARTMENTS;


--seleção de dados da tabela job.history 
SELECT
    EMPLOYEE_ID,
    START_DATE,--join com 
    JOB_ID,--join
    DEPARTMENT_ID --join-departamentoid do employees e jobhistory
FROM
    HR.JOB_HISTORY;


SELECT
    JOB_ID,--join
    JOB_TITLE,--
    MIN_SALARY,
    MAX_SALARY
FROM
    HR.JOBS;


-- aplicação de LEFT JOIN 
SELECT 
funcionarios.EMPLOYEE_ID, 
funcionarios.SALARY, 
departamentos.DEPARTMENT_NAME,
EXTRACT(YEAR FROM admissao.START_DATE) AS ANO_ADMISSAO, -- EXTRAINDO O ANO DA COLUNA START_DATE
cargo.JOB_TITLE
FROM HR.EMPLOYEES funcionarios

-- junção com departamentos
LEFT JOIN HR.DEPARTMENTS departamentos
ON funcionarios.DEPARTMENT_ID = departamentos.DEPARTMENT_ID

-- junção com histórico de cargos
LEFT JOIN HR.JOB_HISTORY admissao
ON  funcionarios.EMPLOYEE_ID = admissao.EMPLOYEE_ID

LEFT JOIN HR.JOBS cargo
ON admissao.JOB_ID = cargo.JOB_ID

WHERE CARGO.JOB_TITLE IS NOT NULL --SEPARANDO VALORES DOS NULOS PARA PODER ANALIZAR 
ORDER BY admissao.START_DATE DESC -- ORDENANDO POR DATA DESCRECENTE  