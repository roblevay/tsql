--NULL betyder värde saknas
--Hur uppstår null-värden?
CREATE TABLE namn
(
fornamn		VARCHAR(50)
,efternamn	VARCHAR(50)
)

INSERT INTO namn VALUES ('Kalle', 'Johansson')
INSERT INTO namn (fornamn) VALUES ('Stina')
SELECT * FROM namn

SELECT NULL+10--> NULL

SELECT
	name
	,Color
FROM
	SalesLT.Product
--WHERE color=NULL		--Funkar inte
WHERE Color IS NULL		--Funkar

