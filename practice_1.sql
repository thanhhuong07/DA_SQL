--ex1
SELECT NAME FROM CITY
WHERE POPULATION>120000 AND COUNTRYCODE='USA'

--ex2
SELECT * FROM CITY
WHERE COUNTRYCODE='JPN'

--ex3
SELECT CITY, STATE FROM STATION

--ex4
SELECT DISTINCT CITY FROM STATION
WHERE CITY LIKE 'A%'
OR CITY LIKE 'E%' 
OR CITY LIKE 'I%' 
OR CITY LIKE 'O%' 
OR CITY LIKE 'U%' 

--ex5
SELECT DISTINCT CITY FROM STATION
WHERE CITY LIKE '%A'
OR CITY LIKE '%E' 
OR CITY LIKE '%I' 
OR CITY LIKE '%O' 
OR CITY LIKE '%U' 

--ex6
SELECT DISTINCT CITY FROM STATION
WHERE NOT CITY IN 
(SELECT DISTINCT CITY FROM STATION
WHERE CITY LIKE 'A%'
OR CITY LIKE 'E%' 
OR CITY LIKE 'I%' 
OR CITY LIKE 'O%' 
OR CITY LIKE 'U%' )

--ex7
SELECT name FROM Employee
ORDER BY name ASC
  
--ex8
SELECT name FROM Employee
WHERE salary>2000 
AND months<10
ORDER BY employee_id ASC

--ex9
SELECT product_id FROM Products
WHERE low_fats='Y' AND recyclable='Y'

--ex10
SELECT name FROM Customer
WHERE NOT referee_id=2 OR referee_id is NULL

--ex11
SELECT name, population, area FROM World 
WHERE area>=3000000
OR population>=25000000

--ex12
SELECT DISTINCT author_id AS id FROM Views
WHERE author_id=viewer_id
ORDER BY author_id ASC

--ex13
SELECT part, assembly_step FROM parts_assembly
WHERE finish_date is NULL

--ex14
select index from lyft_drivers
WHERE yearly_salary<=30000 OR yearly_salary>=70000

--ex15
select * from uber_advertising;
WHERE money_spent > 100000 
and year=2019
