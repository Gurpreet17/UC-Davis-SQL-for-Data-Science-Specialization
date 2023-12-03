#Task: Find all the tracks that have a length of 5,000,000 milliseconds or more.
#Question: How many tracks are returned?
#Answer: 2
SELECT Name, Milliseconds
FROM Tracks
WHERE Milliseconds >= 5000000;