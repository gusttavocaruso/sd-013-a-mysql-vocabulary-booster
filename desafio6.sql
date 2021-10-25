USE hr;
SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
  j.JOB_TITLE AS 'Cargo',
  jh.START_DATE AS 'Data de início do cargo',
  d.DEPARTMENT_NAME AS 'Departamento'
FROM employees e
INNER JOIN jobs j ON j.JOB_ID = e.JOB_ID
  INNER JOIN job_history jh ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
  INNER JOIN departments d ON d.DEPARTMENT_ID = jh.DEPARTMENT_ID
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) DESC,
  j.JOB_TITLE ASC;
