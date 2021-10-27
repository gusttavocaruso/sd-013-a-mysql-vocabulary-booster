SELECT UCASE(CONCAT(e.first_name, ' ', e.last_name)) AS 'Nome completo', 
jh.START_DATE AS 'Data de início',
e.SALARY AS 'Salário'
FROM hr.job_history AS jh
INNER JOIN hr.employees AS e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE MONTH(jh.START_DATE) IN (01, 02, 03)
ORDER BY `Nome completo`, Salário;
