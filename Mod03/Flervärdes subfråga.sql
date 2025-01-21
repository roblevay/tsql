--Flervärdes-subfrågor har flera värden i den inre frågan
--Ta fram alla ordrar av företag med bike i namnet
SELECT--Yttre frågan
	*
FROM
	SalesLT.salesorderheader
WHERE
	Customerid IN
		(SELECT			--Inre frågan
			CustomerID
		FROM
			SalesLT.Customer
		WHERE
			CompanyName LIKE '%bike%')