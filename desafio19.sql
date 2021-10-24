USE hr;
DELIMITER $$;

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(`monthHire`CHAR(2), `yearHire` CHAR(4))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE result INT;
  SELECT COUNT(*)
  FROM hr.employees e
  WHERE MONTH(e.HIRE_DATE) = `monthHire` AND YEAR(e.HIRE_DATE) = `yearHire`
  INTO result;
  RETURN result;
END $$;

DELIMITER ;
