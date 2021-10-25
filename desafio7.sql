USE hr;
SELECT
CONCAT(UCASE(e.FIRST_NAME), ' ', UCASE(e.LAST_NAME)) AS 'Nome completo',
jh.START_DATE AS 'Data de início',
e.SALARY AS 'Salário'
FROM employees e
INNER JOIN job_history jh ON e.JOB_ID = jh.JOB_ID
WHERE MONTH(jh.START_DATE) IN (1, 2, 3)
ORDER BY `Nome completo`, e.HIRE_DATE
;
