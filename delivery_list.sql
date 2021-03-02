CREATE TABLE delivery_list
(delivery_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
order_id INT UNIQUE NOT NULL,
courier_id INT NOT NULL,
date_arrived TIMESTAMP UNIQUE,  # the time when couriers bring ordes to clients
taken VARCHAR(3) NOT NULL,  # it means whether a client's taken its order or not
payment_method VARCHAR(4),
FOREIGN KEY (order_id) REFERENCES orders(order_id),
FOREIGN KEY (courier_id) REFERENCES courier_info(courier_id));




INSERT INTO delivery_list VALUES
(1, 1, 3, '2021-02-26 17:59:15', 'Yes', 'Cash'),
(2, 2, 4, '2021-02-26 18:01:05', 'Yes', 'Card'),
(3, 3, 1, '2021-02-26 18:04:36', 'Yes', 'Cash'),
(4, 4, 2, '2021-02-26 18:03:11', 'Yes', 'Cash'),
(5, 5, 1, '2021-02-26 18:19:56', 'Yes', 'Cash'),
(6, 6, 3, '2021-02-26 18:18:44', 'Yes', 'Card'),
(7, 7, 2, '2021-02-26 18:50:11', 'No', 'NULL'),  # the order's arrived too late
(8, 8, 4, '2021-02-26 18:35:07', 'Yes', 'Card'),
(9, 9, 4, '2021-02-26 18:58:28', 'NO', 'NULL'),   # the order's arrived too late
(10, 10, 3, '2021-02-26 18:36:51', 'Yes', 'Card'),
(11, 11, 2, '2021-02-26 19:10:34', 'Yes', 'Cash'),
(12, 12, 1, NULL, 'NO', 'NULL'),  # the products are out of stock
(13, 13, 2, '2021-02-26 19:17:04', 'Yes', 'Cash'),
(14, 14, 3, '2021-02-26 18:56:17', 'Yes', 'Card'),
(15, 15, 4, '2021-02-26 19:05:29', 'Yes', 'Card');


