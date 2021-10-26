SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',
J.JOB_TITLE AS Cargo,
H.START_DATE AS 'Data de início do cargo',
D.DEPARTMENT_NAME
FROM hr.employees E
INNER JOIN hr.jobs J
ON J.JOB_ID = E.JOB_ID
INNER JOIN hr.job_history H
ON H.EMPLOYEE_ID = E.EMPLOYEE_ID
INNER JOIN hr.departments D
ON D.DEPARTMENT_ID = H.DEPARTMENT_ID
ORDER BY (FIRST_NAME) DESC,
J.JOB_TITLE ASC;
