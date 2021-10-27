USE hr;
DELIMITER $$;

CREATE PROCEDURE buscar_media_por_cargo(IN nome_do_cargo VARCHAR(25))

BEGIN
SELECT ROUND(AVG(salary), 2) AS 'Média salarial' FROM employees AS e
INNER JOIN jobs as j
ON e.job_id = j.job_id
WHERE job_title LIKE nome_do_cargo
GROUP BY j.job_title;    
END $$;

DELIMITER ;
