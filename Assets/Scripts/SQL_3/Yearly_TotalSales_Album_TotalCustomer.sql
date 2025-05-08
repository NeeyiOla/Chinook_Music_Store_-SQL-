/*
-- Top 3 Most Sold Album by Innovice.Total and  Count of Customers that contributed invoice total for each year
-- with Max data = 2013-12-22 and min date = 2009-01-01
*/

SELECT * FROM Invoice

WITH AlbumSales AS (
    SELECT  
        Album.AlbumId,
        Album.Title AS AlbumTitle,
        strftime('%Y', Invoice.InvoiceDate) AS Year,
        SUM(Invoice.Total) AS TotalSales,
        COUNT(DISTINCT Invoice.CustomerId) AS CustomerCount
    FROM Invoice
    JOIN InvoiceLine
        ON Invoice.InvoiceId = InvoiceLine.InvoiceId
    JOIN Track
        ON InvoiceLine.TrackId = Track.TrackId
    JOIN Album
        ON Track.AlbumId = Album.AlbumId
    WHERE Invoice.InvoiceDate BETWEEN '2009-01-01' AND '2013-12-22'
    GROUP BY Album.AlbumId, Album.Title, Year
),
RankedAlbums AS (
    SELECT 
        AlbumId,
        AlbumTitle,
        Year,
        TotalSales,
        CustomerCount,
        RANK() OVER (PARTITION BY Year ORDER BY TotalSales DESC) AS SalesRank
    FROM AlbumSales
)
SELECT 
    AlbumTitle,
    Year,
    TotalSales,
    CustomerCount
FROM RankedAlbums
WHERE SalesRank <= 3
ORDER BY Year, TotalSales DESC;
