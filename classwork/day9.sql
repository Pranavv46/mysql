CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100)
);

CREATE TABLE borrowers (
    borrower_id INT PRIMARY KEY,
    name VARCHAR(100),
    book_id INT,
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);

INSERT INTO books (book_id, title) VALUES
(1, 'The Alchemist'),
(2, 'The Power of Now'),
(3, 'Think and Grow Rich'),
(4, 'Clean Code');

INSERT INTO borrowers (borrower_id, name, book_id) VALUES
(101, 'Alice', 1),
(102, 'Bob', 2),
(103, 'Charlie', NULL);

SELECT b.title AS Book_Title, br.name AS Borrower_Name
FROM books b
LEFT JOIN borrowers br
ON b.book_id = br.book_id;

SELECT br.name AS Borrower_Name, b.title AS Book_Title
FROM borrowers br
LEFT JOIN books b
ON br.book_id = b.book_id;

SELECT b.title AS Book_Title
FROM books b
LEFT JOIN borrowers br
ON b.book_id = br.book_id
WHERE br.book_id IS NULL;

SELECT br.name AS Borrower_Name, b.title AS Book_Title
FROM borrowers br
LEFT JOIN books b
ON br.book_id = b.book_id;
