SELECT
	*
FROM
	SalesLT.Product
WHERE NOT			--Spegelm�ngden, alla som inte kommer fram fr�n b�rjan
	(Color='Blue'
	AND
	ListPrice>2000)

SELECT
	*
FROM
	SalesLT.Product
WHERE NOT			--Alla som inte �r bl� och som kostar mer �m 2000
	(Color='Blue')
	AND
	ListPrice>2000

SELECT
	name
	,color
FROM
	SalesLT.Product
WHERE NOT
	Color <>'Blue'--Alla bl�a

SELECT
	*
FROM
	SalesLT.Product
WHERE NOT
	ProductID  IN(	708,	--Alla utom dessa
					709
					,710)