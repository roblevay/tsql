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
	Color				--Sortera f�rst p� detta..
	,ListPrice DESC		--..och sedan p� detta

--Knep och kn�p 1
--Sortera p� alias
SELECT
	Name		
	,Color			AS F�rg
	,ListPrice		AS Pris
FROM
	SalesLT.Product
ORDER BY
	F�rg				--Sortera f�rst p� detta..
	,Pris DESC		--..och sedan p� detta

--Knep och kn�p 2
--Sortera p� kolumnordning, anv�nd endast tillf�lligt
SELECT
	Name		
	,Color			AS F�rg
	,ListPrice		AS Pris
FROM
	SalesLT.Product
ORDER BY
	2				--Sortera f�rst p� detta..
	,3 DESC		--..och sedan p� detta

