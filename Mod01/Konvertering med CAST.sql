--G�r om en datatyp till en annan
--g�r om decimal till integer
SELECT CAST(12.00 AS INT)-->12

--Implicit konvertering
SELECT 10+13.0-->23.0

--G�r om integer till decimal
SELECT CAST(12 AS decimal(10,2))-->12.00

--Detta funkar inte
SELECT 'Jag v�ger '+89 ' kg'

--Detta funkar
SELECT '12'+10-->22

--G�r om talet till text
--Detta funkar inte
SELECT 'Jag v�ger '+CAST(89 AS VARCHAR(50)) +' kg'