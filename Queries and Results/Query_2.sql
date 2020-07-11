/*Question 2: Who are the top 10 customers in terms of total amount spent on rentals?*/

SELECT CONCAT (cstm.first_name,' ',cstm.last_name) AS customer,
	   SUM(p.amount) AS total_rentals
  FROM rental r
  JOIN payment p
    ON r.rental_id = p.rental_id
  JOIN customer cstm
    ON r.customer_id = cstm.customer_id
 GROUP BY customer
 ORDER BY total_rentals DESC
 LIMIT 10;