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
--ex4
--ex5
--ex6
--ex7
