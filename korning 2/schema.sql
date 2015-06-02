DROP TABLE IF EXISTS sales;
DROP TABLE IF EXISTS employees;

CREATE TABLE sales (
  id SERIAL PRIMARY KEY,
  employee VARCHAR(255),
  customer_and_account_no VARCHAR(255),
  product_name VARCHAR(255),
  sale_date VARCHAR(255),
  sale_amount VARCHAR(255),
  units_sold INTEGER,
  invoice_no INTEGER,
  invoice_frequency VARCHAR(255)
);

CREATE TABLE employees (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255)
)
--
-- CREATE TABLE customer_and_account_no (
--   id SERIAL PRIMARY KEY,
--   customer VARCHAR(255),
--   account_no VARCHAR(255)
-- )
--
-- CREATE TABLE product_name (
--   id SERIAL PRIMARY KEY,
--   product_name VARCHAR(255)
-- )
--
-- CREATE TABLE sale_date (
--   id SERIAL PRIMARY KEY,
--   sale_date VARCHAR(255)
-- )
