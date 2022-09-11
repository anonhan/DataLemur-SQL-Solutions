-- Problem: https://datalemur.com/questions/teams-power-users

SELECT sender_id,
       Count(message_id) AS message_count
FROM   messages
WHERE  Date(sent_date) BETWEEN Date('2022-08-01') AND Date('2022-08-31')
GROUP  BY 1
ORDER  BY 2 DESC
LIMIT  2; 
