--Ta reda p� alla produkter som har
--h�gre pris �n genomsnittligt unitprice
SELECT
	*
FROM
	SalesLT.Product
WHERE
	ListPrice>
		(SELECT AVG(Listprice) FROM SalesLT.Product)