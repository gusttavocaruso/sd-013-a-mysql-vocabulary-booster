USE w3schools;
DELIMITER $$

CREATE TRIGGER insert_date_to_orders
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN 

SET NEW.OrderDate = NOW();

END $$

DELIMITER ;
