use hr;
SELECT 
    *
FROM
    countries;
SELECT 
    COUNTRY_NAME AS País,
    IF(REGION_ID = 1, 'y', 'n') AS 'Status Inclusao'
-- FROM
    countries
ORDER BY country_name;
