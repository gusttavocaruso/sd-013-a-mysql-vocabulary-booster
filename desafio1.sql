SELECT 
C.COUNTRY_NAME AS País,
IF(REGION_ID = 1, 'incluído', 'não incluído') AS 'Status Inclusão'
FROM hr.countries AS C
ORDER BY País ASC;
