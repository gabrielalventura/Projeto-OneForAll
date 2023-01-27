SELECT
  song AS 'cancao',
  COUNT(h.song_id) AS 'reproducoes'
FROM SpotifyClone.songs
  INNER JOIN SpotifyClone.reproduction_history AS h ON songs.song_id = h.song_id
  GROUP BY song ORDER BY reproducoes DESC, song LIMIT 2;