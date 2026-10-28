
CREATE DATABASE IF NOT EXISTS gqldemo;
USE gqldemo;

CREATE TABLE IF NOT EXISTS authors (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    country VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS books (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    year INT,
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(id)
);

INSERT INTO authors (name, country)
SELECT 'Asha Patel', 'India'
WHERE NOT EXISTS (
    SELECT 1 FROM authors WHERE name = 'Asha Patel'
);

INSERT INTO authors (name, country)
SELECT 'Ravi Kumar', 'India'
WHERE NOT EXISTS (
    SELECT 1 FROM authors WHERE name = 'Ravi Kumar'
);

INSERT INTO books (title, year, author_id)
SELECT 'GraphQL Basics', 2022, id
FROM authors
WHERE name = 'Asha Patel'
AND NOT EXISTS (
    SELECT 1 FROM books WHERE title = 'GraphQL Basics'
);

INSERT INTO books (title, year, author_id)
SELECT 'Learning Node.js', 2023, id
FROM authors
WHERE name = 'Asha Patel'
AND NOT EXISTS (
    SELECT 1 FROM books WHERE title = 'Learning Node.js'
);

INSERT INTO books (title, year, author_id)
SELECT 'Web Services Guide', 2024, id
FROM authors
WHERE name = 'Ravi Kumar'
AND NOT EXISTS (
    SELECT 1 FROM books WHERE title = 'Web Services Guide'
);
