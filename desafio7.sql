SELECT CONCAT(UCASE(E.FIRST_NAME), ' ', UCASE(E.LAST_NAME)) AS `Nome Completo`,
  JH.START_DATE AS `Data de início`,
  E.SALARY AS 'Salário'
FROM hr.employees AS E
  INNER JOIN hr.job_history AS JH ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
GROUP BY `Nome Completo`
ORDER BY `Nome Completo`,
  `Data de início`;
