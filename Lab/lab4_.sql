USE beauty_shop;

ALTER TABLE products MODIFY name VARCHAR(100) UNIQUE;

ALTER TABLE products MODIFY price DECIMAL(10, 2) DEFAULT 0.00;


SELECT * FROM products ORDER BY name;

SELECT DISTINCT brand FROM products ORDER BY brand;

SELECT * FROM products WHERE price > 500;
