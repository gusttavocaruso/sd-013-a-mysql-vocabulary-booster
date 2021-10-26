SELECT 
CONCAT(E.FIRST_NAME,' ',E.LAST_NAME) AS 'Nome completo funcionário 1',
E.SALARY AS 'Salário funcionário 1',
E.PHONE_NUMBER AS 'Telefone funcionário 1',
CONCAT(F.FIRST_NAME,' ',F.LAST_NAME) AS 'Nome completo funcionário 2',
F.SALARY AS 'Salário funcionário 2',
F.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM hr.employees AS E, hr.employees AS F
WHERE 
E.JOB_ID = F.JOB_ID AND CONCAT(E.FIRST_NAME,' ',E.LAST_NAME) <> CONCAT(F.FIRST_NAME,' ',F.LAST_NAME)
ORDER BY CONCAT(E.FIRST_NAME,' ',E.LAST_NAME), CONCAT(F.FIRST_NAME,' ',F.LAST_NAME);
