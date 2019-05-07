USE nwailes596_cap;

DROP TABLE IF EXISTS customers;
CREATE TABLE customers
(
	customer_id 				INT 			AUTO_INCREMENT,
    customer_first_name			VARCHAR(45),
    customer_last_name 			VARCHAR(45),
    CONSTRAINT customers_pk PRIMARY KEY(customer_id)
);

DROP TABLE IF EXISTS location;
CREATE TABLE location
(
	location_id 				INT 			AUTO_INCREMENT,
    location_name 				VARCHAR(45),
    location_address 			VARCHAR(45),
    CONSTRAINT location_pk PRIMARY KEY(location_id)
);

DROP TABLE IF EXISTS order_info;
CREATE TABLE order_info
(
	order_info_id 				INT 			AUTO_INCREMENT,
    order_info_pizza_size 		VARCHAR(45),
    order_info_pizza_toppings	VARCHAR(45),
    order_info_pizza_crust 		VARCHAR(45),
    order_info_type 			VARCHAR(45),
    order_info_price			DECIMAL(10, 2),
	customer_id 				INT 			NOT NULL,
    location_id 				INT 			NOT NULL,
    CONSTRAINT order_info_pk PRIMARY KEY(order_info_id),
    CONSTRAINT order_info_fk
		FOREIGN KEY (customer_id)
        REFERENCES customers (customer_id),
	CONSTRAINT order_info_fk2
		FOREIGN KEY (location_id)
        REFERENCES location (location_id)
);

INSERT INTO customers (customer_first_name, customer_last_name)
VALUES("Nick" , "Wailes");
INSERT INTO customers (customer_first_name, customer_last_name)
VALUES("MacKenzie", "Melton");
INSERT INTO customers (customer_first_name, customer_last_name)
VALUES("Taylor", "Abel");
INSERT INTO customers (customer_first_name, customer_last_name)
VALUES("Shawn", "Flanery");
INSERT INTO customers (customer_first_name, customer_last_name)
VALUES("Robert", "Donner");
INSERT INTO customers (customer_first_name, customer_last_name)
VALUES("Bobby", "Jones");

INSERT INTO location(location_name, location_address)
VALUES("West Broadway", "225 W Broadway");
INSERT INTO location(location_name, location_address)
VALUES("Manawa", "610 Veterans Memorial Hwy");

INSERT INTO order_info
(order_info_pizza_size, order_info_pizza_toppings, order_info_pizza_crust,order_info_type, order_info_price, customer_id, location_id)
VALUES("Mini", "Beef", "Hand-Tossed", "Pick-Up", 4.70, 1, 2);
INSERT INTO order_info
(order_info_pizza_size, order_info_pizza_toppings, order_info_pizza_crust,order_info_type, order_info_price, customer_id, location_id)
VALUES("Medium", "Hawaiian", "Hand-Tossed", "Dine-In", 13.79, 2, 2);
INSERT INTO order_info
(order_info_pizza_size, order_info_pizza_toppings, order_info_pizza_crust,order_info_type, order_info_price, customer_id, location_id)
VALUES("Small", "Special", "Thin", "Delivery", 16.41, 3, 1);
INSERT INTO order_info
(order_info_pizza_size, order_info_pizza_toppings, order_info_pizza_crust,order_info_type, order_info_price, customer_id, location_id)
VALUES("Large", "Cheese", "Hand-Tossed", "Dine-In", 15.93, 4, 2);
INSERT INTO order_info
(order_info_pizza_size, order_info_pizza_toppings, order_info_pizza_crust,order_info_type, order_info_price, customer_id, location_id)
VALUES("Medium", "Taco", "Thin", "Delivery", 18.23, 5, 1);
INSERT INTO order_info
(order_info_pizza_size, order_info_pizza_toppings, order_info_pizza_crust,order_info_type, order_info_price, customer_id, location_id)
VALUES("Small", "Hawaiian", "Hand-Tossed", "Dine-In", 12.29, 6, 1);




    
