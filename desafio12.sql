SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo funcionário 1',
    e.SALARY AS 'Salário funcionário 1',
    e.PHONE_NUMBER AS 'Telefone funcionário 1',
    CONCAT(es.FIRST_NAME, ' ', es.LAST_NAME) AS 'Nome completo funcionário 2',
    es.SALARY AS 'Salário funcionário 2',
    es.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM
    hr.employees AS e,
    hr.employees AS es
WHERE
    e.JOB_ID = es.JOB_ID
        AND e.EMPLOYEE_ID <> es.EMPLOYEE_ID
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) , CONCAT(es.FIRST_NAME, ' ', es.LAST_NAME);
