SELECT
	usr.name_user AS usuario,
  COUNT(hist.song_id) AS qtde_musicas_ouvidas,
  ROUND(SUM(sgs.seconds_duration) / 60, 2) AS total_minutos
FROM SpotifyClone.Users AS usr
INNER JOIN SpotifyClone.PlayHistory AS hist ON usr.user_id = hist.user_id
INNER JOIN SpotifyClone.Songs AS sgs ON hist.song_id = sgs.song_id
GROUP BY usr.name_user
ORDER BY usr.name_user;
