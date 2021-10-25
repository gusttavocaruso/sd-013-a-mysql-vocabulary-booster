SELECT 
    C.COUNTRY_NAME,
    (CASE
        WHEN C.REGION_ID = 1 THEN 'pertence'
        ELSE 'nao pertence'
    END)
FROM
    hr.countries AS C
    ORDER BY COUNTRY_NAME;

-- SELECT * FROM hr.countries; -- REGION_ID,COUNTRY_NAME, COUNTRY_ID
-- SELECT * FROM hr.regions