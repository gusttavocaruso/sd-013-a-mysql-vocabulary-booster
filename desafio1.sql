SELECT c.COUNTRY_NAME AS 'PAÍS',
  IF(r.REGION_ID = 1, 'incluído', 'não incluído') AS 'Status Inclusão'
FROM hr.countries c
  INNER JOIN regions r ON c.REGION_ID = r.REGION_ID
ORDER BY c.COUNTRY_NAME;