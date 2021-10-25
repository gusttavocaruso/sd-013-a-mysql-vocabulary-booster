SELECT 
  CONCAT(e.first_name,' ', e.last_name) AS 'Nome completo',
    jh.job_id AS Cargo,
    jh.start_date 'AS Data de início do cargo',
    jh.department_id AS Departamento
FROM
    hr.employees AS e
        INNER JOIN
    hr.job_history AS jh ON e.job_id = jh.job_id
ORDER BY 'Nome completo' DESC, jh.job_id ASC;
