SELECT 
    C.COUNTRY_NAME AS 'País',
    (CASE
        WHEN C.REGION_ID = 1 THEN 'incluído'
        ELSE 'não incluído'
    END) AS 'Status Inclusão'
FROM
    hr.countries AS C
    ORDER BY COUNTRY_NAME;

-- SELECT * FROM hr.countries; -- REGION_ID,COUNTRY_NAME, COUNTRY_ID
-- SELECT * FROM hr.regions