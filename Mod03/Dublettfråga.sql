--Preppa genom att skapa kopia
SELECT
	*
INTO
	produktmodeller
FROM
	SalesLT.ProductModel

--Finns det dubletter i tabellen produktmodeller?
SELECT pm1.ProductModelID
	,pm1.name
	,pm2.ProductModelID,pm2.Name
FROM
	produktmodeller AS pm1 INNER JOIN produktmodeller AS pm2
	ON pm1.Name=pm2.Name
	AND pm1.ProductModelID<>pm2.ProductModelID
	AND pm1.ProductModelID>pm2.ProductModelID