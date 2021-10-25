SELECT CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo',
jobs.JOB_TITLE AS Cargo,
jobh.START_DATE AS 'Data de início do cargo',
dep.DEPARTMENT_NAME AS Departamento
FROM hr.employees AS emp
INNER JOIN hr.job_history AS jobh
ON emp.EMPLOYEE_ID = jobh.EMPLOYEE_ID
INNER JOIN hr.jobs AS jobs
ON jobs.JOB_ID = jobh.JOB_ID
INNER JOIN hr.departments AS dep
ON dep.DEPARTMENT_ID = jobh.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo ASC;
