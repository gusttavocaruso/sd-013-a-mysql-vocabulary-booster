SELECT 
    UCASE(CONCAT(e.First_name, ' ', e.Last_name)) AS 'Nome completo',
    START_DATE 'Data de início',
    e.SALARY 'Salário'
FROM
    hr.job_history AS h
        INNER JOIN
    hr.employees AS e ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
WHERE
    MONTH(START_DATE) IN (1 , 2, 3)
ORDER BY `Nome completo` ASC , `Data de início` ASC;
