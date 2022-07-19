/*QUESTION 1: What is the most popular film category in each country?*/

-- t1 shows the top country-category pair by number of rentals
WITH t1 AS (SELECT cnt.country,
				   cat.name AS category,
				   COUNT(*) AS num_of_rentals
			  FROM rental r
			  JOIN customer cstm
				ON r.customer_id = cstm.customer_id
			  JOIN address adr
				ON cstm.address_id = adr.address_id
			  JOIN city ct
				ON adr.city_id = ct.city_id
			  JOIN country cnt
				ON ct.country_id = cnt.country_id
			  JOIN inventory i
				ON i.inventory_id = r.inventory_id
			  JOIN film f
				ON f.film_id = i.film_id
			  JOIN film_category fc
				ON fc.film_id = f.film_id
			  JOIN category cat
				ON cat.category_id = fc.category_id
			 GROUP BY country, category
			 ORDER BY num_of_rentals DESC),
 
 -- t2 chooses from t1 only the top category for each country (but not displays the category itself)
	 t2 AS (SELECT t1.country,
				   MAX(t1.num_of_rentals) AS num_of_rentals
			  FROM t1
			 GROUP BY t1.country
			 ORDER BY num_of_rentals DESC)
 
  -- This main query displays the country, category and number of rentals by popularity (number of rentals) for the top 5 countries
 SELECT t2.country,
		t1.category,
		t2.num_of_rentals
   FROM t1
   JOIN t2
     ON t1.country = t2.country AND t1.num_of_rentals = t2.num_of_rentals
  ORDER BY t2.num_of_rentals DESC
  LIMIT 10;
