SELECT CONCAT(UCASE(FIRST_NAME), ' ', UCASE(LAST_NAME)) AS `Nome completo`,
jobh.START_DATE AS `Data de início`,
emp.SALARY AS Salário
FROM hr.employees AS emp
INNER JOIN hr.job_history AS jobh
ON emp.EMPLOYEE_ID = jobh.EMPLOYEE_ID
WHERE MONTH(START_DATE) IN (01, 02, 03)
ORDER BY `Nome completo` ASC, 'Data de início' ASC;
