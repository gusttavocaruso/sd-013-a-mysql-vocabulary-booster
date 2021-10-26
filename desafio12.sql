SELECT 
    CONCAT(e.First_name, ' ', e.Last_name) 'Nome completo funcionário 1',
    e.SALARY 'Salário funcionário 1',
    e.PHONE_NUMBER 'Telefone funcionário 1',
    CONCAT(t.FIRST_NAME, ' ', t.Last_name) 'Nome completo funcionário 2',
    t.SALARY 'Salário funcionário 2',
    t.PHONE_NUMBER 'Telefone funcionário 2'
FROM
    hr.employees AS e,
    hr.employees AS t
WHERE
    e.EMPLOYEE_ID <> t.EMPLOYEE_ID
        AND e.JOB_ID = t.JOB_ID
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2` ASC;
