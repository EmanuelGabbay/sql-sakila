/*Question 4: What is the running total amount payed on film rental on each week?*/

-- t1 shows the total amount payed per week on movie rentals
WITH t1 AS (SELECT DATE_TRUNC('week', payment_date) AS week,
				   SUM(amount) AS total_amount
			  FROM payment
			 GROUP BY week)

-- This main query calculates the running total movie rentals (amount) for each week and displays the week number 
SELECT DATE_PART('week', t1.week) AS week_number,
	   SUM(t1.total_amount) OVER (ORDER BY t1.week) AS running_total
  FROM t1;