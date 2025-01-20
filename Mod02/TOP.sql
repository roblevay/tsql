SELECT TOP 10	--De 10 första
	*
FROM
	SalesLT.ProductModel

SELECT TOP 10--10 dyraste produkterna
	name
	,ListPrice
FROM
	SalesLT.Product
ORDER BY
	ListPrice DESC

--Ta med även delade positioner
SELECT TOP 10 WITH TIES
	name
	,ListPrice
FROM
	SalesLT.Product
ORDER BY
	ListPrice DESC

--Ta fram de 10 dyraste procenten från tabellen
SELECT TOP 10 PERCENT
	name
	,ListPrice
FROM
	SalesLT.Product
ORDER BY
	ListPrice DESC