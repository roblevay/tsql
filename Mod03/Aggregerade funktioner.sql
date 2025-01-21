SELECT MIN(Sellstartdate) AS FörstaDatum FROM SalesLT.Product
--2002-06-01

SELECT MAX(Sellstartdate) AS SenasteDatum FROM SalesLT.Product
--2007-07-01 

SELECT AVG(Listprice) AS Snittpris FROM SalesLT.Product
--744.5952