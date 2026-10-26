--Query 1: comparação de salários por departamento e cargo;

--Explorando as tabelas 

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
    
    
SELECT
    DEPARTMENT_ID,
    DEPARTMENT_NAME,
    MANAGER_ID,
    LOCATION_ID
FROM
    HR.DEPARTMENTS;

SELECT
    JOB_ID,
    JOB_TITLE,
    MIN_SALARY,
    MAX_SALARY
FROM
    HR.JOBS;


--QUERY #1
--LEFT JOIN COM  EMPLOYEES

SELECT funcionarios.EMPLOYEE_ID, 
funcionarios.FIRST_NAME,
funcionarios.LAST_NAME,
funcionarios.SALARY,
departamentos.DEPARTMENT_NAME
FROM HR.EMPLOYEES funcionarios
--LEFT JOIN COM TABELA DEPARTMENT 
LEFT JOIN HR.DEPARTMENTS departamentos
ON funcionarios.DEPARTMENT_ID = departamentos.DEPARTMENT_ID
--LEFT JOIN COM A TABELA JOBS
LEFT JOIN HR.JOBS cargo     
ON funcionarios.JOB_ID = cargo.JOB_ID
WHERE funcionarios.SALARY > 0
ORDER BY funcionarios.SALARY desc