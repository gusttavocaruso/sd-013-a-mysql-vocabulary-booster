SELECT CONCAT(first_name,last_name) as 'Nome completo', job_title as 'Cargo',
start_date as 'Data de início do cargo', department_name as "Departamento"
FROM employees as E, job_history as JH, departments as D, jobs as J
WHERE E.employee_id = JH.employee_id 
AND JH.department_id = D.department_id 
AND J.job_id = JH.job_id
ORDER BY CONCAT(first_name,last_name) DESC,job_title;