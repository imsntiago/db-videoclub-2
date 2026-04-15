use sakila;

-- 1 
SELECT COUNT(film_id) AS Total_Peliculas_PG
FROM film
WHERE rating = "PG";

-- 2
SELECT DAYNAME(rental_date) AS Dia_De_La_Semana,
		COUNT(*) AS Total_Rentas
FROM rental
GROUP BY Dia_De_La_Semana;

-- 3
SELECT title, LENGTH(title)
FROM film
ORDER BY LENGTH(title) DESC
LIMIT 1;

-- 4
SELECT last_name, COUNT(*) AS Total
FROM actor
GROUP BY last_name
HAVING Total > 1;

-- 5
-- (id: 172)
SELECT actor_id, first_name, last_name
FROM actor
WHERE first_name = "GROUCHO";

UPDATE actor
SET first_name = "HARPO"
WHERE actor_id = 172;

SELECT first_name, last_name
FROM actor
WHERE actor_id = 172;

-- 6
SELECT *
FROM actor
WHERE first_name = "Scarlett";

-- 7
SELECT *
FROM actor
WHERE last_name = "Johansson";

-- 8
SELECT COUNT(DISTINCT last_name) AS Cant_Apellidos_Unicos
FROM actor;

-- 9
SELECT DISTINCT last_name
FROM actor;

-- 10
SELECT last_name
FROM actor
GROUP BY last_name
HAVING COUNT(*) > 1;

-- 11
SELECT COUNT(*)
FROM film
WHERE length > 120;

-- 12
SELECT COUNT(*)
FROM customer
WHERE YEAR(create_date) > 2020;

-- 13
SELECT
	YEAR(rental_date) AS Año,
    MONTHNAME(rental_date) AS Mes,
    COUNT(*) AS Total_Rentas
FROM rental
GROUP BY Año, Mes
ORDER BY Año, Mes DESC;

-- 14
SELECT COUNT(*) AS Total_Peliculas_R_menos_90min
FROM film
WHERE rating = "R" AND LENGTH < 90;

-- 15
SELECT first_name
FROM actor
WHERE first_name LIKE "A%";










