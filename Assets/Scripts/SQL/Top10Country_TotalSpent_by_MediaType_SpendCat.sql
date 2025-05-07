/*
--   Top 10 Country Total_Spent By MediaType and Spending Categories
*/

SELECT  
    MediaType.MediaTypeId,
    MediaType.Name,
    Invoice.BillingCountry,
    SUM(InvoiceLine.Quantity * InvoiceLine.UnitPrice) AS Total_Spent,
    CASE 
        WHEN SUM(InvoiceLine.Quantity * InvoiceLine.UnitPrice) > 250 THEN 'High Spender'
        WHEN SUM(InvoiceLine.Quantity * InvoiceLine.UnitPrice) BETWEEN 100 AND 250 THEN 'Medium Spender'
        ELSE 'Low Spender'
    END AS Spending_Category
FROM MediaType
JOIN Track
    ON MediaType.MediaTypeId = Track.MediaTypeId
JOIN InvoiceLine
    ON InvoiceLine.TrackId = Track.TrackId
JOIN Invoice
    ON Invoice.InvoiceId = InvoiceLine.InvoiceId
JOIN Customer
    ON Customer.CustomerId = Invoice.CustomerId
GROUP BY MediaType.MediaTypeId, MediaType.Name, Invoice.BillingCountry
ORDER BY Total_Spent DESC
LIMIT 10;
