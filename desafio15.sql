USE hr;

DELIMITER
$$

CREATE PROCEDURE buscar_media_por_cargo(IN name_job VARCHAR(50))
BEGIN
SELECT ROUND(AVG(e.SALARY), 2) AS 'Média salarial'
FROM employees AS e
INNER JOIN jobs AS j
ON j.JOB_ID = e.JOB_ID AND J.JOB_TITLE = name_job
GROUP BY e.JOB_ID;
END
$$

DELIMITER ;
