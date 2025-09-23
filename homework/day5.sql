CREATE table books (
    id INT,
    title VARCHAR(100),
    author VARCHAR(100),
    price DECIMAL(10, 2),
    stock INT
);

INSERT into books (id, title, author, price, stock) values
(1, 'The Alchemist', 'Paulo Coelho', 350, 50),
(2, 'Atomic Habits', 'James Clear', 450, 40),
(3, 'The Psychology of Money', 'Morgan Housel', 400, 30),
(4, 'Ikigai', 'Francesc Miralles', 300, 60),
(5, 'Deep Work', 'Cal Newport', 500, 20);

SELECT * FROM books
WHERE price < 450 And stock > 20;

update books
set stock =45,
price = 450
where title = 'Deep Work';

delete from books
where title = 'Ikigai';

SELECT AVG(price) as average_Price,
       COUNT(*) as total_books
       FROM books;

select * from books
order by price DESC
limit 3;       
