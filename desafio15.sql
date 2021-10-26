-- Criando a procedure
USE hr;
DELIMITER $$;

CREATE PROCEDURE buscar_media_por_cargo(IN job VARCHAR(100))
BEGIN
	SELECT ROUND(AVG(SALARY), 2) `Média salarial`
    from hr.employees
    WHERE JOB_ID = (SELECT JOB_ID FROM hr.jobs WHERE JOB_TITLE = job);
END $$;
	
DELIMITER ;
