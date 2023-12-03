#Task: Find all the tracks whose name starts with 'All'..
#Question: While only 10 records are shown, the query will indicate how many total records there are for this query - enter that number below.
#Answer: 15
SELECT Name, TrackId
FROM Tracks
WHERE Name LIKE 'all%'