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
INSERT INTO fotbollslag VALUES (3,99,'IFK Göteborg')

SELECT * FROM stader
SELECT * FROM fotbollslag

--Ta fram städer och fotbollslag
SELECT
	*
FROM
	stader AS s INNER JOIN fotbollslag AS f
	ON s.stadid=f.stadid


--Ta fram ALLA städer och ev tillhörande fotbollslag
SELECT
	*
FROM
	stader AS s LEFT OUTER JOIN fotbollslag AS f
	ON s.stadid=f.stadid

--Ta fram ALLA fotbollslag och eventuellt tillhörande städer
SELECT
	*
FROM
	stader AS s RIGHT OUTER JOIN fotbollslag AS f
	ON s.stadid=f.stadid

--Ta fram ALLA städer och ALLA fotbollslag oavsett kopplingar
SELECT
	*
FROM
	stader AS s FULL OUTER JOIN fotbollslag AS f
	ON s.stadid=f.stadid