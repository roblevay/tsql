SELECT
	ProductCategoryID
	,AVG(Listprice) AS Snittpris
FROM
	SalesLT.Product
GROUP BY
	ProductCategoryID
HAVING
	AVG(Listprice)>100

--Dubletter
SELECT
	Name
	,COUNT(*)
FROM
	produktmodeller
GROUP BY
	Name
HAVING
	COUNT(*)>=2

--Ta fram alla kolumner för dessa
SELECT * FROM produktmodeller WHERE name IN
	(SELECT
		Name
		--,COUNT(*)
	FROM
		produktmodeller
	GROUP BY
		Name
	HAVING
		COUNT(*)>=2)


