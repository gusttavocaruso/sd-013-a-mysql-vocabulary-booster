SELECT
	CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
	j.JOB_TITLE AS Cargo,
    jh.START_DATE AS `Data de início do cargo`,
    d.DEPARTMENT_NAME AS Departamento
FROM  
	job_history jh
INNER JOIN
	employees e
ON
	jh.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN
	jobs j
ON
	e.JOB_ID = j.JOB_ID
INNER JOIN
	departments d
ON
	e.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY `Nome Completo` ASC,
Cargo ASC;
    