Create table mobiles (
    id INT,
    brand VARCHAR(50),
    model VARCHAR(50),
    price DECIMAL(10, 2),
    stock INT
);

Insert into mobiles (id, brand, model, price, stock) values
(1, 'Samsung', 'Galaxy M14', 12000, 30),
(2, 'Redmi', 'Note 12', 15000, 25),
(3, 'Realme', 'Narzo 50', 13000, 20),
(4, 'Samsung', 'Galaxy A23', 18000, 10
);

select * from mobiles
where price > 13000 or stock < 15;

update mobiles
set stock = stock + 5,
price = price -500
where model = 'Narzo 50';

delete from mobiles
where id = 2;

select MIN(price) as Lowest_Price,
       MAX(price) as Highest_Price
       from mobiles;

select SUM(stock) as Total_Stock
from mobiles;

select * from mobiles
order by price DESC
limit 2;