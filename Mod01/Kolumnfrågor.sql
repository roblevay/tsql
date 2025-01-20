--Alla rader och alla kolumner
SELECT
	*
FROM
	SalesLT.Product

--V�lj kolumner
SELECT
	Name
	,Color
FROM
	SalesLT.Product

--V�lj kolumner och ange kolumnalias
SELECT
	Name	AS Namn
	,Color	AS F�rg
FROM
	SalesLT.Product

--V�lj kolumner och uttryck och ange kolumnalias
SELECT
	Name	AS Namn
	,Color	AS F�rg
	,ListPrice *1.25 AS [Pris ink moms]
FROM
	SalesLT.Product