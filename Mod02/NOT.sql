SELECT
	*
FROM
	SalesLT.Product
WHERE NOT			--Spegelmängden, alla som inte kommer fram från början
	(Color='Blue'
	AND
	ListPrice>2000)

SELECT
	*
FROM
	SalesLT.Product
WHERE NOT			--Alla som inte är blå och som kostar mer äm 2000
	(Color='Blue')
	AND
	ListPrice>2000

SELECT
	name
	,color
FROM
	SalesLT.Product
WHERE NOT
	Color <>'Blue'--Alla blåa

SELECT
	*
FROM
	SalesLT.Product
WHERE NOT
	ProductID  IN(	708,	--Alla utom dessa
					709
					,710)