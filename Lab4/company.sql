USE company;

CREATE TABLE IF NOT EXISTS invoice (
    invoice_id INT PRIMARY KEY,
    customer_id INT,
    orders_id INT,
    invoice_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    total_amount DECIMAL(10, 2),
    status VARCHAR(20) DEFAULT 'Paid',
    FOREIGN KEY (orders_id) REFERENCES orders(orders_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

ALTER TABLE customer MODIFY email VARCHAR(100) UNIQUE;
ALTER TABLE product MODIFY amount INT DEFAULT 0;

SELECT  FROM customer ORDER BY last_name;

SELECT DISTINCT manufacture FROM product ORDER BY manufacture;

SELECT product_name, manufacture, category, product_type, price 
FROM product 
WHERE manufacture = 'DELL' 
ORDER BY product_name;

SELECT first_name, last_name, gender, birth_date, phone 
FROM customer 
WHERE gender = 'Female' 
AND birth_date BETWEEN '1990-01-01' AND '2000-12-31'
ORDER BY last_name;

SELECT  FROM product 
WHERE category = 'Laptop' AND description LIKE '%512%GB%';

SELECT  FROM product 
WHERE (category = 'Laptop' OR category = 'Desktop')
AND (description LIKE '%512%GB%' OR description LIKE '%1%TB%');

SELECT  FROM invoice WHERE customer_id IS NULL;
