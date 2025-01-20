SELECT
	ProductModelID
	,Name
FROM
	SalesLT.ProductModel
WHERE
	ProductModelID BETWEEN 5 AND 8
--Mellan 5 och 8, inklusive dessa värden

SELECT
	ProductModelID
	,Name
FROM
	SalesLT.ProductModel
WHERE
	ProductModelID>=5
	AND
	ProductModelID<=8