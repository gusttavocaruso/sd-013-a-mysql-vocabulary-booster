SELECT CONCAT(UPPER(e.FIRST_NAME), ' ', UPPER(e.LAST_NAME)) `Nome completo`,
jh.START_DATE `Data de início`,
e.SALARY `Salário`
FROM hr.job_history jh
INNER JOIN hr.employees e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE MONTH(jh.START_DATE) IN (01, 02, 03)
ORDER BY `Nome completo`, `Data de início`;
