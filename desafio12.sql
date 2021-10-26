-- 12 - Faça um relatório que lista todas as pessoas funcionárias que possuem o mesmo cargo
SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo funcionário 1',
    e.salary AS 'Salário funcionário 1',
    e.phone_number AS 'Telefone funcionário 1',
    CONCAT(f2.FIRST_NAME, ' ', f2.LAST_NAME) AS 'Nome completo funcionário 2',
    f2.salary AS 'Salário funcionário 2',
    f2.phone_number AS 'Telefone funcionário 2'
FROM
    hr.employees As e, hr.employees AS f2
WHERE f2.JOB_ID = e.JOB_ID AND f2.EMPLOYEE_ID != e.EMPLOYEE_ID
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
