SELECT country_name AS 'País', IF (regions.region_name = 'Europe', 'incluído', 'não incluído') AS 'Status Inclusão'
FROM hr.countries, hr.regions
WHERE (countries.region_id = regions.region_id);
