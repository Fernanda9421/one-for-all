SELECT COUNT(hist.song_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.PlayHistory AS hist
INNER JOIN SpotifyClone.Users AS usr ON hist.user_id = usr.user_id
WHERE usr.name_user = "Bill";
