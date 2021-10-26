SELECT CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo',
date_format(job.START_DATE, '%d/%m/%Y') AS 'Data de início',
date_format(job.END_DATE, '%d/%m/%Y') AS 'Data de rescisão',
ROUND(DATEDIFF(job.END_DATE, job.START_DATE)/360, 2) AS 'Anos trabalhados'
FROM hr.job_history AS `job`
INNER JOIN hr.employees AS emp
ON job.EMPLOYEE_ID = emp.EMPLOYEE_ID
ORDER BY `Nome completo`;
-- https://www.visualdicas.com.br/programacao/php/28-data-mysql-para-formato-br