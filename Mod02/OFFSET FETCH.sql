--Ta fram rad 1-10
SELECT
	ProductModelID
	,Name
FROM
	SalesLT.ProductModel
ORDER BY
	ProductModelID
OFFSET 0 ROWS--Börja från första raden
FETCH NEXT 10 ROWS ONLY--Ta fram nästa 10 rader

--Ta fram rad 11-20
SELECT
	ProductModelID
	,Name
FROM
	SalesLT.ProductModel
ORDER BY
	ProductModelID
OFFSET 10 ROWS--Börja från elfte raden
FETCH NEXT 10 ROWS ONLY--Ta fram nästa 10 rader