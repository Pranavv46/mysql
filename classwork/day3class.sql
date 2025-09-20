CREATE TABLE products (
    product_id INT,
    product_name VARCHAR(100),
    product_category VARCHAR(100),
    product_price DECIMAL(10, 2),
    stock INT
);

Insert into products (product_id, product_name, product_category, product_price, stock) values
(1, 'Laptop', 'Electronics', 999.99, 50),
(2, 'Smartphone', 'Electronics', 699.99, 150),
(3, 'Desk Chair', 'Furniture', 89.99, 200),
(4, 'Notebook', 'Stationery', 2.99, 500),
(5, 'Pen', 'Stationery', 0.99, 1000
);

select distinct product_category from products;

select * from products
where product_price < 500;

select * from products
where stock >1000;

select product_name , product_price from products
order by product_price DESC;

SELECT 
    product_name, 
    product_price * 1.18 AS price_with_tax
FROM products;