--Ta reda på alla produkter som har
--högre pris än genomsnittligt unitprice
SELECT
	*
FROM
	SalesLT.Product
WHERE
	ListPrice>
		(SELECT AVG(Listprice) FROM SalesLT.Product)