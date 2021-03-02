CREATE TABLE orders_products
(order_id INT NOT NULL,
product_id INT NOT NULL,
quantity INT NOT NULL,
PRIMARY KEY (order_id, product_id),
FOREIGN KEY (order_id) REFERENCES orders(order_id),
FOREIGN KEY (product_id) REFERENCES products(product_id));

INSERT INTO orders_products VALUES
(1, 1, 2), (1, 4, 1), (1, 10, 1),
(2, 4, 1), (2, 5, 1),
(3, 3, 1),
(4, 7, 2), 
(5, 2, 1), (5, 3, 1),
(6, 8, 3),
(7, 1, 1), (7, 6, 4),
(8, 1, 2),
(9, 2, 1), (9, 3, 1),
(10, 1, 2), (10, 2, 1),
(12, 5, 2), (12, 10, 1),
(13, 4, 2),
(14, 5, 1),
(15, 8, 1), (15, 7, 2);
