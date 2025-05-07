/*
  -- First, find which artist has earned the most according to the InvoiceLines?
  -- Now use this artist to find which customer spent the most on this artist.
  -- For this query, you will need to use the Invoice, InvoiceLine, Track, Customer, Album, and Artist tables.
  -- Notice, this one is tricky because the Total spent in the Invoice table might not be on a single product, so you need to use the InvoiceLine table to find out how many of each product was purchased, and then multiply this by the price for each artist.
*/

SELECT * FROM Invoice;

SELECT  Artist.ArtistId,
		Artist.Name,
		COUNT(*) AS Total
 FROM Artist
    JOIN Album
        ON Artist.ArtistId = Album.ArtistId
    JOIN Track
        ON Track.AlbumId = Album.AlbumId
    JOIN InvoiceLine
        ON InvoiceLine.TrackId = Track.TrackId
    JOIN Invoice
        ON Invoice.InvoiceId = InvoiceLine.InvoiceId
    JOIN Customer
        ON Customer.CustomerId = Invoice.CustomerId
GROUP BY 1
ORDER BY 3 DESC;
