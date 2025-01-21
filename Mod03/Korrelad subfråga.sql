--Korrelerad subfråga
--Den inre frågan korreleras med den yttre
--En vanlig fråga, ta fram alla produkter som r dyrare än snittet
SELECT
	Name
	,listprice
FROM
	SalesLT.product
WHERE 
	Listprice >
	(SELECT
		AVG(Listprice)
	FROM
		Saleslt.Product)--skalär subfråga


--Ta fram dende dyraste produktrna i varje kategori
SELECT
	name
	,ProductCategoryID
	,ListPrice
FROM
	SalesLT.product AS p1				--p1 alias för den yttre
WHERE
	listprice=
		(SELECT
			MAX(Listprice)
		FROM
			SalesLT.Product AS p2		--p2 alias för den inre
		WHERE --Korrelera yttre och inre tabellen
			p1.ProductCategoryID=p2.ProductCategoryID)		ORDER BY 2
