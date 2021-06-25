-- Queries go here
select customer_first_name, customer_last_name, customer_email
from customers
where customer_email ilike '%@gmail%';

select order_id, address1, city, state, zipcode from orders
join customers on customers.customer_id = orders.customer_id
where order_date >= '2020-01-01' and order_date < '2021-01-01';

select products.*, category_name from products
join products_categories on products.product_id=products_categories.product_id
join categories on products_categories.category_id=categories.category_id
where category_name='Kitchen';

select customer_first_name, customer_last_name, products.* 
from products
join orders_products on products.product_id = orders_products.product_id
join orders on orders.order_id = orders_products.order_id
join customers on customers.customer_id = orders.customer_id
where customer_first_name='Bugs' and customer_last_name='Bunny';