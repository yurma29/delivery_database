CREATE TABLE orders
(order_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
customer_id INT NOT NULL,
date_get TIMESTAMP NOT NULL,  # the time when orders are gotten from customers
FOREIGN KEY (customer_id) REFERENCES customers (customer_id));

INSERT INTO orders(customer_id, date_get) VALUES
(1, NOW());
INSERT INTO orders(customer_id, date_get) VALUES
(2, NOW());
INSERT INTO orders(customer_id, date_get) VALUES
(3, NOW());
INSERT INTO orders(customer_id, date_get) VALUES
(4, NOW());
INSERT INTO orders(customer_id, date_get) VALUES
(5, NOW());
INSERT INTO orders(customer_id, date_get) VALUES
(6, NOW());
INSERT INTO orders(customer_id, date_get) VALUES
(7, NOW());
INSERT INTO orders(customer_id, date_get) VALUES
(8, NOW());
INSERT INTO orders(customer_id, date_get) VALUES
(9, NOW());
INSERT INTO orders(customer_id, date_get) VALUES
(10, NOW());
INSERT INTO orders(customer_id, date_get) VALUES
(11, NOW());
INSERT INTO orders(customer_id, date_get) VALUES
(12, NOW());
INSERT INTO orders(customer_id, date_get) VALUES
(13, NOW());
INSERT INTO orders(customer_id, date_get) VALUES
(14, NOW());
INSERT INTO orders(customer_id, date_get) VALUES
(15, NOW());

