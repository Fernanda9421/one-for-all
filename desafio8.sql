SELECT
	art.name_artist AS artista,
    alb.title AS album
FROM SpotifyClone.Artists AS art
INNER JOIN SpotifyClone.Albums AS alb ON art.artist_id = alb.artist_id
WHERE art.name_artist = "Walter Phoenix"
ORDER BY album;
