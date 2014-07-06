/* Ben Freeman, Muhammad Taha, Genevieve Rush || 4.25.14 */
/* test queries from sample queries */

/* query 1 */

select song.songName
from listensTo inner join song
on song.sID = listensTo.songID
where userName = 'Target' AND rating > 3
limit 25;

/* query 2 */
select song.sID, song.songName
from listensTo inner join song
on song.sID = listensTo.songID
where listensTo.userName = 'Target' AND listensTo.hasListenedTo = true AND (
	song.genre = 'Big Room Progressive House' 	OR
	song.genre = 'Progressive House' 		OR
	song.genre = 'Deep House'			OR
	song.genre = 'Electro House'			OR
	song.genre = 'Tech House')
limit 25;

/* query 3 */
select song.artistName, song.songName, song.genre
from song inner join artist
on song.artistName = artist.artistName
where artist.numberOfSongs < 3 
order by artist.numberOfSongs ASC
limit 25;

/* query 4 */
select sID, songName
from song
where type = 'Remix'
limit 25;

/* query 5 */
select song.songName, song.postDate, sID
from song
order by song.postDate ASC
limit 0, 25;

/* query 6 */
select song.songName, song.genre, song.postDate
from listensTo inner join song
on song.sID = listensTo.songID
where listensTo.rating > 3
limit 0, 25;
