SELECT
	name
	,color
	,CASE
		WHEN color='Blue' THEN 'Blå'
		WHEN color='Red' THEN 'Röd'
		WHEN color='Black' THEN 'Svart'
		WHEN color='White' THEN 'Vit'
		ELSE Color
	END AS SwedishColor
FROM
	SalesLT.Product

SELECT
	Name
	,listprice
	,CASE
		WHEN ListPrice<500 THEN 'Billig'
		WHEN ListPrice BETWEEN 500 AND 1000 THEN 'Medeldyr'
		WHEN ListPrice>1000 THEN 'Dyr'
	END AS Prisnivå
FROM
	SalesLT.Product