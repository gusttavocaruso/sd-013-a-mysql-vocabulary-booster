USE hr;

DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano (month INT, year INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE people_hired INT;
  SELECT COUNT(*) 
    FROM hr.employees
  WHERE YEAR(HIRE_DATE) = year 
    AND MONTH(HIRE_DATE) = month
  INTO people_hired;
  RETURN people_hired;
END $$

DELIMITER ;
