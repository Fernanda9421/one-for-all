SELECT
	sgs.name_song AS cancao,
    COUNT(hist.song_id) AS reproducoes
FROM SpotifyClone.Songs AS sgs
INNER JOIN SpotifyClone.PlayHistory AS hist ON hist.song_id = sgs.song_id
GROUP BY sgs.song_id
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;
