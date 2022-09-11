-- Problem: https://datalemur.com/questions/sql-page-with-no-likes

SELECT P.page_id
FROM   pages P
       LEFT JOIN page_likes PL
              ON PL.page_id = P.page_id
WHERE  P.page_id NOT IN (SELECT page_id
                         FROM   page_likes)
ORDER  BY 1 ASC; 
