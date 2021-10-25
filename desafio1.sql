
SELECT COUNTRY_NAME, REGION_ID,
  CASE
		WHEN REGION_ID = 1 THEN 'incluído'
        ELSE 'não incluído'
        END AS REGION_ID FROM hr.countries ORDER BY COUNTRY_NAME ASC;
        