SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
j.JOB_TITLE AS Cargo,
jh.START_DATE AS 'Data de início do cargo',
d.DEPARTMENT_NAME AS 'Departamento'
FROM
hr.departments d,
hr.employees e,
hr.jobs j,
hr.job_history jh
WHERE j.JOB_ID = jh.JOB_ID
AND e.EMPLOYEE_ID = jh.EMPLOYEE_ID
AND d.DEPARTMENT_ID = jh.DEPARTMENT_ID
ORDER BY `Nome completo` DESC , Cargo;
