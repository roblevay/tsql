SELECT 10+2 *3

--SQL tolkar som
SELECT 10+(2*3)--> 16

--Man kan skriva 
--SQL tolkar som
SELECT (10+2)*3--> 36

SELECT--AND utf�rs f�re OR. Anv�nd parenteser!
	name,ListPrice
FROM
	SalesLT.Product
WHERE 
	(ListPrice >2000
	AND
	Color='Red')
	OR
	Color='Blue'
