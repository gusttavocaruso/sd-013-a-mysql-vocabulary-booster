SELECT UCASE(CONCAT(e.FIRST_NAME,' ',e.LAST_NAME)) AS 'Nome completo', 
h.START_DATE AS 'Data de início', e.SALARY AS 'Salário'
FROM hr.employees AS e
INNER JOIN  hr.job_history AS h
ON h.EMPLOYEE_ID = e.EMPLOYEE_ID 
INNER JOIN  hr.jobs AS j 
ON j.JOB_ID = e.JOB_ID
WHERE MONTH(h.START_DATE) IN(1, 2, 3) 
ORDER BY CONCAT(e.FIRST_NAME,' ',e.LAST_NAME), h.START_DATE;
