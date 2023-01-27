SELECT
  username AS 'usuario',
  COUNT(h.song_id) AS 'qt_de_musicas_ouvidas',
  SUM(ROUND(s.song_duration / 60, 2)) AS 'total_minutos'
FROM SpotifyClone.profiles 
    INNER JOIN SpotifyClone.reproduction_history AS h ON profiles.profile_id = h.profile_id
    INNER JOIN SpotifyClone.songs AS s ON s.song_id = h.song_id
    GROUP BY username ORDER BY username;