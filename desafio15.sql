DELIMITER $$

create PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100), OUT media DECIMAL)

BEGIN
SELECT 
    round(AVG(SALARY), 2) AS 'Média salarial'
FROM
    hr.employees AS e
        INNER JOIN
    hr.jobs AS j ON e.JOB_ID = j.JOB_ID
WHERE
    j.JOB_TITLE = cargo INTO media;
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer', @media);
SELECT @media;

