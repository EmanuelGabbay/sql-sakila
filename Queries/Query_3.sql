-- t1 lists customers and their rental dates of each rental
WITH t1 AS (SELECT cst.customer_id AS customer, r.rental_date AS rental_date
              FROM rental r
              JOIN customer cst
                ON r.customer_id = cst.customer_id
             WHERE cst.active = 1
             ORDER BY customer, r.rental_date),
             
-- t2 lists the first and the last rental dates of each customer
     t2 AS (SELECT customer,
                   MIN(rental_date) AS first_rental,
                   MAX(rental_date) AS last_rental
                   FROM t1
                   GROUP BY customer),

-- t3 lists the number of rents each customer has done
     t3 AS (SELECT customer_id,
                   COUNT(*) AS total_rents
              FROM rental
             GROUP BY customer_id
             ORDER BY customer_id),

-- t4 lists the interval and the total rents for each customer
     t4 AS (SELECT DISTINCT t1.customer,
                            t2.first_rental,
                            t2.last_rental,
                            EXTRACT(day from t2.last_rental - t2.first_rental) AS day_difference,
                            t3.total_rents
              FROM t1
              JOIN t2
                ON t1.customer = t2.customer
              JOIN t3
                ON t3.customer_id = t1.customer),

-- t5 lists the the average number of days between each rental for each customer
     t5 AS (SELECT customer, day_difference, total_rents,
                   ROUND(day_difference/total_rents) AS avg_days_per_rental
              FROM t4
              ORDER BY avg_days_per_rental DESC)

SELECT customer,
       avg_days_per_rental,
       CASE WHEN avg_days_per_rental BETWEEN 2 AND 4 THEN 'Every 2 to 4 days'
            WHEN avg_days_per_rental BETWEEN 5 AND 7 THEN 'Every 5 to 7 days'
            WHEN avg_days_per_rental BETWEEN 8 AND 9 THEN 'Every 8 to 9 days'
            ELSE 'Every 10 to 14 days'
            END AS rental_frequency
  FROM t5;
