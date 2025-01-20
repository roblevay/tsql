DECLARE 
	@tal1	INT=1
	,@tal2	decimal(10,2)=1--Max 10 tecken, varav 2 decimaler
SELECT 
	@tal1 AS Heltal,@tal2 AS Demimaltal
--Heltal	Demimaltal
--	1		1.00

--INTEGER DIVISION eller heltalsdivision
SELECT 99/100-->0
SELECT 99/100*100-->0

--Gör såhär för att undvika detta
SELECT 99.0/100-->0.990000