--Alla rader och alla kolumner
SELECT
	*
FROM
	SalesLT.Product

--Välj kolumner
SELECT
	Name
	,Color
FROM
	SalesLT.Product

--Välj kolumner och ange kolumnalias
SELECT
	Name	AS Namn
	,Color	AS Färg
FROM
	SalesLT.Product

--Välj kolumner och uttryck och ange kolumnalias
SELECT
	Name	AS Namn
	,Color	AS Färg
	,ListPrice *1.25 AS [Pris ink moms]
FROM
	SalesLT.Product