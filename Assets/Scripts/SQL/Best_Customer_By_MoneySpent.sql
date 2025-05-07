/*
-- QUESTION 3 
  -- Who is the best customer?
  -- The customer who has spent the most money will be declared the best customer. 
  -- Build a query that returns the person who has spent the most money. 
  -- I found the solution by linking the following three: Invoice, InvoiceLine, and Customer tables to retrieve this information, but you can probably do it with fewer!
*/

SELECT  Customer.CustomerId,
		Customer.FirstName,
		Customer.LastName,
		SUM(InvoiceLine.Quantity * InvoiceLine.UnitPrice) AS Total
FROM InvoiceLine
JOIN Invoice
ON InvoiceLine.InvoiceId = Invoice.InvoiceId
JOIN Customer
ON Invoice.CustomerId = Customer.CustomerId
GROUP BY Customer.FirstName
ORDER BY 4 DESC;

SELECT 
    Customer.CustomerId,
    Customer.FirstName,
    Customer.LastName,
    InvoiceLine.InvoiceLineId,
    SUM(InvoiceLine.Quantity * InvoiceLine.UnitPrice) AS Sales
FROM Customer
JOIN Invoice ON Invoice.CustomerId = Customer.CustomerId
JOIN InvoiceLine ON InvoiceLine.InvoiceId = Invoice.InvoiceId
GROUP BY 1
ORDER BY Sales DESC;
