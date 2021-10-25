SELECT
    C.COUNTRY_NAME AS 'País',
    (
        SELECT
            IF (
                C.REGION_ID = r.REGION_ID,
                'incluído',
                'não incluído'
            )
        FROM
            hr.regions AS r
        LIMIT
            1
    ) AS 'Status Inclusão'
FROM
    hr.countries AS C
order by C.COUNTRY_NAME ASC;
