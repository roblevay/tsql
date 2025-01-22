--String Functions
SELECT UPPER ('SQL Server')--Gör om till versaler
SELECT LOWER ('SQL Server')--Gör om till gemener

SELECT LEFT('SQL Server',5)--Första tecknen
SELECT RIGHT('SQL Server',5)--Sista tecknen

--Kombinera
SELECT LOWER(LEFT('SQL Server',5))--Fem första tecknen i gemener

SELECT SUBSTRING('SQL Server',5,3)--Börja med 5, ta med 3

SELECT CHARINDEX('Q','SQL Server',1)--Var finns detta tecken

SELECT LTRIM('     Pelle')--Inledande blanksteg försvinner