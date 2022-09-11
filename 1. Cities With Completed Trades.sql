-- Problem: https://datalemur.com/questions/completed-trades

SELECT U.city,
       Sum(CASE
             WHEN T.status = 'Completed' THEN 1
             ELSE 0
           end) AS orders
FROM   trades T
       JOIN users U
         ON T.user_id = U.user_id
GROUP  BY 1
ORDER  BY 2 DESC
LIMIT  3; 
