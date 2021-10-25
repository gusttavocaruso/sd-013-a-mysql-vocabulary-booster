SELECT 
    (SELECT 
            JOB_TITLE
        FROM
            hr.jobs as N
        WHERE
            N.JOB_ID = E.JOB_ID) as Cargo,
	round(AVG(SALARY),2) AS "Média Salarial",
    CASE 
    WHEN round(AVG(SALARY),2) BETWEEN 2000 AND 5800 THEN "Júnior"
	  WHEN round(AVG(SALARY),2) BETWEEN 5801 AND 7500 THEN "Pleno"
    WHEN round(AVG(SALARY),2) BETWEEN 7501 AND 10500 THEN "Sênior"
	ELSE 'CEO'
    END
    AS 'Nível'
FROM
    hr.employees as E
GROUP BY JOB_ID
ORDER BY `Média Salarial` ASC, Cargo ASC;

