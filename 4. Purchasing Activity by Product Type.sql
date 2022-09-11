-- Problem: https://datalemur.com/questions/sql-purchasing-activity

SELECT order_date,
       product_type,
       Sum(quantity) OVER( partition BY product_type 
                           ORDER BY order_date) AS cum_purchased
FROM   total_trans ORDER BY order_date;
