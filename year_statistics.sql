CREATE TABLE year_statistics
(id_month INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
month_name VARCHAR(10) UNIQUE NOT NULL,
amount_of_orders INT NOT NULL,  # total amount of orders per month
couriers_shifts_per_month INT NOT NULL,  # number of the shifts in total for all the courier per month
average_check FLOAT NOT NULL); # average check for 1 customer in the current month

INSERT INTO year_statistics VALUES
(NULL,'January', 350, 120, 24.6),
(NULL,'February', 211, 88, 18.0),
(NULL,'March', 298, 101, 23.5),
(NULL,'April', 312, 105, 22.0),
(NULL,'May', 405, 121, 22.3),
(NULL,'June', 401, 121, 16.9),
(NULL,'July', 346, 118, 17.9),
(NULL,'August', 318, 117, 20.02),
(NULL,'September', 377, 115, 21.5),
(NULL,'October', 385, 119, 22.1),
(NULL,'November', 381, 120, 23.6),
(NULL,'December', 429, 121, 24.56);



