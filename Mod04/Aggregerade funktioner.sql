SELECT
	COUNT(*) AS Antalrader
	,COUNT(Salesorderid) AS [Antal v�rden i DennaKolumn]
	,SUM(Taxamt) AS Skatt
	,AVG(Taxamt) AS SnittSkatt
	,MAX(Taxamt) AS H�gstaSkatt
	,MIN(Taxamt) AS L�gstaSkatt
FROM	
	SalesLT.SalesOrderHeader
