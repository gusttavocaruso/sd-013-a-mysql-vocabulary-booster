SELECT CONCAT(hr1.FIRST_NAME, ' ', hr1.LAST_NAME) AS 'Nome completo funcionário 1',
hr1.SALARY AS 'Salário funcionário 1',
hr1.PHONE_NUMBER AS 'Telefone funcionário 1',
CONCAT(hr2.FIRST_NAME, ' ', hr2.LAST_NAME) 'Nome completo funcionário 2',
hr2.SALARY AS 'Salário funcionário 2',
hr2.PHONE_NUMBER 'Telefone funcionário 1'
FROM employees hr1, employees hr2
WHERE hr1.JOB_ID = hr2.JOB_ID
AND CONCAT(hr1.FIRST_NAME, ' ', hr1.LAST_NAME) <> CONCAT(hr2.FIRST_NAME, ' ', hr2.LAST_NAME)
ORDER BY CONCAT(hr1.FIRST_NAME, ' ', hr1.LAST_NAME) ASC,
CONCAT(hr2.FIRST_NAME, ' ', hr2.LAST_NAME) ASC;