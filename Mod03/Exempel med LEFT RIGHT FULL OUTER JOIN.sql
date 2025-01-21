USE tempdb

CREATE TABLE stader
(
stadid	INT
,namn	VARCHAR(50)
)

CREATE TABLE fotbollslag
(
lagid	INT
,stadid	INT
,nam	VARCHAR(50)
)

INSERT INTO stader VALUES (1,'Karlsborg')
INSERT INTO stader VALUES (2,'Stockholm')
INSERT INTO stader VALUES (3,'Halmstad')

TRUNCATE TABLE fotbollslag
INSERT INTO fotbollslag VALUES(1,1,'Assi IF')
INSERT INTO fotbollslag VALUES(2,3,'IS Halmia')
INSERT INTO fotbollslag VALUES (3,99,'IFK G�teborg')

SELECT * FROM stader
SELECT * FROM fotbollslag

--Ta fram st�der och fotbollslag
SELECT
	*
FROM
	stader AS s INNER JOIN fotbollslag AS f
	ON s.stadid=f.stadid


--Ta fram ALLA st�der och ev tillh�rande fotbollslag
SELECT
	*
FROM
	stader AS s LEFT OUTER JOIN fotbollslag AS f
	ON s.stadid=f.stadid

--Ta fram ALLA fotbollslag och eventuellt tillh�rande st�der
SELECT
	*
FROM
	stader AS s RIGHT OUTER JOIN fotbollslag AS f
	ON s.stadid=f.stadid

--Ta fram ALLA st�der och ALLA fotbollslag oavsett kopplingar
SELECT
	*
FROM
	stader AS s FULL OUTER JOIN fotbollslag AS f
	ON s.stadid=f.stadid