SELECT
	name
	,Color
	,NULLIF(Color,'Multi') AS Color --> Byt ut multi mot NULL
FROM
	SalesLT.Product