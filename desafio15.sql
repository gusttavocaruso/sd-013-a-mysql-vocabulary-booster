DELIMITER $$

create PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))

BEGIN
SELECT 
    round(AVG(SALARY), 2) AS 'Média salarial'
FROM
    hr.employees AS e
        INNER JOIN
    hr.jobs AS j ON e.JOB_ID = j.JOB_ID
WHERE
    j.JOB_TITLE = cargo;
END $$

DELIMITER ;
