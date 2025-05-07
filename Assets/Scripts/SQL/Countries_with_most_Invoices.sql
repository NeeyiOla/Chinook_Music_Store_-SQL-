/*
-- QUESTION 1
  --  Which countries have the most Invoices?
  --  Using Invoice table to determine the countries that have the invoices.
  -- Providing table of BillingCountry and Invoices ordered by the number of invoices for each country. 
  -- The country with the most invoices should appear first.
*/

SELECT BillingCountry,
		COUNT(*) AS Invoice_Per_Country
FROM Invoice
GROUP BY BillingCountry
ORDER BY 2 DESC;
