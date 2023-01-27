SELECT
  s.song AS 'nome',
  COUNT(h.profile_id) AS 'reproducoes'
FROM SpotifyClone.reproduction_history AS h
  INNER JOIN SpotifyClone.songs AS s ON h.song_id = s.song_id
  INNER JOIN SpotifyClone.profiles AS p ON p.profile_id = h.profile_id
WHERE p.plan_id IN (1, 4)
GROUP BY nome ORDER BY nome;
