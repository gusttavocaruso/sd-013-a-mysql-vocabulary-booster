SELECT UCASE(CONCAT(e.FIRST_NAME, ' ',e.LAST_NAME)) AS 'Nome completo',
jh.START_DATE AS 'Data de início',
e.SALARY AS 'Salário'
FROM hr.employees e, hr.job_history jh
WHERE (MONTH(jh.START_DATE) = 1 OR MONTH(jh.START_DATE) = 2 OR MONTH(jh.START_DATE) = 3)
AND e.EMPLOYEE_ID = jh.EMPLOYEE_ID
ORDER BY `Nome completo`, `Data de início`;
