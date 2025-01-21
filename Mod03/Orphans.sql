--Orphans, rader som inte hänger ihop
--1. Ta fram alla kunder med och utan ordrar
SELECT
	c.CompanyName
	,h.SalesOrderID
FROM
	Saleslt.Customer AS c LEFT OUTER JOIN SalesLT.SalesOrderHeader AS h
	ON c.CustomerID=h.CustomerID


--2. Välj ut alla kunder som inte har ordrar
SELECT
	c.CompanyName
	--,h.SalesOrderID
FROM
	Saleslt.Customer AS c LEFT OUTER JOIN SalesLT.SalesOrderHeader AS h
	ON c.CustomerID=h.CustomerID
WHERE
	h.CustomerID IS NULL