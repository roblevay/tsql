SELECT
	name
	,ISNULL(Color,'Saknas') AS Color
FROM
	SalesLT.Product

SELECT
	name
	,ISNULL(Color,'') AS Color--> Byt ut mot tomma m�ngden
FROM
	SalesLT.Product

--Synonym till ISNULL �r COALESCE
SELECT
	name
	,COALESCE(Color,'') AS Color--> Byt ut mot tomma m�ngden
FROM
	SalesLT.Product