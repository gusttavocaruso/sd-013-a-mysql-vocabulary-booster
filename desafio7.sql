SELECT
    UCASE(CONCAT(e.first_name, ' ', e.last_name)) AS `Nome completo`,
    jh.start_date AS `Data de início`,
    e.salary AS Salário
FROM
    hr.job_history AS jh
        INNER JOIN
    hr.employees AS e ON jh.job_id = e.job_id
WHERE MONTH(jh.start_date) IN (01, 02, 03)
ORDER BY `Nome completo`, `Data de início`;
