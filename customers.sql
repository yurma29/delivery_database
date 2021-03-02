CREATE TABLE customers
(customer_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(35) NOT NULL,
phone_number VARCHAR(20) NOT NULL,
district VARCHAR(15) NOT NULL,
street VARCHAR(25) NOT NULL,
house INT NOT NULL,
apartment INT NOT NULL);


INSERT INTO customers(first_name, last_name, phone_number, district, street, house, apartment) VALUES
('Penny', 'Smith', '+ 1 416 572 3771', 'South', 'First Avenue', 1, 10),
('Randy', 'Brown', '+ 1 416 568 8452', 'West', 'Spring St', 2, 35),
('Oliver', 'Thompson', '+ 1 416 782 5648', 'East', 'Five Avenue', 77, 14),
('James', 'Twist', '+ 1 416 752 1224', 'South', 'Corn St', 24, 89),
('Hellen', 'Bellora', '+ 1 416 555 4568', 'South', 'First Avenue', 11, 85),
('Kate', 'Evans', '+ 1 416 321 3211', 'West', 'Spring St', 123, 52),
('Jennifer', 'Radriges', '+ 1 416 321 1232', 'West', 'Roll St', 76, 44),
('Mario', 'Gordon', '+ 1 416 122 4554', 'East', 'Five Avenue', 21, 91),
('Bella', 'Lorenson', '+ 1 416 758 1667', 'North', 'Green Avenue', 23, 67),
('Erica', 'Visputchu', '+ 1 416 765 8582', 'South', 'First Avenue', 62, 44),
('Henry', 'Smith', '+ 1 416 657 5528', 'South', 'Brown St', 15, 56),
('Oscar', 'Rild', '+ 1 416 624 3643', 'South', 'First Avenue', 5, 13),
('William', 'Frankston', '+ 1 416 303 8181', 'North', 'Cascade Rd', 18, 88),
('Peter', 'Hall', '+ 1 416 466 7562', 'North', 'Cascade Rd', 17, 7),
('Ada', 'Watson', '+ 1 416 114 7812', 'South', 'Elma St', 18, 9);

