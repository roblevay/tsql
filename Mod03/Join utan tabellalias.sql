--Ta fram alla kunder och deras ordrar
--1 Vilka tabeller?
--Saleslt.customer och saleslt.salesorderheader
--2. Hur kopplas de ihop?
--CustomerID
SELECT
	CompanyName,TotalDue
FROM
	SalesLT.Customer INNER JOIN SalesLT.SalesOrderHeader
	ON SalesLT.Customer.CustomerID=SalesLT.SalesOrderHeader.CustomerID
