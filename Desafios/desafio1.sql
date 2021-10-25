SELECT COUNTRY_NAME, 
IF(REGION_ID = 1, 'Europe', 'não incluído') 
AS "Status Inclusão" FROM countries;
