SELECT
	name
	,Color
FROM
	SalesLT.Product
WHERE
	Color='Blue'
	OR
	Color='Black'
	OR
	Color='Red'

--Annorlunda uttryckt:
SELECT
	name
	,Color
FROM
	SalesLT.Product
WHERE
	Color IN	('Blue'
				,'Black'
				,'Red')
