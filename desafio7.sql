SELECT
	art.name_artist AS artista,
  alb.title AS album,
  COUNT(flw.user_id) AS seguidores
FROM SpotifyClone.Artists AS art
INNER JOIN SpotifyClone.Albums AS alb ON art.artist_id = alb.artist_id
INNER JOIN SpotifyClone.FollowersArtists AS flw ON art.artist_id = flw.artist_id
GROUP BY flw.artist_id, alb.title, art.name_artist
ORDER BY seguidores DESC, artista ASC, album ASC;
