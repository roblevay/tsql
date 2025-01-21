--Skal�ra subfr�gor �r n�r den inre fr�gan bara har ett v�rde
--Ta fram alla produkter som s�ldes f�rsta dagen n�got s�ldes
SELECT
	name,SellStartDate			--yttre fr�gan
FROM 
	SalesLT.product
WHERE	
	Sellstartdate=
		(SELECT					--Inre fr�ga
			MIN(Sellstartdate) AS F�rstaDatum 
		FROM 
			SalesLT.Product)

--Ta fram alla produkter som kostar mer �n genomsnittet 
SELECT
	Name
	,listprice
FROM
	SalesLT.product
WHERE
	Listprice>

	(SELECT				--Inre fr�gan
		AVG(Listprice)--744.5952
	FROM	
		SalesLT.Product)

--Ta fram namn, pris och snittpris f�r tabellen Saleslt.product
SELECT--Yttre fr�gan
	Name
	,ListPrice
	,(SELECT AVG(Listprice) FROM Saleslt.product) AS Snittpris--Inre fr�gan
FROM
	SalesLT.Product
