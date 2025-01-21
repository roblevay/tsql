--Ta fram alla produktkategorier utan produkter
SELECT
	c.name AS Kategori
	,p.Name AS Produkt
FROM
	SalesLT.ProductCategory AS c LEFT OUTER JOIN SalesLT.Product AS p
	ON c.ProductCategoryID=p.ProductCategoryID
WHERE
	p.ProductCategoryID IS NULL