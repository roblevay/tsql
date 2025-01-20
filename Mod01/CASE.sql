SELECT
	name
	,color
	,CASE
		WHEN color='Blue' THEN 'Bl�'
		WHEN color='Red' THEN 'R�d'
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
	END AS Prisniv�
FROM
	SalesLT.Product