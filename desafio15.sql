USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(45))
BEGIN
	SELECT 
    ROUND(AVG(SALARY), 2) AS 'Média salarial'
FROM
    hr.employees AS E
        INNER JOIN
    hr.jobs AS J ON E.JOB_ID = J.JOB_ID
WHERE
    JOB_TITLE = cargo;
END $$

DELIMITER ;
