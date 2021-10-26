-- Query inspired by Murilo Rainho
-- https://github.com/tryber/sd-013-a-mysql-vocabulary-booster/pull/5/commits/740d8a950bc59ec3ce02562a2b0714e4ab520cba

SELECT
	c.ContactName AS Nome,
    c.Country AS `País`,
    (SELECT
		COUNT(*)
	FROM
		customers cus
	WHERE
		cus.Country = c.Country
		AND cus.ContactName != c.ContactName
        GROUP BY cus.Country)
	AS `Número de compatriotas`
FROM
	customers c
HAVING `Número de compatriotas`
ORDER BY Nome ASC;
