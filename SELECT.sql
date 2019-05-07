USE nwailes596_cap;

/*Create a SELECT statement that gathers this information: The customer first and last name seperated by a commma; call this cust_name,
the location at which the customer ordered; call this location, the size of pizza they ordered; call this pizza_size, and 
lastly dispaly the price of pizza they just ordered; call this price*/
SELECT CONCAT_WS(", ",c.customer_last_name, c.customer_first_name) AS cust_name,
	l.location_name AS location, oi.order_info_pizza_size AS pizza_size, oi.order_info_price AS price
FROM customers c
	JOIN order_info oi
    ON c.customer_id = oi.customer_id
    JOIN location l
    ON oi.location_id = l.location_id;

/*Create a SELECT statement that tells which store came in with the most revenue. Gather this information: The location name; call it location,
then find the sum of the revenue; call this total_revenue*/
SELECT l.location_name, SUM(oi.order_info_price) AS total_revenue
FROM location l
	JOIN order_info oi
    ON l.location_id = oi.location_id
WHERE l.location_name = "West Broadway"
UNION
SELECT l.location_name, SUM(oi.order_info_price) AS total_revenue
FROM location l
	JOIN order_info oi
	ON l.location_id = oi.location_id
WHERE l.location_name = "Manawa"