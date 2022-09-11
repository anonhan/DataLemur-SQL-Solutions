-- Problem: https://datalemur.com/questions/laptop-mobile-viewership

SELECT Sum (CASE
              WHEN device_type IN ( 'tablet', 'phone' ) THEN 1
              ELSE 0
            END) AS mobile_views,
       Sum (CASE
              WHEN device_type IN ( 'laptop' ) THEN 1
              ELSE 0
            END) AS laptop_views
FROM   viewership; 
