SELECT
	sgs.name_song AS nome,
  COUNT(hist.user_id) AS reproducoes
FROM SpotifyClone.Songs AS sgs
INNER JOIN SpotifyClone.PlayHistory AS hist ON sgs.song_id = hist.song_id
INNER JOIN SpotifyClone.Users AS usr ON hist.user_id = usr.user_id
WHERE usr.plan_id = 1 OR usr.plan_id = 4
GROUP BY nome
ORDER BY nome;
