SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
    e.HIRE_DATE AS 'Data de início',
    e.SALARY AS 'Salário'
FROM
    hr.employees AS e
    INNER join
    hr.job_history as h on e.EMPLOYEE_ID = h.EMPLOYEE_ID
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) DESC , j.JOB_TITLE ASC;
