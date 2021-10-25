SELECT 
    (SELECT 
            UCASE(CONCAT(e1.FIRST_NAME, ' ', e1.LAST_NAME))
        FROM
            hr.employees AS e1
        WHERE
            e1.EMPLOYEE_ID = jh.EMPLOYEE_ID) AS `Nome completo`,
    jh.START_DATE AS `Data de início`,
    (SELECT 
            e2.SALARY
        FROM
            hr.employees AS e2
        WHERE
            e2.EMPLOYEE_ID = jh.EMPLOYEE_ID) AS Salário
FROM
    hr.job_history AS jh
WHERE
    MONTH(jh.START_DATE) IN (1 , 2, 3)
ORDER BY `Nome completo` ASC, jh.START_DATE ASC;
