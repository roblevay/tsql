-- Skapa tabell för anställda
--DROP TABLE employees,DROP TABLE salary_updates
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT
);

-- Skapa tabell för löneuppdateringar
CREATE TABLE salary_updates (
    id INT PRIMARY KEY,
    new_salary INT
);

-- Lägg till några rader i employees
INSERT INTO employees (id, name, salary) VALUES (1, 'Alice', 50000);
INSERT INTO employees (id, name, salary) VALUES (2, 'Bob', 60000);
INSERT INTO employees (id, name, salary) VALUES (3, 'Carol', 70000);

-- Lägg till några rader i salary_updates
INSERT INTO salary_updates (id, new_salary) VALUES (1, 55000);
INSERT INTO salary_updates (id, new_salary) VALUES (2, 65000);
INSERT INTO salary_updates (id, new_salary) VALUES (4, 75000); -- Ny anställd


SELECT * FROM Employees
SELECT * FROM salary_updates
-- Använd MERGE för att uppdatera, lägga till och ta bort rader
MERGE INTO employees AS target
USING salary_updates AS source
ON (target.id = source.id)
-- Uppdatera befintliga rader
WHEN MATCHED THEN 
    UPDATE SET target.salary = source.new_salary
-- Lägg till nya rader
WHEN NOT MATCHED BY TARGET THEN 
    INSERT (id, salary) VALUES (source.id, source.new_salary)
-- Ta bort rader som inte finns i salary_updates
WHEN NOT MATCHED BY SOURCE THEN 
    DELETE;
