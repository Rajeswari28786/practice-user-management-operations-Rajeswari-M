
-- ==========================================
-- SQL Practice Exercises
-- Database: testdb
-- ==========================================

-- Task 1: Create a schema (database)
CREATE SCHEMA testdb;

-- Task 2: Select the database to use
USE testdb;

-- Task 3: Create the users table
CREATE TABLE users (
    id INT NOT NULL AUTO_INCREMENT,
    username VARCHAR(45) NOT NULL,
    firstName VARCHAR(45),
    lastName VARCHAR(45),
    age INT,
    PRIMARY KEY (id)
);

-- Task 4: Insert individual users
INSERT INTO users (username, firstName, lastName, age)
VALUES ('jdoe', 'John', 'Doe', 35);

INSERT INTO users (username, firstName, lastName, age)
VALUES ('asmith', 'Alice', 'Smith', 44);

-- Task 5: Insert multiple users in one query
INSERT INTO users (username, firstName, lastName, age)
VALUES
    ('bdoe', 'Bob', 'Doe', 33),
    ('cjohnson', 'Charlie', 'Johnson', 41),
    ('dlee', 'David', 'Lee', 19),
    ('ejones', 'Eve', 'Jones', 30),
    ('fkim', 'Frank', 'Kim', 15),
    ('gwhite', 'Grace', 'White', 22),
    ('hwang', 'Henry', 'Wang', 19),
    ('ijones', 'Ivy', 'Jones', 50),
    ('jdoe', 'John', 'Doe', 65),
    ('klee', 'Kevin', 'Lee', 62),
    ('lchen', 'Linda', 'Chen', 24),
    ('mlee', 'Michael', 'Lee', 29),
    ('nkim', 'Nancy', 'Kim', 18),
    ('ojohnson', 'Oscar', 'Johnson', 40),
    ('pchen', 'Peter', 'Chen', 55),
    ('qwang', 'Quincy', 'Wang', 28),
    ('rjones', 'Rachel', 'Jones', 37),
    ('slee', 'Sam', 'Lee', 21),
    ('tkim', 'Tina', 'Kim', 26);

-- Task 6: Retrieve all users
SELECT * FROM users;

-- Task 7: Update user information
UPDATE users
SET firstName = 'Jane', lastName = 'Doe'
WHERE username = 'jdoe';

-- Update the first name of all users whose last name is Doe
UPDATE users
SET firstName = 'Jane'
WHERE lastName = 'Doe';

-- Task 8: Delete users by username
DELETE FROM users
WHERE username = 'jdoe';

-- Task 9: Select specific columns using WHERE
SELECT firstName, lastName
FROM users
WHERE lastName = 'Doe';

-- Task 10: Filter records using AND
SELECT *
FROM users
WHERE lastName = 'Doe' AND firstName = 'John';

-- Task 11: Filter records using OR
SELECT *
FROM users
WHERE lastName = 'Doe' OR firstName = 'John';

-- Task 12: Filter records using AND NOT
SELECT *
FROM users
WHERE lastName = 'Doe' AND NOT firstName = 'John';

-- Task 13: Combine conditions using parentheses
SELECT *
FROM users
WHERE lastName = 'Doe'
  AND (firstName = 'John' OR firstName = 'Jane');

-- Task 14: Rename columns using aliases
SELECT firstName AS First, lastName AS Last
FROM users;

-- Task 15: Perform calculations in SELECT
SELECT username, age + 10 AS ageIn10Years
FROM users;

-- Task 16: Combine text using CONCAT
SELECT CONCAT(firstName, ' ', lastName) AS fullName
FROM users;

-- Task 17: Sort users by age in descending order
SELECT *
FROM users
ORDER BY age DESC;

-- Task 18: Sort users by last name and first name
SELECT *
FROM users
ORDER BY lastName ASC, firstName ASC;

-- Task 19: Limit results to the first five users
SELECT *
FROM users
LIMIT 5;

-- Task 20: Skip the first five users and return the next five
SELECT *
FROM users
LIMIT 5 OFFSET 5;

-- Task 21: Sort users and return a limited set of records
SELECT *
FROM users
ORDER BY lastName ASC
LIMIT 10 OFFSET 20;
