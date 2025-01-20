--Fastbredd
DECLARE 
	@var1	CHAR(50)	='Hej'
	,@var2	CHAR(50)	=' på dig'
SELECT @var1+@var2
GO
--Hej                                                på dig                                           

--Variabelbredd
DECLARE 
	@var1	VARCHAR(50)	='Hej'
	,@var2	VARCHAR(50)	=' på dig'
SELECT @var1+@var2
GO
--Hej på dig