/*
  -- Who is writing the rock music?
  -- Now that we know that our customers love rock music, we can decide which musicians to invite to play at the concert.
  -- Let's invite the artists who have written the most rock music in our dataset. Write a query that returns the Artist name and total track count of the top 10 rock bands.
  -- You will need to use the Genre, Track , Album, and Artist tables.
*/

SELECT  Artist.ArtistId,
		Artist.Name,
		COUNT(*) AS Genre_Count
FROM Track
JOIN Genre 
ON Genre.GenreId = Track.GenreId
JOIN Album
ON Album.AlbumId = Track.AlbumId
JOIN Artist
ON Artist.ArtistId = Album.ArtistId
WHERE Genre.GenreId = 1
GROUP BY Artist.ArtistId
ORDER BY 3 DESC
LIMIT 10;
