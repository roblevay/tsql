--Gör om en datatyp till en annan
--gör om decimal till integer
SELECT CAST(12.00 AS INT)-->12

--Implicit konvertering
SELECT 10+13.0-->23.0

--Gör om integer till decimal
SELECT CAST(12 AS decimal(10,2))-->12.00

--Detta funkar inte
SELECT 'Jag väger '+89 ' kg'

--Detta funkar
SELECT '12'+10-->22

--Gör om talet till text
--Detta funkar inte
SELECT 'Jag väger '+CAST(89 AS VARCHAR(50)) +' kg'