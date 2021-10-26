DELIMITER $$

CREATE TRIGGER orders_data_insert

BEFORE INSERT ON w3schools.orders
FOR EACH ROW

BEGIN

SET NEW.OrderDate = DATE(NOW());

END $$

DELIMITER ;
