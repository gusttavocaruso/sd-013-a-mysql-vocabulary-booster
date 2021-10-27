USE w3schools;
DELIMITER $$

CREATE TRIGGER update_orderDate
  AFTER INSERT ON orders
  FOR EACH ROW
BEGIN
  SET NEW.OrderDate = NOW();
END $$

DELIMITER ;
