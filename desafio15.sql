USE hr;
DELIMITER $$;

CREATE PROCEDURE buscar_media_por_cargo(IN nome_do_cargo VARCHAR(25), OUT media_salarial FLOAT)

BEGIN
	SELECT ROUND(AVG(salary), 2) AS 'Média salarial' FROM employees AS e
    INNER JOIN jobs as j
    ON e.job_id = j.job_id
    WHERE job_title = nome_do_cargo
    INTO media_salarial;
    
END $$;

DELIMITER ;

CALL buscar_media_por_cargo('Programmer', @media_salarial);
SELECT @media_salarial;
