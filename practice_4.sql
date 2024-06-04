--ex1
SELECT 
SUM(CASE 
WHEN device_type='laptop' THEN 1 ELSE 0
END) AS laptop_views,
SUM(CASE 
WHEN device_type IN ('tablet','phone')THEN 1 ELSE 0
END) AS mobile_views
FROM viewership

--ex2
SELECT x,y,z,
CASE WHEN (x+y)>z AND (x+z)>y AND (y+z)>x THEN 'Yes' ELSE 'No' END AS triangle
FROM Triangle
  
--ex3
--bài này em không run được, em note lại cách làm của em ạ
SELECT 
ROUND(100*COUNT(CASE WHEN call_category='n/a' OR call_category= NULL THEN 1 ELSE 0 END)/COUNT(case_id),1) AS uncategorised_call_pct
FROM callers

--ex4
SELECT name FROM Customer
WHERE NOT referee_id=2 OR referee_id is NULL

-ex5
SELECT survived,
SUM(CASE WHEN pclass = 1 THEN 1 ELSE 0 END) AS first_class,
SUM(CASE WHEN pclass = 2 THEN 1 ELSE 0 END) AS second_class,
SUM(CASE WHEN pclass = 3 THEN 1 ELSE 0 END) AS third_class
FROM titanic
GROUP BY survived











