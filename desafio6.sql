SELECT
CONCAT(t1.FIRST_NAME, ' ', t1.LAST_NAME) AS `Nome completo`,
t2.JOB_TITLE AS Cargo,
t3.START_DATE AS `Data de início do cargo`,
t4.DEPARTMENT_NAME AS Departamento
FROM hr.job_history t3
INNER JOIN hr.employees t1 ON t1.EMPLOYEE_ID = t3.EMPLOYEE_ID
INNER JOIN hr.jobs t2 ON t2.JOB_ID = t3.JOB_ID
INNER JOIN hr.departments t4 ON t4.DEPARTMENT_ID = t3.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo;
