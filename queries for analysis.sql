USE sushi_restaurant;

# Descending sort by the amount of orders per month
SELECT month_name, amount_of_orders
FROM year_statistics
ORDER BY amount_of_orders DESC;

# The sum of the amount of orders for one year
SELECT SUM(amount_of_orders) AS orders_per_year FROM year_statistics;

# The maximum amount of orders for one month
SELECT month_name, amount_of_orders FROM year_statistics
WHERE amount_of_orders = (SELECT MAX(amount_of_orders)
FROM year_statistics);

# How many orders each courier has delivered to a client
SELECT courier_id, COUNT(order_id)
From delivery_list
WHERE date_arrived IS NOT NULL
GROUP BY courier_id;

# Information about the customers who live in South district
SELECT * FROM Customers
WHERE district IN ('South');

# Information about the orders that have not been taken
SELECT * FROM delivery_list
WHERE taken NOT IN ('Yes');

# Find out products from the menu that have been ordered
SELECT menu_name FROM products
WHERE EXISTS
(SELECT * FROM orders_products WHERE orders_products.product_id = products.product_id);

# Find out products from the menu that have not been ordered
SELECT menu_name FROM products
WHERE NOT EXISTS
(SELECT * FROM orders_products WHERE orders_products.product_id = products.product_id);

# Find the frequency of districts among the clients 
SELECT district 
FROM customers
GROUP BY district
ORDER BY COUNT(district) DESC;

# Get a list of customers and couriers information
SELECT 'Customer' AS category, first_name, last_name, phone_number
FROM customers
UNION
SELECT 'Employee' AS category, first_name, last_name, phone_number
FROM courier_info;

# Check the details for each order
SELECT orders_products.order_id, products.menu_name, quantity, ROUND(price*quantity, 2) AS total_price
FROM orders_products
INNER JOIN products ON orders_products.product_id = products.product_id
ORDER BY order_id, quantity;

# The information about orders and delivery details
SELECT *, SEC_TO_TIME(TIMESTAMPDIFF(second, date_get, date_arrived))  AS time_of_delivery
FROM orders
NATURAL JOIN delivery_list;

# The table show us all the available districts for every courier on car 
SELECT DISTINCT courier_info.courier_id, customers.district
FROM courier_info
CROSS JOIN customers WHERE courier_info.delivery_type = 'car'
ORDER BY courier_id;

# The information about a customer's name and their number of the order
SELECT customers.first_name, customers.last_name,  customers.phone_number, orders.order_id
FROM customers
LEFT JOIN orders ON customers.customer_id = orders.customer_id;