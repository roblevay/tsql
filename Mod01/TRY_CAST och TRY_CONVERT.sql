--Om konvertering inte funkar, ange NULL i den kolumnen
SELECT
	name
	,TRY_CAST(Size AS decimal(10,2))
FROM
	SalesLT.Product

--Om konvertering inte funkar, ange NULL
SELECT
	name
	,TRY_CONVERT(decimal(10,2),Size )
FROM
	SalesLT.Product