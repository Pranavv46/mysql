CREATE DATABASE BookStoreDB;
USE BookStoreDB;
CREATE TABLE author (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(100),
    country VARCHAR(100)
);


INSERT INTO author (author_id, author_name, country) VALUES
(1, 'J.K. Rowling', 'UK'),
(2, 'George R.R. Martin', 'USA'),
(3, 'Haruki Murakami', 'Japan'),
(4, 'Isabel Allende', 'Chile'),
(5, 'Chinua Achebe', 'Nigeria');

CREATE TABLE book (
    book_id INT PRIMARY KEY,
    title VARCHAR(200),
    price DECIMAL(10, 2),
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES author(author_id)
);

INSERT INTO book (book_id, title, price, author_id) VALUES
(1, 'Harry Potter and the Philosopher''s Stone', 19.99, 1),
(2, 'A Game of Thrones', 22.50, 2),
(3, 'Norwegian Wood', 15.00, 3),
(4, 'The House of the Spirits', 18.75, 4),
(5, 'Things Fall Apart', 12.00, 5);


alter TABLE book ADD COLUMN published_year INT;
TRUNCATE TABLE book;
DROP DATABASE BookStoreDB;