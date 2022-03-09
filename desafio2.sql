SELECT
	COUNT(DISTINCT sgs.song_id) AS cancoes,
	COUNT(DISTINCT art.artist_id) AS artistas,
  COUNT(DISTINCT alb.album_id) AS albuns
FROM SpotifyClone.Albums AS alb
INNER JOIN SpotifyClone.Songs AS sgs ON sgs.album_id = alb.album_id
INNER JOIN SpotifyClone.Artists AS art ON art.artist_id = alb.artist_id;
