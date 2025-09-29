    CREATE DATABASE grocery_store;
    USE grocery_store;
    CREATE TABLE products (
        product_id INT primary key,
        product_name VARCHAR(100),
        price DECIMAL(10, 2)
    );

    INSERT INTO products (product_id, product_name, price) VALUES
    (1, 'Apple', 1.20),
    (2, 'Banana', 0.50),
    (3, 'Orange', 0.80),
    (4, 'Mango', 1.50),
    (5, 'Grapes', 2.00);

    ALTER TABLE products ADD COLUMN catagory varchar(50);

    TRUNCATE TABLE products;
    DROP  DATABASE grocery_store;