SELECT UCASE(CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME)) AS 'Nome completo',
jbh.START_DATE AS 'Data de início',
emp.SALARY AS 'Salário'
FROM hr.job_history AS jbh
INNER JOIN hr.employees AS emp
ON jbh.EMPLOYEE_ID = emp.EMPLOYEE_ID
WHERE MONTH(START_DATE) IN (1, 2, 3)
ORDER BY `Nome completo`, `Data de início`;
