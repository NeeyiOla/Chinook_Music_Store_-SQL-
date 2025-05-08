/*
 -- Write a query that determines the customer that has spent the most on music for each country. 
  -- Write a query that returns the country along with the top customer and how much they spent.
  -- For countries where the top amount spent is shared, provide all customers who spent this amount.
  -- You should only need to use the Customer and Invoice tables.
*/

SELECT  
    Tbl.BillingCountry AS Country,
    Tbl.FirstName,
    Tbl.LastName,
    Tbl.Amount_Spent AS Max_Spent
FROM (
    SELECT  
        Customer.CustomerId,
        Customer.FirstName,
        Customer.LastName,
        Invoice.BillingCountry,
        SUM(Invoice.Total) AS Amount_Spent
    FROM Customer
    JOIN Invoice
        ON Invoice.CustomerId = Customer.CustomerId
    GROUP BY Customer.CustomerId, Customer.FirstName, Customer.LastName, Invoice.BillingCountry
) Tbl
WHERE Tbl.Amount_Spent = (
    SELECT MAX(SubTbl.Amount_Spent)
    FROM (
        SELECT  
            Customer.CustomerId,
            Customer.FirstName,
            Customer.LastName,
            Invoice.BillingCountry,
            SUM(Invoice.Total) AS Amount_Spent
        FROM Customer
        JOIN Invoice
            ON Invoice.CustomerId = Customer.CustomerId
        GROUP BY Customer.CustomerId, Customer.FirstName, Customer.LastName, Invoice.BillingCountry
    ) SubTbl
    WHERE SubTbl.BillingCountry = Tbl.BillingCountry
)
ORDER BY Tbl.BillingCountry, Tbl.Amount_Spent DESC;
