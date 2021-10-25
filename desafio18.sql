SELECT 
    (SELECT 
            CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)
        FROM
            hr.employees AS e
        WHERE
            e.EMPLOYEE_ID = jh.EMPLOYEE_ID) AS `Nome completo`,
    DATE_FORMAT(jh.START_DATE, '%d/%m/%Y') AS `Data de início`,
    DATE_FORMAT(jh.END_DATE, '%d/%m/%Y') AS `Data de rescisão`,
    ROUND((DATEDIFF(jh.END_DATE, jh.START_DATE) / 365),
            2) AS `Anos trabalhados`
FROM
    hr.job_history AS jh
WHERE
    ROUND((DATEDIFF(jh.END_DATE, jh.START_DATE) / 365),
            2) IS NOT NULL
ORDER BY `Nome completo` ASC , `Anos trabalhados` ASC
