CREATE TABLE books (
    book_id INT,
    title VARCHAR(200),
    author VARCHAR(100),
    price DECIMAL(10,2),
    stock INT
);

Insert into books (book_id,title,author,price,stock)values
( 1,'Learn SQL','john smith',400,10),
(2,'Mastering Python','jane Doe',600,5),
(3,'HTML and CSS basics','Alan Webb',300,8
);

update books 
set price = price + 50,
stock= stock + 2
where title = 'Learn SQL';

update books
set stock = stock - 2
where price > 500;

delete from books
where book_id = 3;
