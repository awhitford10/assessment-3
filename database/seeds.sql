-- Populate Drewkea
--Customers----------------------------------------------------
insert into customers
(customer_first_name, customer_last_name, customer_email, address1, city, state, zipcode)
values
('Danny', 'Devito', 'devi@gmail.com','123 Sunny Philly St', 'Philidelphia','Pennsylvania','15003');

insert into customers
(customer_first_name, customer_last_name, customer_email, address1, city, state, zipcode)
values
('John', 'Travolta', 'johnny@gmail.com','456 Summer St', 'Malibu','California','90210');

insert into customers
(customer_first_name, customer_last_name, customer_email, address1, city, state, zipcode)
values
('Natalie', 'Portman', 'nat.port@harvard.edu','789 Vendetta St', 'Massachusets','Connecticut','01001');

insert into customers
(customer_first_name, customer_last_name, customer_email, address1, city, state, zipcode)
values
('Cher','n/a', 'cher@hotmail.com','1 Believe in life after love Ln', 'Cher','Cher Island','99999');

insert into customers
(customer_first_name, customer_last_name, customer_email, address1, city, state, zipcode)
values
('Bugs', 'Bunny', 'whats@up.doc','001 Acme Blvd', 'Anaheim','California','92801');

----------------------------------------------------------------------------
--Categories
insert into categories(category_name) values ('Kitchen');
insert into categories(category_name) values ('Bath');
insert into categories(category_name) values ('Living');
insert into categories(category_name) values ('Dining');
insert into categories(category_name) values ('Beyond');
----------------------------------------------------------------------------
--Products and their categories
insert into products(product_name, product_price) values('Knife Set', '100.00');
insert into products_categories(product_id, category_id) values('1','1');
insert into products_categories(product_id, category_id) values('1','4');

insert into products(product_name, product_price) values('Bath Tub', '499.99');
insert into products_categories(product_id, category_id) values('2','2');
insert into products_categories(product_id, category_id) values('2','3');

insert into products(product_name, product_price) values('Acme rocket', '10000.00');
insert into products_categories(product_id, category_id) values('3','5');

insert into products(product_name, product_price) values('Dining Table', '675.00');
insert into products_categories(product_id, category_id) values('4','3');
insert into products_categories(product_id, category_id) values('4','4');

insert into products(product_name, product_price) values('Television', '250.00');
insert into products_categories(product_id, category_id) values('5','3');
insert into products_categories(product_id, category_id) values('5','5');

insert into products(product_name, product_price) values('Sink', '75.00');
insert into products_categories(product_id, category_id) values('6','1');
insert into products_categories(product_id, category_id) values('6','2');
----------------------------------------------------------------------------
--Orders and products in orders
insert into orders(customer_id, order_date)
values ((select customer_id from customers where customer_first_name = 'Cher'),'2020-03-05');
insert into orders_products(order_id,product_id) values('1','1');
insert into orders_products(order_id,product_id) values('1','3');
insert into orders_products(order_id,product_id) values('1','4');

insert into orders(customer_id, order_date)
values ((select customer_id from customers where customer_first_name = 'John'),'2019-03-05');
insert into orders_products(order_id,product_id) values('2','3');
insert into orders_products(order_id,product_id) values('2','5');
insert into orders_products(order_id,product_id) values('2','6');

insert into orders(customer_id, order_date)
values ((select customer_id from customers where customer_first_name = 'Natalie'),'2000-05-12');
insert into orders_products(order_id,product_id) values('3','2');
insert into orders_products(order_id,product_id) values('3','3');


insert into orders(customer_id, order_date)
values ((select customer_id from customers where customer_first_name = 'Bugs'),'1975-07-20');
insert into orders_products(order_id,product_id) values('4','1');
insert into orders_products(order_id,product_id) values('4','2');
insert into orders_products(order_id,product_id) values('4','3');


insert into orders(customer_id, order_date)
values ((select customer_id from customers where customer_first_name = 'Danny'),'2020-01-01');
insert into orders_products(order_id,product_id) values('5','4');
insert into orders_products(order_id,product_id) values('5','5');
insert into orders_products(order_id,product_id) values('5','6');




