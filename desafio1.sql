SELECT COUNTRY_NAME, IF(REGION_ID = 2, 'incluído', 'não incluído') AS 'Europe'
FROM hr.countries;
