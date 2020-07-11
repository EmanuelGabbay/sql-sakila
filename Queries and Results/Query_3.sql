/*Question 3: What was the average price payed on films by film rating?*/

-- t1 shows all the rentals in the database with the film's rating and the amount payed for each rental
WITH t1 AS (SELECT r.rental_id,
				   f.rating AS film_rating,
				   p.amount
			  FROM rental r
			  JOIN payment p
				ON r.rental_id = p.rental_id
			  JOIN inventory i
				ON r.inventory_id = i.inventory_id
			  JOIN film f
				ON i.film_id = f.film_id)

-- This main query shows the average amount payed for a film by film's rating
SELECT t1.film_rating,
	   AVG(amount) AS avg_amount_payed
  FROM t1
 GROUP BY t1.film_rating;