CREATE DATABASE movie_rental; 

CREATE TABLE customers ( 
	Customer_id INT AUTO_INCREMENT PRIMARY KEY, 
	First_name VARCHAR(20) NOT NULL, 
	Last_name VARCHAR(20) NOT NULL, 
	Email VARCHAR(100) UNIQUE, 
	Phone_number VARCHAR(15), 
	Registration_date DATE 
); 

CREATE TABLE movies (
	Movie_id INT AUTO_INCREMENT PRIMARY KEY, 
	title VARCHAR(100) NOT NULL, 
	genre VARCHAR(50),
	release_year INT, 
	available_copies INT DEFAULT 0
); 

CREATE TABLE rentals (
	Rental_id INT AUTO_INCREMENT PRIMARY KEY, 
	Customer_id INT, 
	Movie_id INT, 
	Rental_date DATE, 
	Return_date DATE, 
	FOREIGN KEY(customer_id) REFERENCES customers(customer_id), 
	FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
); 

CREATE TABLE payments ( 
	Payment_id INT AUTO_INCREMENT PRIMARY KEY,
	Rental_id INT, 
	Amount DECIMAL (10, 2), 
	Payment_date DATE,
	FOREIGN KEY (rental_id) REFERENCES rentals(rental_id)
); 


INSERT INTO customers (customer_id, first_name, last_name, email, phone_number, registration_date) 
VALUES
(1, 'John', 'Doe', 'john.doe1@example.com', '555-0100', '2023-01-01'),
(2, 'Jane', 'Smith', 'jane.smith2@example.com', '555-0101', '2023-01-02'),
(3, 'Alice', 'Johnson', 'alice.johnson3@example.com', '555-0102', '2023-01-03'),
(4, 'Bob', 'Williams', 'bob.williams4@example.com', '555-0103', '2023-01-04'),
(5, 'Charlie', 'Brown', 'charlie.brown5@example.com', '555-0104', '2023-01-05'),
(6, 'Diana', 'Jones', 'diana.jones6@example.com', '555-0105', '2023-01-06'),
(7, 'Ethan', 'Miller', 'ethan.miller7@example.com', '555-0106', '2023-01-07'),
(8, 'Fiona', 'Garcia', 'fiona.garcia8@example.com', '555-0107', '2023-01-08'),
(9, 'George', 'Martinez', 'george.martinez9@example.com', '555-0108', '2023-01-09'),
(10, 'Hannah', 'Rodriguez', 'hannah.rodriguez10@example.com', '555-0109', '2023-01-10'),
(11, 'Ian', 'Lee', 'ian.lee11@example.com', '555-0110', '2023-01-11'),
(12, 'Jessica', 'Walker', 'jessica.walker12@example.com', '555-0111', '2023-01-12'),
(13, 'Kevin', 'Hall', 'kevin.hall13@example.com', '555-0112', '2023-01-13'),
(14, 'Laura', 'Young', 'laura.young14@example.com', '555-0113', '2023-01-14'),
(15, 'Michael', 'Allen', 'michael.allen15@example.com', '555-0114', '2023-01-15'),
(16, 'Nancy', 'King', 'nancy.king16@example.com', '555-0115', '2023-01-16'),
(17, 'Oliver', 'Scott', 'oliver.scott17@example.com', '555-0116', '2023-01-17'),
(18, 'Patricia', 'Green', 'patricia.green18@example.com', '555-0117', '2023-01-18'),
(19, 'Quinn', 'Adams', 'quinn.adams19@example.com', '555-0118', '2023-01-19'),
(20, 'Rachel', 'Baker', 'rachel.baker20@example.com', '555-0119', '2023-01-20'),
(21, 'Samuel', 'Harris', 'samuel.harris21@example.com', '555-0120', '2023-01-21'),
(22, 'Tina', 'Nelson', 'tina.nelson22@example.com', '555-0121', '2023-01-22'),
(23, 'Victor', 'Carter', 'victor.carter23@example.com', '555-0122', '2023-01-23'),
(24, 'Wendy', 'Mitchell', 'wendy.mitchell24@example.com', '555-0123', '2023-01-24'),
(25, 'Xavier', 'Perez', 'xavier.perez25@example.com', '555-0124', '2023-01-25'),
(26, 'Yvonne', 'Roberts', 'yvonne.roberts26@example.com', '555-0125', '2023-01-26'),
(27, 'Zachary', 'Turner', 'zachary.turner27@example.com', '555-0126', '2023-01-27'),
(28, 'Adam', 'Phillips', 'adam.phillips28@example.com', '555-0127', '2023-01-28'),
(29, 'Betty', 'Campbell', 'betty.campbell29@example.com', '555-0128', '2023-01-29'),
(30, 'Carl', 'Parker', 'carl.parker30@example.com', '555-0129', '2023-01-30'),
(31, 'Yasmine', 'Cook', 'yasmine.cook99@example.com', '555-0198', '2023-04-09'),
(32, 'Zane', 'Powell', 'zmoviesane.powell100@example.com', '555-0199', '2023-04-10');

INSERT INTO movies (movie_id, title, genre, release_year, available_copies) VALUES
(1, 'The Shawshank Redemption', 'Drama', 1994, 10),
(2, 'The Godfather', 'Crime', 1972, 5),
(3, 'The Dark Knight', 'Action', 2008, 8),
(4, 'Pulp Fiction', 'Crime', 1994, 6),
(5, 'Schindlers List', 'History', 1993, 7),
(6, 'Forrest Gump', 'Drama', 1994, 12),
(7, 'Inception', 'Sci-Fi', 2010, 9),
(8, 'Fight Club', 'Drama', 1999, 4),
(9, 'The Matrix', 'Sci-Fi', 1999, 10),
(10, 'Goodfellas', 'Crime', 1990, 3),
(11, 'The Silence of the Lambs', 'Thriller', 1991, 5),
(12, 'The Lord of the Rings: The Fellowship of the Ring', 'Fantasy', 2001, 6),
(13, 'The Lord of the Rings: The Two Towers', 'Fantasy', 2002, 6),
(14, 'The Lord of the Rings: The Return of the King', 'Fantasy', 2003, 7),
(15, 'Star Wars: Episode IV - A New Hope', 'Sci-Fi', 1977, 5),
(16, 'Star Wars: Episode V - The Empire Strikes Back', 'Sci-Fi', 1980, 4),
(17, 'Star Wars: Episode VI - Return of the Jedi', 'Sci-Fi', 1983, 6),
(18, 'The Avengers', 'Action', 2012, 10),
(19, 'Iron Man', 'Action', 2008, 8),
(20, 'Black Panther', 'Action', 2018, 9),
(21, 'Avatar', 'Sci-Fi', 2009, 10),
(22, 'Titanic', 'Romance', 1997, 11),
(23, 'The Lion King', 'Animation', 1994, 6),
(24, 'Toy Story', 'Animation', 1995, 7),
(25, 'Finding Nemo', 'Animation', 2003, 9),
(26, 'The Incredibles', 'Animation', 2004, 8),
(27, 'Frozen', 'Animation', 2013, 12),
(28, 'Moana', 'Animation', 2016, 10),
(29, 'Coco', 'Animation', 2017, 11),
(30, 'Spider-Man: No Way Home', 'Action', 2021, 15);


INSERT INTO rentals (rental_id, customer_id, movie_id, rental_date, return_date) VALUES
(1, 1, 1, '2023-01-01', '2023-01-29'),
(2, 2, 2, '2023-01-02', '2023-02-06'),
(3, 3, 3, '2023-01-03', '2023-01-14'),
(4, 4, 4, '2023-01-04', '2023-03-08'),
(5, 5, 5, '2023-01-05', '2023-01-09'),
(6, 6, 6, '2023-01-06', '2023-06-14'),
(7, 7, 7, '2023-01-07', '2023-01-11'),
(8, 8, 8, '2023-01-08', '2023-04-12'),
(9, 21, 9, '2023-01-09', '2023-01-13'),
(10, 10, 10, '2023-01-10', '2023-01-14'),
(11, 11, 11, '2023-01-11', '2023-03-15'),
(12, 12, 12, '2023-01-12', '2023-01-16'),
(13, 13, 13, '2023-01-13', '2023-05-28'),
(14, 14, 14, '2023-01-14', '2023-01-18'),
(15, 15, 15, '2023-01-15', '2023-07-19'),
(16, 16, 16, '2023-01-16', '2023-01-20'),
(17, 17, 17, '2023-01-17', '2023-01-21'),
(18, 18, 18, '2023-01-18', '2023-01-22'),
(19, 19, 19, '2023-01-19', '2023-01-23'),
(20, 20, 20, '2023-01-20', '2023-03-31'),
(21, 21, 21, '2023-01-21', '2023-01-25'),
(22, 22, 22, '2023-01-22', '2023-01-26'),
(23, 23, 23, '2023-01-23', '2023-01-27'),
(24, 24, 24, '2023-01-24', '2023-01-28'),
(25, 25, 25, '2023-01-25', '2023-01-29'),
(26, 26, 26, '2023-01-26', '2023-01-27'),
(27, 27, 27, '2023-01-27', '2023-01-31'),
(28, 28, 28, '2023-01-28', '2023-02-07'),
(29, 29, 29, '2023-01-29', '2023-02-20'),
(30, 30, 30, '2023-01-30', '2023-02-13');

INSERT INTO payments (payment_id, rental_id, amount, payment_date) VALUES
(1, 1, 4.99, '2023-01-31'),
(2, 2, 3.99, '2023-02-08'),
(3, 3, 5.99, '2023-01-17'),
(4, 4, 22.99, '2023-03-09'),
(5, 5, 4.49, '2023-01-10'),
(6, 6, 23.99, '2023-06-14'),
(7, 7, 6.99, '2023-01-12'),
(8, 8, 34.99, '2023-04-13'),
(9, 9, 5.49, '2023-01-14'),
(10, 10, 3.49, '2023-01-15'),
(11, 11, 24.99, '2023-03-16'),
(12, 12, 3.49, '2023-01-17'),
(13, 13, 25.99, '2023-06-18'),
(14, 14, 2.99, '2023-01-27'),
(15, 15, 16.49, '2023-07-29'),
(16, 16, 14.99, '2023-02-07'),
(17, 17, 3.99, '2023-01-25'),
(18, 18, 5.49, '2023-01-23'),
(19, 19, 6.99, '2023-01-24'),
(20, 20, 20.49, '2023-04-25'),
(21, 21, 5.99, '2023-01-26'),
(22, 22, 3.49, '2023-01-27'),
(23, 23, 2.99, '2023-01-28'),
(24, 24, 15.98, '2023-02-28'),
(25, 25, 3.99, '2023-01-30'),
(26, 26, 6.99, '2023-01-31'),
(27, 27, 7.49, '2023-02-01'),
(28, 28, 4.99, '2023-02-07'),
(29, 29, 3.99, '2023-02-23'),
(30, 30, 15, '2023-02-23');

-- List all the movies 
SELECT title, genre, release_year, available_copies
FROM movies;

-- Total revenue generated 
SELECT SUM(amount) AS total_revenue 
FROM payments;

-- Customer payment history 
SELECT c.first_name, c.last_name, p.amount, p.payment_date
FROM payments p
JOIN rentals r ON p.rental_id = r.rental_id
JOIN customers c ON r.customer_id = c.customer_id;


-- List all active rentals by a given customer
SELECT c.first_name,  c.last_name, m.title AS movie_title,r.rental_date
FROM rentals r
JOIN customers c ON r.customer_id = c.customer_id
JOIN movies m ON r.movie_id = m.movie_id
WHERE r.return_date IS NULL AND c.customer_id = 1;

-- Calculate how many rentals were made for each movie genre
SELECT m.genre, COUNT(r.rental_id) AS total_rentals
FROM rentals r
JOIN movies m ON r.movie_id = m.movie_id
GROUP BY m.genre
ORDER BY total_rentals DESC;

-- Calculate the average, minimum and maximum rental duration for all movies 
SELECT 
    m.title AS movie_title,
    AVG(DATEDIFF(r.return_date, r.rental_date)) AS avg_rental_duration,
    MIN(DATEDIFF(r.return_date, r.rental_date)) AS min_rental_duration,
    MAX(DATEDIFF(r.return_date, r.rental_date)) AS max_rental_duration
FROM rentals r
JOIN movies m ON r.movie_id = m.movie_id
WHERE r.return_date IS NOT NULL
GROUP BY m.title
ORDER BY avg_rental_duration DESC;

-- Find the movies that generated the highest revenue 
SELECT m.title AS movie_title, SUM(p.amount) AS total_revenue
FROM payments p
JOIN rentals r ON p.rental_id = r.rental_id
JOIN movies m ON r.movie_id = m.movie_id
GROUP BY m.title
ORDER BY total_revenue DESC
LIMIT 5;


