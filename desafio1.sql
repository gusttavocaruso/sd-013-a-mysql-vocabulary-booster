SELECT * FROM hr.countries;
SELECT country_name AS 'País',
if(region_id = 1, 'incluído', 'não incluído') AS 'Status Inclusão'
FROM hr.countries
ORDER BY País;
