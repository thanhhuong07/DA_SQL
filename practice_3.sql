--ex 1
SELECT NAME FROM STUDENTS 
WHERE MARKS>75 
ORDER BY RIGHT (NAME, 3) , ID
--ex 2
SELECT user_id, 
CONCAT(UPPER(LEFT(name,1)),LOWER(SUBSTRING(name from 2))) AS name
FROM Users
ORDER BY user_id
--ex 3
SELECT manufacturer, 
'$'||ROUND(SUM(total_sales)/1000000,0) ||' million' AS sale
FROM pharmacy_sales
GROUP BY manufacturer
--ex4
SELECT 
EXTRACT(month FROM submit_date) AS mth,
product_id AS product,
ROUND(AVG(stars),2) AS avg_stars
FROM reviews
GROUP BY mth, product_id
ORDER BY mth, product_id

--ex5
SELECT sender_id,
COUNT(message_id) AS message_count
FROM messages
WHERE EXTRACT(month FROM sent_date)=8
AND EXTRACT(year FROM sent_date)=2022
GROUP BY sender_id
ORDER BY message_count DESC
LIMIT 2

--ex6  
SELECT tweet_id FROM Tweets
WHERE LENGTH(content)>15
GROUP BY tweet_id

--ex8
select count(employee_id) from employees
WHERE EXTRACT(month from joining_date) between 1 and 7
AND EXTRACT(year from joining_date)=2022

--ex9
select 
POSITION('a' in first_name) from worker
WHERE first_name= 'Amitah'

--ex10
select
SUBSTRING(title from length(winery)+2 for 4)
from winemag_p2
WHERE country='Macedonia'







