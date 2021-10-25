SELECT UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS 'Nome completo',
  j.JOB_TITLE AS 'Cargo',
  e.HIRE_DATE AS 'Data de início',
  e.SALARY AS 'Salário'
FROM employees e
INNER JOIN jobs j ON j.JOB_ID = e.JOB_ID
WHERE MONTH(e.HIRE_DATE) IN (1, 2, 3) 
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) ASC,
j.JOB_TITLE ASC,
e.HIRE_DATE ASC;
