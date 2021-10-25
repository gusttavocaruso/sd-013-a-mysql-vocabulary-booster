USE hr;
SELECT 
	CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
	jh.START_DATE AS 'Data de início',
    jh.END_DATE AS 'Data de rescisão',
    ROUND(DATEDIFF(jh.END_DATE, jh.START_DATE) / 365, 2) AS 'Anos trabalhados'
FROM employees e
INNER JOIN job_history jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;