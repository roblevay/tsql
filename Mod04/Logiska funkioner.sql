SELECT
	name
	,ListPrice
	,IIF(Listprice>1000,'Dyr','Billig') AS Prisniv�
	--Logiskt test, v�rde om sant, v�rde om falskt
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
		AS Prisniv�
	--Logiskt test, v�rde om sant, v�rde om falskt
FROM
	SalesLT.Product

--IIF
--Ta med f�rgen om den �r bl�, annars skriv 'Ful F�rg'
SELECT
	name,color
	,IIF(color='Blue',color,'Ful f�rg') AS F�rg
FROM
	SalesLT.Product

SELECT
	name,color
	,IIF(color='Blue',color,IIF(Color='black',color,'Ful f�rg')) AS F�rg
FROM
	SalesLT.Product

SELECT
	name,color
	,IIF(color='Blue',color,IIF(Color='black',color,'Ful f�rg')) AS F�rg
FROM
	SalesLT.Product


SELECT
	name,color
	,IIF(color IN ('Blue','black'),color,'Ful f�rg') AS F�rg
FROM
	SalesLT.Product

SELECT CHOOSE(4,'I','Stockholm','har','vi','ingen','sn�')
--V�ljer fj�rde v�rdet i listan

SELECT ISNUMERIC('99')--1, allts� numeriskt
SELECT ISNUMERIC('Nittionio')--0, allts� inte numeriskt

SELECT
	name
	,Size
	,ISNUMERIC(Size) AS �rtal
FROM
	SalesLT.Product