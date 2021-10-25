SELECT JOB_TITLE AS Cargo, ROUND(AVG(pay.SALARY), 2) AS 'Média Salarial',	
	CASE
		WHEN SALARY > 2000 AND SALARY < 5800 THEN 'Júnior'
        WHEN SALARY > 5801 AND SALARY < 7500 THEN 'Júnior'
        WHEN SALARY > 7501 AND SALARY < 10500 THEN 'Júnior'
        WHEN SALARY > 10501 THEN 'CEO'
	END AS 'Senioridade'
FROM jobs AS Cargo
INNER JOIN employees AS pay 
ON Cargo.JOB_ID = pay.JOB_ID
GROUP BY Cargo
ORDER BY 'Média Salarial' ASC, Cargo ASC;
    
