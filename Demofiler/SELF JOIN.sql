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

--Ta med alla fr�n samma avdelning som Bob tillh�r
SELECT
	t1.*	--Ta med alla fr�n v�nstra
FROM	
	Employees AS t1 INNER JOIN Employees AS t2
	ON t1.DeptID=t2.DeptID
	WHERE t2.Name='Bob'--Alla i h�gra �r bob
	AND t1.Name <>'Bob'--Bob sj�lv ska inte vara med

-- Self Join f�r att hitta anst�llda i samma avdelning som Pelle
SELECT E2.Name 
FROM Employees E1
JOIN Employees E2 ON E1.DeptID = E2.DeptID
WHERE E1.Name = 'Pelle' AND E2.Name != 'Pelle';
