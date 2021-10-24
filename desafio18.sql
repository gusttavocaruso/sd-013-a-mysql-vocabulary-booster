SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) `Nome completo`,
REPLACE(DATE_FORMAT(jh.START_DATE, '%d %m %Y'), ' ', '/') `Data de início`,
REPLACE(DATE_FORMAT(jh.END_DATE, '%d %m %Y'), ' ', '/') `Data de rescisão`,
ROUND(DATEDIFF(jh.END_DATE, jh.START_DATE) / 365, 2) `Anos trabalhados`
FROM hr.job_history jh
INNER JOIN hr.employees e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
