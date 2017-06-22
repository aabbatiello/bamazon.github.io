CREATE database bamazon_dB;	

Use bamazon_db;

CREATE TABLE products (
		item_id INT NOT NULL,
	    product_name VARCHAR (25) NOT NULL,
		department_name  VARCHAR(25) NOT NULL,
		price DECIMAL(10,2) NOT NULL,
		stock_quantity INT NOT NULL,
		PRIMARY KEY (item_id)
);


INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUES (
101,
'Toy Machine',
'Decks',
45.99,
16);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUES (
102,
'Anti-Hero',
'Decks',
50.00,
25);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUES (
103,
'Thunder',
'Trucks',
35.00,
20);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUES (
104,
'Independent',
'Trucks',
45.00,
30);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUES (
105,
'Bones',
'Bearings',
25.00,
);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUES (
106,
'Spitfire',
'Wheels',
32.95,
16);