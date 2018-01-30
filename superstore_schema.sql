CREATE DATABASE IF NOT EXISTS superstore_schema;

USE superstore_schema;

DROP TABLE IF EXISTS Orders; 

CREATE TABLE IF NOT EXISTS orders 
(
  row_id varchar(255),
  order_id varchar(255), 
  order_date date, 
  ship_date date, 
  ship_mode varchar(255),
  customer_id varchar(255), 
  customer_name varchar(255),
  segment varchar(100),
  country varchar(100),
  city varchar(100),
  state varchar(100),
  postal_code varchar(100),
  region varchar(100),
  product_id varchar(100), 
  category varchar(100),
  sub_category varchar(100),
  product_name varchar(100),
  sales int, 
  quantity int, 
  discount float, 
  profit int, 
  PRIMARY KEY (order_id)
);
