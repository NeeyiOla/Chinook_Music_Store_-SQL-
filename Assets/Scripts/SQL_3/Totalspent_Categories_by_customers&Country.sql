/*
-- total spent category breakdown for customers and country they are from
-- finding customers from several countries and total amount spent on music
*/


SELECT  
    Customer.FirstName,
    Customer.LastName,
    Customer.Country,
    SUM(Invoice.Total) AS Total_Spent,
    CASE 
        WHEN SUM(Invoice.Total) > 30 THEN 'High Spender'
        WHEN SUM(Invoice.Total) BETWEEN 15 AND 30 THEN 'Medium Spender'
        ELSE 'Low Spender'
    END AS Spending_Category
FROM Customer
JOIN Invoice
    ON Customer.CustomerId = Invoice.CustomerId
GROUP BY Customer.CustomerId, Customer.FirstName, Customer.LastName, Customer.Country
ORDER BY Total_Spent DESC;
