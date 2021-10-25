SELECT
    c.COUNTRY_NAME AS 'País',
    (
        SELECT
            IF (
                c.REGION_ID = r.REGION_ID,
                'incluído',
                'não incluído'
            )
        FROM
            hr.regions AS r
        LIMIT
            1
    ) AS 'Status Inclusão'
FROM
    hr.countries AS c;