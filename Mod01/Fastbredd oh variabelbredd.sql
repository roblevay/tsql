--Fastbredd
DECLARE 
	@var1	CHAR(50)	='Hej'
	,@var2	CHAR(50)	=' p� dig'
SELECT @var1+@var2
GO
--Hej                                                p� dig                                           

--Variabelbredd
DECLARE 
	@var1	VARCHAR(50)	='Hej'
	,@var2	VARCHAR(50)	=' p� dig'
SELECT @var1+@var2
GO
--Hej p� dig