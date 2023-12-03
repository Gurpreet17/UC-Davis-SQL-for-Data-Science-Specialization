#Task: Using a subquery, find the names of all the tracks for the album "Californication".
#Question: What is the title of the 8th track?
#Answer: Porcelain
select Tracks.Name,Albums.Title
from Tracks
left join Albums
on Tracks.AlbumId=Albums.AlbumId
where Albums.Title="Californication";