/*
Top 10 Country Total_Spent By MediaType and Spending Categories
Total spent breakdown on MediaType by country 
Mediatype with their total spent breakdown for each country
*/



SELECT  
    MediaType.MediaTypeId,
    MediaType.Name,
    Invoice.BillingCountry,
    SUM(Invoice.Total) AS Total_Spent,
    CASE 
        WHEN SUM(Invoice.Total) > 1000 THEN 'High Spender'
        WHEN SUM(Invoice.Total) BETWEEN 400 AND 1000 THEN 'Medium Spender'
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
