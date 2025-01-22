SELECT
	ProductID
	,SUM(Linetotal) AS Ordersumma
	,COUNT(Linetotal) AS Antal
FROM
	SalesLT.SalesOrderDetail
GROUP BY
	ProductID
--Hur många av varje titel
SELECT
	Title
	,COUNT(*) AS Antal
FROM
	SalesLT.Customer
GROUP BY
	Title

--Hur många har ändrats per år?
SELECT
	YEAR(Modifieddate) AS År
	,COUNT(*) AS Antal
FROM
	SalesLT.Customer
GROUP BY
	YEAR(Modifieddate) ORDER BY 1

--Hur många har ändrats per år och månad?
SELECT
	YEAR(Modifieddate) AS År
	,MONTH(Modifieddate) AS Månad
	,COUNT(*) AS Antal
FROM
	SalesLT.Customer
GROUP BY
	YEAR(Modifieddate)
	,MONTH(Modifieddate) ORDER BY 1,2

SELECT
	CountryRegion
	,StateProvince
	,city,COUNT(*) AS Antal
FROM
	SalesLT.Address
GROUP BY
	CountryRegion
	,StateProvince
	,city ORDER BY 1,2,3