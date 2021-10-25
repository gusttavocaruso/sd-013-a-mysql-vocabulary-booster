SELECT CONCAT(UPPER(first_name) , ' ',UPPER(last_name)) AS 'Nome completo' , 
start_date AS 'Data de início',
salary AS 'Salário'
FROM hr.job_history as h

INNER JOIN hr.employees AS e
ON e.employee_id = h.employee_id

WHERE MONTH(start_date) = 01 || MONTH(start_date) = 02 || MONTH(start_date) = 03

ORDER BY CONCAT(first_name , ' ',last_name), start_date ;
