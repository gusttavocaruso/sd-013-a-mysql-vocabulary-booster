SELECT Country AS País FROM w3schools.customers c
	UNION
SELECT Country FROM w3schools.suppliers
ORDER BY País
LIMIT 5;