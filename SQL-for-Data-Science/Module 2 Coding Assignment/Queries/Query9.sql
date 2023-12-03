#Task: Find the albums with 12 or more tracks.
#Question: While the number of records returned is limited to 10, the query, if run correctly, will indicate how many total records there are. Enter that number below.
#Answer: 158
SELECT AlbumId, COUNT(*) trackNum
FROM Tracks
GROUP BY AlbumId
HAVING COUNT(*) >= 12