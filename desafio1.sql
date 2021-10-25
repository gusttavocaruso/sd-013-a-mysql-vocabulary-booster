SELECT
    COUNTRY_NAME AS País,
    IF(REGION_ID = 3,
        'incluído',
        'não incluído') AS 'Status Inclusão'
FROM
    hr.countries;
