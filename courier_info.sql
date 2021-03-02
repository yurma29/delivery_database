CREATE TABLE courier_info
(courier_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(35) NOT NULL,
phone_number VARCHAR(20) NOT NULL,
delivery_type VARCHAR(5) NOT NULL);

INSERT INTO courier_info(first_name, last_name, phone_number, delivery_type) VALUES
('John', 'Rython', '+ 1 408 655 0954', 'foot'),
('Kate', 'Looran', '+ 1 408 743 0146', 'car'),
('Bob', 'Kolaris', '+ 1 408 107 7798', 'car'),
('Michael', 'Frontal', '+ 1 408 566 5516', 'car');
