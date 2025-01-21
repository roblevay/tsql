SELECT
	c.Name AS Kategori
	,p.name AS Produkt
FROM
	SalesLT.ProductCategory AS c INNER JOIN SalesLT.Product AS p
	ON c.ProductCategoryID=p.ProductCategoryID

--Ta fram adresser f�r alla kunder
SELECT
	c.CompanyName
	,a.AddressLine1
	,a.City
FROM
	SalesLT.Customer AS c INNER JOIN SalesLT.CustomerAddress AS ca
	ON c.CustomerID=ca.CustomerID
	--Koppla p� adresstabellen
	INNER JOIN SalesLT.Address AS a
	ON ca.AddressID=a.AddressID