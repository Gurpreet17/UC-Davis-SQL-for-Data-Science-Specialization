#Task: Find the name and ID of the artists who do not have albums. 
#Question: After running the query described above, two of the records returned have the same last name. Enter that name below.
#Answer: Gilberto
SELECT Artists.Name, Artists.ArtistId, Albums.Title
FROM Artists LEFT JOIN Albums ON Artists.artistID = Albums.ArtistID
where Albums.AlbumID IS NULL