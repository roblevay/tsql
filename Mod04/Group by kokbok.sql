--Group by kokbok
SELECT
	ProductCategoryID			--2. Flytta upp grupperingen hit
	,COUNT(*) AS Antal			--3. Lägg till en eller flera
FROM							--	 aggregerade funktioner
	SalesLT.Product
GROUP BY
	ProductCategoryID			--1. Vad vill jag gruppera på?