-- This table shows weekly store payments of customers
WITH t1 AS (SELECT st.store_id AS store,
                   DATE_TRUNC('week', pay.payment_date) AS week,
                   pay.amount AS payed
			  FROM store st
			  JOIN staff stf
			  ON st.store_id = stf.store_id
			  JOIN payment pay
			  ON stf.staff_id = pay.staff_id
			  ORDER BY week)

SELECT store,
       DATE_PART('week', week) AS week_number,
       SUM(payed) AS total_revenue
  FROM t1
 GROUP BY store, week_number
 ORDER BY week_number,store;
 
