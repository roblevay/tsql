--Unicode NCHAR och NVARCHAR

--CHAR och VARCHAR tar upp en byte per tecken
--256 kombinationer

--NCHAR och NVARCHAR, unicode, tar upp två byte per tecken
--256x256~65.000  kombinationer
--Nu kan jag lagra i stort sett alla tecken

CREATE TABLE sprak
(namn VARCHAR(50))

--Lägg till ukrainska
INSERT INTO sprak VALUES ('Україна')

SELECT * FROM sprak--???????

--Skapa om
DROP TABLE IF EXISTS sprak
CREATE TABLE sprak
(namn NVARCHAR(50))--Unicode

--Lägg till ukrainska
INSERT INTO sprak VALUES (N'Україна')
SELECT * FROM sprak--Україна
