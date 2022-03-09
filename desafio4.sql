SELECT
	usr.name_user AS usuario,
    IF (max(YEAR(hist.playback_date)) = "2021", "Usuário ativo", "Usuário inativo") AS condicao_usuario
FROM SpotifyClone.Users AS usr
INNER JOIN SpotifyClone.PlayHistory AS hist ON usr.user_id = hist.user_id
GROUP BY usr.name_user
ORDER BY usr.name_user;
