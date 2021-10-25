SELECT C.COUNTRY_NAME AS País,
IF ((C.REGION_ID = (SELECT REGION_ID FROM hr.regions WHERE REGION_NAME = 'Europe')) = 1, 'incluído', 'não incluído') AS 'Status Inclusão'
FROM hr.countries AS C
ORDER BY C.COUNTRY_NAME;


