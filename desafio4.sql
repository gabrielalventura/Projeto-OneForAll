SELECT
  username AS 'usuario',
  IF(YEAR(MAX(h.history_inf)) < 2021,
  'Usuário inativo', 'Usuário ativo') AS 'status_usuario'
FROM SpotifyClone.profiles 
    INNER JOIN SpotifyClone.reproduction_history AS h ON profiles.profile_id = h.profile_id
    GROUP BY username ORDER BY username;