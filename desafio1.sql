SELECT 
	COUNTRY_NAME AS `País`,
	IF(r.REGION_NAME = "Europe", "incluído", "não incluído") AS "Status Inclusão"
FROM 
	countries c
INNER JOIN
	regions r
    ON c.REGION_ID = r.REGION_ID;