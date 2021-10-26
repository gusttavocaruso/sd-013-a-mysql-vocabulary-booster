SELECT
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo funcionário 1',
    e.SALARY AS 'Salário funcionário 1',
    e.PHONE_NUMBER AS 'Telefone funcionário 1',
    CONCAT(t2.FIRST_NAME, ' ', t2.LAST_NAME) AS 'Nome completo funcionário 2',
    t2.SALARY AS 'Salário funcionário 2',
    t2.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM
    hr.employees AS e
        INNER JOIN
    hr.employees AS t2 ON e.JOB_ID = t2.JOB_ID
WHERE CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) <> CONCAT(t2.FIRST_NAME, ' ', t2.LAST_NAME)
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) , CONCAT(t2.FIRST_NAME, ' ', t2.LAST_NAME);
