SELECT
	COUNT(*) AS Antalrader
	,COUNT(Salesorderid) AS [Antal värden i DennaKolumn]
	,SUM(Taxamt) AS Skatt
	,AVG(Taxamt) AS SnittSkatt
	,MAX(Taxamt) AS HögstaSkatt
	,MIN(Taxamt) AS LägstaSkatt
FROM	
	SalesLT.SalesOrderHeader
