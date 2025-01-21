--Ta med alla kunder oavsett om de har ordrar eller inte
SELECT
	c.CustomerID
	,c.CompanyName
	,h.SalesOrderID,h.TotalDue
FROM--Alla fr�n den V�NSTRA tabellen och matchande fr�n den h�gra om det finns
	SalesLT.Customer AS c LEFT OUTER JOIN SalesLT.SalesOrderHeader AS h
	ON c.CustomerID=h.CustomerID
ORDER BY SalesOrderID DESC