DELIMITER $$

CREATE TRIGGER fillDate
AFTER INSERT ON w3schools.orders
FOR EACH ROW
BEGIN
UPDATE w3schools.orders
SET
    OrderDate = NEW.CURRENT_DATE()
WHERE
    (SELECT
            OrderID
        FROM
            w3schools.orders
        ORDER BY OrderID DESC
        LIMIT 1);
END $$

DELIMITER ;
