--String Functions
SELECT UPPER ('SQL Server')--G�r om till versaler
SELECT LOWER ('SQL Server')--G�r om till gemener

SELECT LEFT('SQL Server',5)--F�rsta tecknen
SELECT RIGHT('SQL Server',5)--Sista tecknen

--Kombinera
SELECT LOWER(LEFT('SQL Server',5))--Fem f�rsta tecknen i gemener

SELECT SUBSTRING('SQL Server',5,3)--B�rja med 5, ta med 3

SELECT CHARINDEX('Q','SQL Server',1)--Var finns detta tecken

SELECT LTRIM('     Pelle')--Inledande blanksteg f�rsvinner