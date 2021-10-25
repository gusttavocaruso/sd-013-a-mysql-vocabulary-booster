SELECT CONCAT(first_name , ' ',last_name) AS 'Nome Completo' , 
job_title AS 'Cargo', 
hire_date AS 'Data de início do cargo',
department_name AS 'Departamento'
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
ON e.job_id = j.job_id
INNER JOIN hr.departments as d
ON e.department_id = d.department_id
ORDER BY CONCAT(first_name , ' ',last_name), job_title ;
