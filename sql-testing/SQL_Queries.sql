-- 1. Show all customers
SELECT * FROM customer;

-- 2. Show customers from store 1
SELECT *
FROM customer
WHERE store_id = 1;

-- 3. Show customers sorted by last name
SELECT *
FROM customer
ORDER BY last_name;

-- 4. Show the first 10 customers
SELECT *
FROM customer
LIMIT 10;

-- 5. Count all customers
SELECT COUNT(*)
FROM customer;

-- 6. Show customers with first name 'MARY'
SELECT *
FROM customer
WHERE first_name = 'MARY';

-- 7. Show customers with ID greater than 100
SELECT *
FROM customer
WHERE customer_id > 100;

-- 8. Show customers with ID between 50 and 100
SELECT *
FROM customer
WHERE customer_id BETWEEN 50 AND 100;

-- 9. Show customers whose last name starts with 'S'
SELECT *
FROM customer
WHERE last_name LIKE 'S%';

-- 10. Show customers from store 1 ordered by last name
SELECT *
FROM customer
WHERE store_id = 1
ORDER BY last_name;

-- 11. Count customers in each store
SELECT store_id, COUNT(*)
FROM customer
GROUP BY store_id;

-- 12. Show stores with more than 300 customers
SELECT store_id, COUNT(*)
FROM customer
GROUP BY store_id
HAVING COUNT(*) > 300;

-- 13. Average customer ID
SELECT AVG(customer_id)
FROM customer;

-- 14. Minimum and maximum customer ID
SELECT MIN(customer_id), MAX(customer_id)
FROM customer;

-- 15. INNER JOIN example
SELECT c.first_name, c.last_name, a.address
FROM customer c
INNER JOIN address a
ON c.address_id = a.address_id;

-- 16. LEFT JOIN example
SELECT c.first_name, c.last_name, a.address
FROM customer c
LEFT JOIN address a
ON c.address_id = a.address_id;
