--G�r om 89 till text
SELECT CONVERT(VARCHAR(50),89)

SELECT CONVERT(VARCHAR(50),89)

SELECT CONVERT(VARCHAR(50),GETDATE(),23)--2025-01-20
SELECT CONVERT(VARCHAR(50),GETDATE(),120)--2025-01-20 10:44:46

SELECT CAST(GETDATE() AS DATE)--2025-01-20
SELECT CAST(GETDATE() AS TIME)--10:46:43.1133333
SELECT CAST(GETDATE() AS TIME(0))--10:47:05

SELECT DATEPART(YEAR,GETDATE())--2025
SELECT DATEPART(MONTH,GETDATE())--1

SELECT CAST(GETDATE() AS datetime2)