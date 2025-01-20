--CROSS JOIN är upptänkliga kombinationer
--mellan två tabeller
SELECT
	*
FROM
	Departments CROSS JOIN Employees--5x10=50 rader

--Resultatet kan bli enormt
SELECT
	*
FROM
	SalesLT.Customer CROSS JOIN SalesLT.Product

CREATE TABLE mskadisar
(
namn	VARCHAR(50)
)

CREATE TABLE kskadisar
(
namn	VARCHAR(50)
)

INSERT INTO mskadisar VALUES ('Alexander Skarsgård')
INSERT INTO mskadisar VALUES ('Joel Kinnaman')
INSERT INTO mskadisar VALUES ('Micke Persbrandt')

INSERT INTO kskadisar VALUES ('Felicia Danielsson')
INSERT INTO kskadisar VALUES ('Lia Carledhed')
INSERT INTO kskadisar VALUES ('Alicia Vikander')

--Casting
SELECT
	*
FROM
	mskadisar CROSS JOIN kskadisar