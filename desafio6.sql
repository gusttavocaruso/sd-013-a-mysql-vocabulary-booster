SELECT CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS 'Nome completo',
J.JOB_TITLE AS Cargo,
H.START_DATE AS 'Data de início do cargo', (
  SELECT DEPARTMENT_NAME AS Departamento
  FROM hr.departments
  WHERE DEPARTMENT_ID = E.DEPARTMENT_ID
)
FROM hr.employees AS E
INNER JOIN hr.job_history AS H
ON H.EMPLOYEE_ID = E.EMPLOYEE_ID
INNER JOIN hr.jobs AS J
ON J.JOB_ID = H.JOB_ID
ORDER BY CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) DESC,
J.JOB_TITLE;
