CREATE DATABASE library;
USE library;

CREATE TABLE books (
    id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(100),
    year INT,
    price DECIMAL(8,2)
);

INSERT INTO books (id, title, author, year, price) VALUES
(1, 'Clean Code', 'Robert C. Martin', 2008, 650.00),
(2, 'The Pragmatic Programmer', 'Andrew Hunt', 1999, 720.00),
(3, 'Python Crash Course', 'Eric Matthes', 2015, 550.00),
(4, 'Introduction to Algorithms', 'Thomas Cormen', 2009, 1200.00),
(5, 'Deep Learning', 'Ian Goodfellow', 2016, 950.00),
(6, 'Learning SQL', 'Alan Beaulieu', 2009, 400.00),
(7, 'Automate the Boring Stuff', 'Al Sweigart', 2015, 450.00),
(8, 'Head First Python', 'Paul Barry', 2016, 380.00);

-- Books priced above 500
SELECT * FROM books WHERE price > 500;

-- All books sorted by price, highest first
SELECT * FROM books ORDER BY price DESC;

-- Total number of books
SELECT COUNT(*) AS total_books FROM books;

-- Update price of one book
UPDATE books SET price = 500.00 WHERE id = 6;