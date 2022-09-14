-- Get all invoices where the unit_price on the invoice_line is greater than $0.99.
SELECT * 
FROM invoice AS i
JOIN invoice_line AS il
on i.invoice_id = il.invoice_id
WHERE il.unit_price > 0.99;

-- Get all playlist tracks where the playlist name is Music.
SELECT * 
FROM playlist_track AS pt
JOIN playlist AS p
ON pt.playlist_id = p.playlist_id
WHERE p.name = 'Music';

-- Get all track names for playlist_id 5.
SELECT t.name, pt.playlist_id 
FROM track AS t
JOIN playlist_track AS pt
ON pt.track_id = t.track_id
WHERE pt.playlist_id = 5;

-- Get all tracks where the genre is Comedy.
SELECT * 
FROM track AS t
JOIN genre AS g
ON g.genre_id = t.genre_id
WHERE g.name = 'Comedy';

-- Get all tracks where the album is Fireball.
SELECT *, a.title
FROM track AS t
JOIN album AS a
ON a.album_id = t.album_id
WHERE a.title = 'Fireball';

-- Get all tracks for the artist Queen ( 2 nested subqueries ).
SELECT *
FROM track AS t
JOIN album AS a ON a.album_id = t.album_id
JOIN artist AS art ON a.artist_id = art.artist_id
WHERE art.name = 'Queen';


