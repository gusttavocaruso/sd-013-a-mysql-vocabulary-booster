USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN job VARCHAR(40))
BEGIN

SET @id_job = (SELECT JOB_ID FROM hr.jobs WHERE JOB_TITLE = job);

SELECT ROUND(AVG(SALARY), 2) AS 'Média salarial' FROM hr.employees
WHERE JOB_ID = @id_job
GROUP BY JOB_ID;

END $$

DELIMITER ;
