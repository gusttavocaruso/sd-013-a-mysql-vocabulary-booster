SELECT 
CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo',

CONCAT(IF(DAY(jb_his.START_DATE) < 10, CONCAT(0, DAY(jb_his.START_DATE)), DAY(jb_his.START_DATE)), '/',
 IF(CHAR_LENGTH(MONTH(jb_his.START_DATE)) = 1, CONCAT(0, MONTH(jb_his.START_DATE)), MONTH(jb_his.START_DATE)), '/',
 YEAR(jb_his.START_DATE)) AS 'Data de início',

CONCAT(DAY(jb_his.END_DATE), '/',
 IF(CHAR_LENGTH(MONTH(jb_his.END_DATE)) = 1, CONCAT(0, MONTH(jb_his.END_DATE)), MONTH(jb_his.END_DATE)), '/',
 YEAR(jb_his.END_DATE)) AS 'Data de rescisão',

ROUND(DATEDIFF(jb_his.END_DATE, jb_his.START_DATE) / 30 / 12, 2)
 AS 'Anos trabalhados'
FROM hr.job_history AS jb_his
INNER JOIN hr.employees AS emp
ON jb_his.EMPLOYEE_ID = emp.EMPLOYEE_ID
ORDER BY CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME),
ROUND((ROUND(DATEDIFF(jb_his.END_DATE, jb_his.START_DATE) / 30, 2)) / 12, 2)
;

SELECT 2