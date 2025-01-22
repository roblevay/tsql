SELECT
	name
	,ListPrice
	,IIF(Listprice>1000,'Dyr','Billig') AS Prisnivå
	--Logiskt test, värde om sant, värde om falskt
FROM
	SalesLT.Product

--Motsvarande case
SELECT
	name
	,ListPrice
	,CASE
		WHEN ListPrice > 1000 THEN 'Dyr'
		ELSE 'Billig'
	END
		AS Prisnivå
	--Logiskt test, värde om sant, värde om falskt
FROM
	SalesLT.Product

--IIF
--Ta med färgen om den är blå, annars skriv 'Ful Färg'
SELECT
	name,color
	,IIF(color='Blue',color,'Ful färg') AS Färg
FROM
	SalesLT.Product

SELECT
	name,color
	,IIF(color='Blue',color,IIF(Color='black',color,'Ful färg')) AS Färg
FROM
	SalesLT.Product

SELECT
	name,color
	,IIF(color='Blue',color,IIF(Color='black',color,'Ful färg')) AS Färg
FROM
	SalesLT.Product


SELECT
	name,color
	,IIF(color IN ('Blue','black'),color,'Ful färg') AS Färg
FROM
	SalesLT.Product

SELECT CHOOSE(4,'I','Stockholm','har','vi','ingen','snö')
--Väljer fjärde värdet i listan

SELECT ISNUMERIC('99')--1, alltså numeriskt
SELECT ISNUMERIC('Nittionio')--0, alltså inte numeriskt

SELECT
	name
	,Size
	,ISNUMERIC(Size) AS Ärtal
FROM
	SalesLT.Product