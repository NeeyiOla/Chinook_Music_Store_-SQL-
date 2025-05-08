/*
-- Which is the most popular media type?
*/

SELECT  MediaType.MediaTypeId,
		MediaType.Name,
		COUNT(*) AS MediaType_cOUNT
FROM Track
JOIN MediaType
ON MediaType.MediaTypeId = Track.MediaTypeId
GROUP BY MediaType.MediaTypeId
ORDER BY 3 DESC;
