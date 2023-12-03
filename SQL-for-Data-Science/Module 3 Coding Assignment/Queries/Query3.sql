#Task: Retrieve the track name, album, artistID, and trackID for all the albums
#Question: What is the song title of trackID 12 from the "For Those About to Rock We Salute You" album? Enter the answer below.
#Answer: Breaking The Rules
select Tracks.Name,Tracks.TrackId,Albums.Title,Albums.ArtistId
from Tracks
left join Albums
on Tracks.AlbumId=Albums.AlbumId
where Albums.Title like "For Those About to Rock We Salute You" 
and Tracks.TrackId=12;