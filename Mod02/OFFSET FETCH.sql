--Ta fram rad 1-10
SELECT
	ProductModelID
	,Name
FROM
	SalesLT.ProductModel
ORDER BY
	ProductModelID
OFFSET 0 ROWS--B�rja fr�n f�rsta raden
FETCH NEXT 10 ROWS ONLY--Ta fram n�sta 10 rader

--Ta fram rad 11-20
SELECT
	ProductModelID
	,Name
FROM
	SalesLT.ProductModel
ORDER BY
	ProductModelID
OFFSET 10 ROWS--B�rja fr�n elfte raden
FETCH NEXT 10 ROWS ONLY--Ta fram n�sta 10 rader