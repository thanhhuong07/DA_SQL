--ex1
SELECT DISTINCT CITY FROM STATION
WHERE ID%2=0

--ex2
SELECT COUNT(CITY)-COUNT(DISTINCT CITY) FROM STATION

--ex4
SELECT 
ROUND(CAST(SUM(item_count*order_occurrences)/SUM(order_occurrences) AS DECIMAL),1) AS mean
FROM items_per_order

--ex5
SELECT DISTINCT candidate_id 
FROM candidates
WHERE skill IN ('Python','Tableau','PostgreSQL')
GROUP BY candidate_id
HAVING COUNT(skill)=3
ORDER BY candidate_id ASC

--ex6
SELECT user_id,
DATE(MAX(post_date))-DATE(MIN(post_date)) AS days_between
FROM posts
WHERE post_date >= '2021-01-01' AND post_date < '2022-01-01'
GROUP BY user_id
HAVING COUNT(user_id)>=2
--ex7
SELECT card_name,
MAX(issued_amount)-MIN(issued_amount) AS difference
FROM monthly_cards_issued
GROUP BY card_name
ORDER BY MAX(issued_amount)-MIN(issued_amount) DESC
--ex8

--ex9

--ex10

--ex11

--ex12




