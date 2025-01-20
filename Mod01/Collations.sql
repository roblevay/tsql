USE master

SELECT * FROM ::fn_helpcollations()--Alla upptänkliga collations
--Sorteringsordning och teckenuppsättning

--Använd gärna FINNISH_SWEDISH_CI_AS
--Skiftlägesokänslig men bryr sig om accenter

SELECT DATABASEPROPERTYEX('Adventureworks', 'Collation')
--SQL_Latin1_General_CP1_CI_AS

DROP TABLE IF EXISTS namn
CREATE TABLE namn
(enamn VARCHAR(50))

INSERT INTO namn VALUES('Öberg')
INSERT INTO namn VALUES('Ålund')
INSERT INTO namn VALUES('Oxenstierna')
INSERT INTO namn VALUES('Ärlig')

SELECT * FROM namn ORDER BY enamn--Fel ordning för svenskar

SELECT * FROM namn ORDER BY enamn
COLLATE FINNISH_SWEDISH_CI_AS--Rätt ordning för svenskar

SELECT * FROM saleslt.customer

UPDATE saleslt.customer
SET Lastname='HArding'
WHERE customerid=11

--Ta fram alla med konstiga stora bokstäver
SELECT * FROM saleslt.customer
WHERE Lastname='HArding'
COLLATE FINNISH_SWEDISH_CS_AS--Skiftlägeskänslig
