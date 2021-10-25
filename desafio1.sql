SELECT country_name as 'País',
IF(region_name = 'Europe', 'incluído','não incluído') as 'Status Inclusão'
FROM countries AS C, regions as R 
WHERE C.region_id = R.region_id
ORDER BY country_name;