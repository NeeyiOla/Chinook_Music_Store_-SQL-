/*
-- QUESTION 1
  -- Use your query to return the email, first name, last name, and Genre of all Rock Music listeners (Rock & Roll would be considered a different category for this exercise). 
  -- Return your list ordered alphabetically by email address starting with A.
  -- I chose to link information from the Customer, Invoice, InvoiceLine, Track, and Genre tables, but you may be able to find another way to get at the information.
*/

SELECT DISTINCT
    Customer.FirstName,
    Customer.LastName,
    Customer.Email,
    Genre.Name
FROM Customer
JOIN Invoice
ON Customer.CustomerId = Invoice.CustomerId
JOIN InvoiceLine
ON InvoiceLine.InvoiceId = Invoice.InvoiceId
JOIN Track
ON Track.TrackId = InvoiceLine.TrackId
JOIN Genre
ON Genre.GenreId = Track.GenreId
WHERE Genre.GenreId = '1'
ORDER BY Customer.Email;
