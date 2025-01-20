-- Skapa tabeller och fyll med data
CREATE TABLE products (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    supplier_id INT,
    price INT
);

CREATE TABLE suppliers (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    avg_cost INT
);

-- Fyll products med 10 rader
INSERT INTO products (id, name, supplier_id, price) VALUES
(1, 'Apple', 1, 2),
(2, 'Banana', 2, 1),
(3, 'Carrot', 3, 3),
(4, 'Donut', 4, 5),
(5, 'Egg', 5, 4),
(6, 'Fish', 6, 10),
(7, 'Grapes', 7, 3),
(8, 'Honey', 8, 7),
(9, 'Ice Cream', 9, 6),
(10, 'Juice', 10, 4);

-- Fyll suppliers med 10 rader
INSERT INTO suppliers (id, name, avg_cost) VALUES
(1, 'Supplier1', 2),
(2, 'Supplier2', 4),
(3, 'Supplier3', 5),
(4, 'Supplier4', 6),
(5, 'Supplier5', 3),
(6, 'Supplier6', 9),
(7, 'Supplier7', 1),
(8, 'Supplier8', 4),
(9, 'Supplier9', 8),
(10, 'Supplier10', 7);

-- Multi-valued subfråga för att hitta produkter som levereras av leverantörer med en avg_cost under 5
SELECT name, price
FROM products
WHERE supplier_id IN (SELECT id FROM suppliers WHERE avg_cost < 5);


--Rensa
DROP TABLE products
DROP TABLE suppliers