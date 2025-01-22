--1. Skapa en fråga som visar alla produktmodeller (namn)
--och alla produkter (namn)
--2. Ta fram alla produktmodeller, även sådana utan produkter
--och respektive produktnamn
--3. Ta fram endast produktmodeller utan produkter

SELECT
	pm.ProductModelID
	,pm.Name AS Modell
	,p.name AS Produkt
FROM
	SalesLT.ProductModel AS pm LEFT OUTER JOIN SalesLT.Product AS p
	ON pm.ProductModelID=p.ProductModelID
WHERE
	p.ProductModelID IS NULL