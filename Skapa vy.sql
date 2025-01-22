CREATE VIEW massa_tabeller_view
AS
SELECT
	c.CustomerID
	,c.CompanyName
	,p.Name
FROM
	SalesLT.Customer AS  c INNER JOIN SalesLT.SalesOrderHeader AS oh
	ON c.CustomerID=oh.CustomerID
	INNER JOIN SalesLT.SalesOrderDetail AS od
	ON oh.SalesOrderID=od.SalesOrderID
	INNER JOIN SalesLT.Product AS p
	ON od.ProductID=p.ProductID
GO

SELECT * FROM massa_tabeller_view