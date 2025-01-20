SELECT
	*
FROM--Fullt kvalificerade namnet
	adventureworks	.SalesLT	.Customer
--	Databas			.schema		.tabell

SELECT
	*
FROM
	adventureworks.dbo.ErrorLog

SELECT * FROM ErrorLog--dbo schemat är default

SELECT
	*
FROM
	adventureworks.dbo.ErrorLog;--Semikolon för tydlighets skull
GO
--Använd kvalificerat namn
CREATE PROCEDURE dbo.myproc AS PRINT 'hello'