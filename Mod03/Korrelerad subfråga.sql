-- Skapa tabeller och fyll med data
CREATE TABLE products (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    supplier_id INT,
    price INT
);

CREATE TABLE suppliers (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

-- Fyll products med 10 rader
INSERT INTO products (id, name, supplier_id, price) VALUES
(1, 'Apple', 1, 2),
(2, 'Banana', 1, 3),
(3, 'Carrot', 2, 3),
(4, 'Donut', 2, 4),
(5, 'Egg', 3, 5),
(6, 'Fish', 3, 6),
(7, 'Grapes', 4, 3),
(8, 'Honey', 4, 4),
(9, 'Ice Cream', 5, 5),
(10, 'Juice', 5, 6);

-- Fyll suppliers med 5 rader
INSERT INTO suppliers (id, name) VALUES
(1, 'Supplier1'),
(2, 'Supplier2'),
(3, 'Supplier3'),
(4, 'Supplier4'),
(5, 'Supplier5')

-- Korrelerad subfråga för att hitta produkter som är 
--dyrare än genomsnittet från samma leverantör
SELECT
	*
FROM
	products AS p1
WHERE
	price>
		(SELECT
			AVG(Price)
		FROM
			products AS p2
		WHERE
			p1.supplier_id=p2.supplier_id)





--Rensa
DROP TABLE products
DROP TABLE suppliers