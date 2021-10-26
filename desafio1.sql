SELECT COUNTRY_NAME AS `País`,
IF(REGION_ID = 1, 'incluído', 'não incluído') AS `Status Inclusão`
FROM hr.countries
ORDER BY `País`;

-- Codigo baseado nos exemplos do Course, aula 20.1
