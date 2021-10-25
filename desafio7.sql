SELECT UCASE(CONCAT(E.first_name, ' ',E.last_name)) AS 'Nome completo',
JH.start_date as 'Data de início', 
E.salary as 'Salário'
FROM employees as E, job_history as JH
WHERE E.employee_id = JH.employee_id AND MONTH(JH.START_DATE) IN (1 , 2, 3)
ORDER BY `Nome completo`, `Data de início`;
