-- Frequency breakdown of each genre of mediatype sold sold in Chinook music store

SELECT  MediaType.MediaTypeId,
		MediaType.Name,
		COUNT(*) AS MediaType_Breakdown,
		Genre.GenreId
FROM MediaType
JOIN Track
ON Track.MediaTypeId = MediaType.MediaTypeId
JOIN Genre
On Genre.GenreId = Track.GenreId
JOIN InvoiceLine
ON InvoiceLine.TrackId = Track.TrackId
JOIN Invoice
ON Invoice.InvoiceId = InvoiceLine.InvoiceId
GROUP BY 1, 4
ORDER BY 3 DESC;
