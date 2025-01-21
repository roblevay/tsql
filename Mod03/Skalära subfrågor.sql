--Skalära subfrågor är när den inre frågan bara har ett värde
--Ta fram alla produkter som såldes första dagen något såldes
SELECT
	name,SellStartDate			--yttre frågan
FROM 
	SalesLT.product
WHERE	
	Sellstartdate=
		(SELECT					--Inre fråga
			MIN(Sellstartdate) AS FörstaDatum 
		FROM 
			SalesLT.Product)

--Ta fram alla produkter som kostar mer än genomsnittet 
SELECT
	Name
	,listprice
FROM
	SalesLT.product
WHERE
	Listprice>

	(SELECT				--Inre frågan
		AVG(Listprice)--744.5952
	FROM	
		SalesLT.Product)

--Ta fram namn, pris och snittpris för tabellen Saleslt.product
SELECT--Yttre frågan
	Name
	,ListPrice
	,(SELECT AVG(Listprice) FROM Saleslt.product) AS Snittpris--Inre frågan
FROM
	SalesLT.Product
