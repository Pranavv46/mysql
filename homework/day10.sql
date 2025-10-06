CREATE TABLE authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    author_id INT NOT NULL,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

INSERT INTO authors (author_id, author_name, email) VALUES
(1, 'Chetan Bhagat', 'chetan@example.com'),
(2, 'J.K. Rowling', 'jkrowling@example.com');

INSERT INTO books (book_id, title, author_id) VALUES
(101, '2 States', 1),
(102, 'The 3 Mistakes of My Life', 1),
(201, 'Harry Potter and the Sorcerer''s Stone', 2),
(202, 'Harry Potter and the Chamber of Secrets', 2);
