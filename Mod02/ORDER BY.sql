SELECT
	ProductID
	,Color
	,Name
FROM
	SalesLT.Product
ORDER BY
	ProductID --Stigande ordning

SELECT
	ProductID
	,Color
	,Name
FROM
	SalesLT.Product
ORDER BY
	ProductID DESC --Fallande ordning


SELECT
	Name
	,Color
	,ListPrice
FROM
	SalesLT.Product
ORDER BY
	Color				--Sortera först på detta..
	,ListPrice DESC		--..och sedan på detta

--Knep och knåp 1
--Sortera på alias
SELECT
	Name		
	,Color			AS Färg
	,ListPrice		AS Pris
FROM
	SalesLT.Product
ORDER BY
	Färg				--Sortera först på detta..
	,Pris DESC		--..och sedan på detta

--Knep och knåp 2
--Sortera på kolumnordning, använd endast tillfälligt
SELECT
	Name		
	,Color			AS Färg
	,ListPrice		AS Pris
FROM
	SalesLT.Product
ORDER BY
	2				--Sortera först på detta..
	,3 DESC		--..och sedan på detta

