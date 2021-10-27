SELECT 
	CONCAT(E1.first_name, ' ', E1.last_name) as `Nome completo funcionário 1`,
    E1.salary as `Salário funcionário 1`,
    E1.phone_number as `Telefone funcionário 1`,
    CONCAT(E2.first_name, ' ', E2.last_name) as `Nome completo funcionário 2`,
	E2.salary as `Salário funcionário 2`,
    E2.phone_number as `Telefone funcionário 2`
FROM
	hr.employees as E1, hr.employees as E2
WHERE 
	E1.job_id = E2.job_id AND CONCAT(E1.first_name, ' ', E1.last_name) <> CONCAT(E2.first_name, ' ', E2.last_name)
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;