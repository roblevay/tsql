--Korrelerad subfr�ga
--Den inre fr�gan korreleras med den yttre
--En vanlig fr�ga, ta fram alla produkter som r dyrare �n snittet
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
		Saleslt.Product)--skal�r subfr�ga


--Ta fram dende dyraste produktrna i varje kategori
SELECT
	name
	,ProductCategoryID
	,ListPrice
FROM
	SalesLT.product AS p1				--p1 alias f�r den yttre
WHERE
	listprice=
		(SELECT
			MAX(Listprice)
		FROM
			SalesLT.Product AS p2		--p2 alias f�r den inre
		WHERE --Korrelera yttre och inre tabellen
			p1.ProductCategoryID=p2.ProductCategoryID)		ORDER BY 2
