-- Database schema for Drewkea
drop table if exists customers cascade;
drop table if exists categories cascade;
drop table if exists products cascade;
drop table if exists orders cascade;
drop table if exists orders_products cascade;
drop table if exists products_categories cascade;

create table customers(
    customer_id  serial primary key,
    customer_first_name varchar(120) not null,
    customer_last_name varchar(120) not null,
    customer_email varchar(120) not null,
    address1 varchar(250) not null,
    city varchar(50) not null,
    state varchar(50) not null,
    zipcode varchar(10) not null
);

create table categories(
    category_id  serial primary key,
    category_name varchar(120) not null
);

create table products(
    product_id  serial primary key,
    product_name varchar(120) not null,
    product_price varchar(250) not null
);

create table orders(
    order_id  serial primary key,
    customer_id int not null references customers(customer_id),
    order_date date not null
);

create table orders_products(
    order_product_id  serial primary key,
    order_id int not null references orders(order_id),
    product_id int not null references products(product_id)
);

create table products_categories(
    product_category_id  serial primary key,
    product_id int not null references products(product_id),
    category_id int not null references categories(category_id)
)