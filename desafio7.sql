SELECT UCASE(CONCAT(e.first_name, ' ', e.last_name)) AS 'Nome completo',
  jh.start_date AS 'Data de início',
  e.SALARY AS 'Salário'
FROM hr.job_history AS jh
  INNER JOIN hr.employees AS e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
  WHERE MONTH(jh.start_date) IN (1, 2, 3)
  ORDER BY CONCAT(e.first_name, ' ', e.last_name) ASC,
  jh.start_date ASC;
