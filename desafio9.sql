SELECT 
  COUNT(h.profile_id) AS 'quantidade_musicas_no_historico'
FROM SpotifyClone.reproduction_history AS h
  INNER JOIN SpotifyClone.profiles AS p ON h.profile_id = p.profile_id
WHERE p.username = 'Barbara Liskov';