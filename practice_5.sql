--ex1
select COUNTRY.continent, floor(avg( CITY.population))
from CITY
inner join COUNTRY
ON  CITY.CountryCode=COUNTRY.Code
GROUP BY COUNTRY.Continent

--ex2
SELECT 
ROUND(CAST(COUNT(texts.email_id) AS DECIMAL)/COUNT(DISTINCT emails.email_id),2) AS activation_rate
FROM emails
LEFT JOIN texts 
ON emails.email_id = texts.email_id
AND texts.signup_action = 'Confirmed'

--ex3
SELECT b.age_bucket,
ROUND(100.0*SUM(CASE WHEN a.activity_type = 'send' THEN a.time_spent ELSE 0 END) / 
SUM(CASE WHEN a.activity_type IN ('send', 'open') THEN a.time_spent ELSE 0 END), 2) AS send_perc,
ROUND(100.0*SUM(CASE WHEN a.activity_type = 'open' THEN a.time_spent ELSE 0 END) / 
SUM(CASE WHEN a.activity_type IN ('send', 'open') THEN a.time_spent ELSE 0 END), 2) AS open_perc
FROM activities as a
JOIN age_breakdown as b ON a.user_id = b.user_id
WHERE a.activity_type IN ('send', 'open')
GROUP BY b.age_bucket 

--ex4
SELECT c.customer_id
FROM customer_contracts as c
JOIN products as p 
ON c.product_id = p.product_id
GROUP BY c.customer_id
HAVING COUNT(DISTINCT p.product_category)=(SELECT COUNT( DISTINCT product_category) FROM products)
  
--ex5
SELECT 
a.employee_id, 
a.name, 
COUNT(b.employee_id) AS reports_count,
ROUND(AVG(b.age)) AS average_age
FROM Employees as a
JOIN Employees as b 
ON a.employee_id = b.reports_to
GROUP BY  a.employee_id, a.name
ORDER BY a.employee_id
  
--ex6
SELECT products.product_name, SUM(orders.unit) AS unit
FROM products
INNER JOIN Orders
ON products.product_id=orders.product_id
AND month(orders.order_date)=2 AND year(orders.order_date)=2020
GROUP BY orders.product_id
HAVING unit>=100

--ex7
SELECT pages.page_id
FROM pages
LEFT JOIN page_likes
ON pages.page_id=page_likes.page_id
WHERE page_likes.* IS NULL
ORDER BY pages.page_id ASC

