SELECT 
    country_name AS 'País',
    IF(region_id = 1,
        'incluído',
        'Não incluído') AS 'Status inclusão'
FROM
    countries
ORDER BY country_name;
