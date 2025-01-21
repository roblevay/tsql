SELECT * FROM SalesLT.SalesOrderDetail
SELECT * FROM SalesLT.Product

--Ta fram alla produkter som har s�lts f�r mindre �n listpris
--dvs med rabatt
SELECT
	*
FROM
	SalesLT.product AS p
WHERE
	Listprice >
		(SELECT
			MAX(Unitprice)
		FROM
			SalesLT.SalesOrderDetail AS od
		WHERE
			p.ProductID=od.ProductID)