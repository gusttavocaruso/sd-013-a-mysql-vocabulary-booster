USE hr;
SELECT 
	c.COUNTRY_NAME AS 'País',
    IF(r.REGION_ID=1, 'incluído', 'não incluído') AS "Status Inclusão" 
FROM countries  c
INNER JOIN regions  r ON c.REGION_ID = r.REGION_ID
ORDER BY c.COUNTRY_NAME;