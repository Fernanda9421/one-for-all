SELECT name_song AS nome_musica,
	CASE
		WHEN name_song LIKE "%Streets%" THEN REPLACE (name_song, "Streets", "Code Review")
    WHEN name_song LIKE "%Her Own%" THEN REPLACE (name_song, "Her Own", "Trybe")
    WHEN name_song LIKE "%Inner Fire%" THEN REPLACE (name_song, "Inner Fire", "Project")
    WHEN name_song LIKE "%Silly%" THEN REPLACE (name_song, "Silly", "Nice")
    WHEN name_song LIKE "%Circus%" THEN REPLACE (name_song, "Circus", "Pull Request")
END AS novo_nome FROM SpotifyClone.Songs
WHERE
	name_song LIKE "%Streets%" OR
  name_song LIKE "%Her Own%" OR
  name_song LIKE "%Inner Fire%" OR
  name_song LIKE "%Silly%" OR
  name_song LIKE "%Circus%"
ORDER BY name_song;
