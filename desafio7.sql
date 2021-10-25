SELECT

UCASE(
CONCAT(FIRST_NAME, ' ', LAST_NAME)
) AS 'Nome completo',

START_DATE AS 'Data de início',

SALARY AS 'Salário'

FROM hr.job_history AS Jhistory

INNER JOIN hr.employees AS employees ON employees.EMPLOYEE_ID = Jhistory.EMPLOYEE_ID

WHERE MONTH(Jhistory.START_DATE) IN (01, 02, 03)

ORDER BY `Nome completo`, `Data de início` ;
