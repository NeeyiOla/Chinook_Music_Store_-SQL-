/*
-- QUESTION 2
  -- Which city has the best customers?
  -- We want to throw a promotional Music Festival in the city we made the most money. 
  -- Write a query that returns the 1 city that has the highest sum of invoice totals. 
  -- Return both the city name and the sum of all invoice totals.
*/
  
SELECT BillingCity,
		SUM(Total) AS Total_Sales
FROM Invoice
GROUP BY BillingCity
ORDER BY Total_Sales DESC
LIMIT 1;
