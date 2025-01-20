--Konvertering i praktiken
SELECT
	name
	,ListPrice
	,name+' kostar '+CAST(Listprice AS VARCHAR(50)) AS Info
FROM
	SalesLT.Product