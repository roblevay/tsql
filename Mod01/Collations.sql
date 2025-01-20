USE master

SELECT * FROM ::fn_helpcollations()--Alla uppt�nkliga collations
--Sorteringsordning och teckenupps�ttning

--Anv�nd g�rna FINNISH_SWEDISH_CI_AS
--Skiftl�gesok�nslig men bryr sig om accenter

SELECT DATABASEPROPERTYEX('Adventureworks', 'Collation')
--SQL_Latin1_General_CP1_CI_AS

DROP TABLE IF EXISTS namn
CREATE TABLE namn
(enamn VARCHAR(50))

INSERT INTO namn VALUES('�berg')
INSERT INTO namn VALUES('�lund')
INSERT INTO namn VALUES('Oxenstierna')
INSERT INTO namn VALUES('�rlig')

SELECT * FROM namn ORDER BY enamn--Fel ordning f�r svenskar

SELECT * FROM namn ORDER BY enamn
COLLATE FINNISH_SWEDISH_CI_AS--R�tt ordning f�r svenskar

SELECT * FROM saleslt.customer

UPDATE saleslt.customer
SET Lastname='HArding'
WHERE customerid=11

--Ta fram alla med konstiga stora bokst�ver
SELECT * FROM saleslt.customer
WHERE Lastname='HArding'
COLLATE FINNISH_SWEDISH_CS_AS--Skiftl�gesk�nslig
