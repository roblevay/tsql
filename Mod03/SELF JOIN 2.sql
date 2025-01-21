-- Skapa Employees tabellen och fyll den med data
CREATE TABLE Employees (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    DeptID INT
);

INSERT INTO Employees (ID, Name, DeptID)
VALUES
(1, 'Alice', 1),
(2, 'Bob', 2),
(3, 'Charlie', 1),
(4, 'David', 3),
(5, 'Emily', NULL),
(6, 'Fiona', 2),
(7, 'George', 1),
(8, 'Hannah', NULL),
(9, 'Ivan', 3),
(10, 'Pelle', 2);

SELECT * FROM Employees

--Ta med alla från samma avdelning som Bob tillhör
SELECT
	emp2.*
FROM
	Employees AS emp1 INNER JOIN Employees AS emp2
	ON emp1.DeptID=emp2.DeptID
	WHERE emp1.Name='Bob' AND emp2.Name <>'Bob'
