--Flerv�rdes-subfr�gor har flera v�rden i den inre fr�gan
--Ta fram alla ordrar av f�retag med bike i namnet
SELECT--Yttre fr�gan
	*
FROM
	SalesLT.salesorderheader
WHERE
	Customerid IN
		(SELECT			--Inre fr�gan
			CustomerID
		FROM
			SalesLT.Customer
		WHERE
			CompanyName LIKE '%bike%')