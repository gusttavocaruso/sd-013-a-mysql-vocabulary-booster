SELECT 
CONCAT(t1.FIRST_NAME, ' ', t1.LAST_NAME) AS 'Nome completo',
t2.JOB_TITLE AS Cargo,
t4.START_DATE AS 'Data de início do cargo',
t3.DEPARTMENT_NAME
FROM hr.employees t1
INNER JOIN hr.jobs t2 ON t1.JOB_ID = t2.JOB_ID
INNER JOIN hr.departments t3 ON t1.DEPARTMENT_ID = t3.DEPARTMENT_ID
INNER JOIN hr.job_history t4 ON t1.JOB_ID = t4.JOB_ID
ORDER BY CONCAT(t1.FIRST_NAME, ' ', t1.LAST_NAME), Cargo;
