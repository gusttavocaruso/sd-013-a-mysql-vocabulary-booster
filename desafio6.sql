SELECT CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo',
job.JOB_TITLE AS 'Cargo',
jbh.START_DATE AS 'Data de início do cargo',
dep.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history AS jbh
INNER JOIN hr.employees AS emp
ON jbh.EMPLOYEE_ID = emp.EMPLOYEE_ID
INNER JOIN hr.jobs AS job
ON jbh.JOB_ID = job.JOB_ID
INNER JOIN hr.departments AS dep
ON dep.DEPARTMENT_ID = jbh.DEPARTMENT_ID;
