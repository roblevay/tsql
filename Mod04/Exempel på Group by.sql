SELECT
	ProductID
	,SUM(Linetotal) AS Ordersumma
	,COUNT(Linetotal) AS Antal
FROM
	SalesLT.SalesOrderDetail
GROUP BY
	ProductID
--Hur m�nga av varje titel
SELECT
	Title
	,COUNT(*) AS Antal
FROM
	SalesLT.Customer
GROUP BY
	Title

--Hur m�nga har �ndrats per �r?
SELECT
	YEAR(Modifieddate) AS �r
	,COUNT(*) AS Antal
FROM
	SalesLT.Customer
GROUP BY
	YEAR(Modifieddate) ORDER BY 1

--Hur m�nga har �ndrats per �r och m�nad?
SELECT
	YEAR(Modifieddate) AS �r
	,MONTH(Modifieddate) AS M�nad
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