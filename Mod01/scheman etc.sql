SELECT
	*
FROM--Fullt kvalificerade namnet
	adventureworks	.SalesLT	.Customer
--	Databas			.schema		.tabell

SELECT
	*
FROM
	adventureworks.dbo.ErrorLog

SELECT * FROM ErrorLog--dbo schemat �r default

SELECT
	*
FROM
	adventureworks.dbo.ErrorLog;--Semikolon f�r tydlighets skull
GO
--Anv�nd kvalificerat namn
CREATE PROCEDURE dbo.myproc AS PRINT 'hello'