SELECT CONCAT(first_name , ' ',last_name) AS 'Nome completo' , 
job_title AS 'Cargo', 
start_date AS 'Data de início do cargo',
department_name AS 'Departamento'

FROM hr.job_history as h
INNER JOIN hr.employees AS e
ON e.employee_id = h.employee_id

INNER JOIN hr.departments as d
ON h.department_id = d.department_id

INNER JOIN hr.jobs AS j
ON h.job_id = j.job_id

ORDER BY CONCAT(first_name , ' ',last_name) DESC, job_title ;
