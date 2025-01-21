--Använd tabellalias
SELECT
	c.CompanyName
	,h.TotalDue
FROM
	SalesLT.Customer AS c INNER JOIN SalesLT.SalesOrderHeader AS h
	ON c.CustomerID=h.CustomerID