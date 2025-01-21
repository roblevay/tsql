SELECT
	pcat.Name AS ParentCategory
	,cat.name AS ProductCategory
FROM
	SalesLT.ProductCategory AS pcat INNER JOIN SalesLT.ProductCategory AS cat
	ON pcat.ProductCategoryID=cat.ParentProductCategoryID
