SELECT c.COUNTRY_NAME `País`,
IF(c.REGION_ID = 1, 'incluído', 'não incluído') `Status Inclusão`
FROM hr.countries c
ORDER BY `País`;
