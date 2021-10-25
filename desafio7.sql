SELECT
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
    e.HIRE_DATE AS 'Data de início',
    e.SALARY AS 'Salário'
FROM
    hr.employees AS e
WHERE
    MONTH(e.HIRE_DATE) IN (1 , 2, 3)
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) , e.HIRE_DATE;
